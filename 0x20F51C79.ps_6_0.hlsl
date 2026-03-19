#include "../common.hlsl"

// संस
Texture2D<float4> SceneTex        : register(t0);
Texture2D<float4> BloomTex        : register(t1);
Texture2D<float4> AddTex1         : register(t2);
Texture2D<float4> AddTex2         : register(t3);
Texture2D<float4> MaskTex         : register(t4);
Texture3D<float4> LUT_A           : register(t5);
Texture3D<float4> LUT_B           : register(t6);

// samplers
SamplerState s0 : register(s0);
SamplerState s1 : register(s1);
SamplerState s2 : register(s2);
SamplerState s3 : register(s3);
SamplerState s4 : register(s4);
SamplerState s5 : register(s5);
SamplerState s6 : register(s6);

// constant buffer (trimmed to relevant ones)
cbuffer cb0 : register(b0)
{
  float cb0_048x, cb0_048y, cb0_048z, cb0_048w;
  float cb0_049x, cb0_049y;

  float cb0_068z, cb0_068w;
  float cb0_069x, cb0_069y;

  float cb0_060z, cb0_060w;
  float cb0_061x, cb0_061y;

  float cb0_076x, cb0_076y, cb0_076z, cb0_076w;
  float cb0_077x, cb0_077y;

  float cb0_087x, cb0_087y, cb0_087z;

  float cb0_089x, cb0_089z, cb0_089w;
  float cb0_090x, cb0_090y, cb0_090z, cb0_090w;
  float cb0_091x, cb0_091y, cb0_091z;

  float cb0_092x, cb0_092z, cb0_092w;
  float cb0_093x, cb0_093y, cb0_093z, cb0_093w;

  float cb0_037y, cb0_037z, cb0_037w;
  float cb0_038x, cb0_038y, cb0_038z;

  int cb0_085z, cb0_085w;
  int cb0_086x;

  int cb0_108x, cb0_108y, cb0_108z, cb0_108w;
};

// ======================================================

float3 ApplyTonemap(float3 c)
{
  // Filmic curve (matches original)
  if (cb0_108x != 0)
  {
    c = saturate(((c * (1.36 * c + 0.047)) / (c * (0.96 * c + 0.56) + 0.14)));
  }

  if (cb0_108y != 0)
  {
    float3 t = 1.00495 - (0.16398 / (c - 0.19505));
    float3 mask = step(c, 0.6);
    c = lerp(t, c, mask);
    c = saturate(c);
  }

  if (cb0_108z != 0)
  {
    float3 a = cb0_037y * c;
    float b = cb0_037z * cb0_037w;
    float d = cb0_038y * cb0_038x;
    float e = cb0_038z * cb0_038x;

    c = (((b + a) * c + d) / ((a + cb0_037z) * c + e)) - (cb0_038y / cb0_038z);
    c = saturate(c);
  }

  return c;
}

// ======================================================

float4 main(
  float2 uv           : TEXCOORD0,
  float2 uv2          : TEXCOORD3,
  float4 tcoord1      : TEXCOORD1,
  float4 tcoord2      : TEXCOORD2,
  float2 uv4          : TEXCOORD4
) : SV_Target
{
  // --------------------------------------------------
  // UV transform
  float2 sceneUV = float2(
    ((cb0_048z * uv2.x) + cb0_049x) * cb0_048x,
    ((cb0_048w * uv2.y) + cb0_049y) * cb0_048y
  );

  // --------------------------------------------------
  // Base scene
  float3 scene = SceneTex.Sample(s0, sceneUV).rgb;

  // Bloom / secondary
  float2 bloomUV = float2(
    clamp((cb0_068z * sceneUV.x) + cb0_069x, cb0_060z, cb0_061x),
    clamp((cb0_068w * sceneUV.y) + cb0_069y, cb0_060w, cb0_061y)
  );

  float3 bloom = BloomTex.Sample(s1, bloomUV).rgb;

  // Optional add pass
  if (cb0_085z != 0)
  {
    float2 addUV = float2(
      clamp((cb0_076z * sceneUV.x) + cb0_077x, cb0_076x, cb0_076x),
      clamp((cb0_076w * sceneUV.y) + cb0_077y, cb0_076y, cb0_076y)
    );

    float3 add = AddTex1.Sample(s2, addUV).rgb;
    bloom += add;
  }

  // Combine
  float3 color = bloom + scene * tcoord1.x * float3(cb0_087x, cb0_087y, cb0_087z);

  // --------------------------------------------------
  // CAPTURE UNTONEMAPPED (HDR scene)
  CAPTURE_UNTONEMAPPED(color);

  // --------------------------------------------------
  // Tonemap
  float3 tonemapped = ApplyTonemap(color);

  CLAMP_IF_SDR3(tonemapped.r, tonemapped.g, tonemapped.b);

  // --------------------------------------------------
  // CAPTURE TONEMAPPED
  CAPTURE_TONEMAPPED(tonemapped);

  // --------------------------------------------------
  // LUT
  float3 lutUV = saturate(log2(tonemapped + 0.0026677) * 0.07142857 + 0.6107269);
  lutUV = lutUV * 0.96875 + 0.015625;

  float3 lutColor = LUT_A.Sample(s5, lutUV).rgb;

  // RenoDX LUT handling
  HANDLE_LUT_OUTPUT3_FADE(lutColor.r, lutColor.g, lutColor.b, LUT_A, s5);

  // --------------------------------------------------
  // Add dithering noise
  float noise = frac(sin(dot(uv, float2(12.9898,78.233))) * 43758.5453);
  lutColor += (noise - 0.5) * (1.0 / 256.0);

  // --------------------------------------------------
  // FINAL COLOR (before output transform)

  float3 finalColor = lutColor;

  // RenoDX inversion (HDR reconstruction)
  GENERATE_INVERSION(finalColor.r, finalColor.g, finalColor.b);

  // RenoDX output pipeline
  finalColor = renodx::draw::RenderIntermediatePass(finalColor);

  // --------------------------------------------------
  // Output
  float luminance = dot(lutColor, float3(0.299, 0.587, 0.114));
  CLAMP_IF_SDR(luminance);

  return float4(finalColor, luminance);
}