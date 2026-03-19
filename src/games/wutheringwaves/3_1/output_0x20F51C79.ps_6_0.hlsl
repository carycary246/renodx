#include "../common.hlsl"

Texture2D<float4> t0 : register(t0);
Texture2D<float4> t1 : register(t1);
Texture2D<float4> t2 : register(t2);
Texture2D<float4> t3 : register(t3);
Texture2D<float4> t4 : register(t4);
Texture3D<float4> t5 : register(t5);
Texture3D<float4> t6 : register(t6);

cbuffer cb0 : register(b0) {
  float cb0_037y : packoffset(c037.y);
  float cb0_037z : packoffset(c037.z);
  float cb0_037w : packoffset(c037.w);
  float cb0_038x : packoffset(c038.x);
  float cb0_038y : packoffset(c038.y);
  float cb0_038z : packoffset(c038.z);
  float cb0_048x : packoffset(c048.x);
  float cb0_048y : packoffset(c048.y);
  float cb0_048z : packoffset(c048.z);
  float cb0_048w : packoffset(c048.w);
  float cb0_049x : packoffset(c049.x);
  float cb0_049y : packoffset(c049.y);
  float cb0_060z : packoffset(c060.z);
  float cb0_060w : packoffset(c060.w);
  float cb0_061x : packoffset(c061.x);
  float cb0_061y : packoffset(c061.y);
  float cb0_068z : packoffset(c068.z);
  float cb0_068w : packoffset(c068.w);
  float cb0_069x : packoffset(c069.x);
  float cb0_069y : packoffset(c069.y);
  float cb0_075z : packoffset(c075.z);
  float cb0_075w : packoffset(c075.w);
  float cb0_076x : packoffset(c076.x);
  float cb0_076y : packoffset(c076.y);
  float cb0_076z : packoffset(c076.z);
  float cb0_076w : packoffset(c076.w);
  float cb0_077x : packoffset(c077.x);
  float cb0_077y : packoffset(c077.y);
  float cb0_083z : packoffset(c083.z);
  float cb0_083w : packoffset(c083.w);
  float cb0_084x : packoffset(c084.x);
  float cb0_084y : packoffset(c084.y);
  float cb0_084z : packoffset(c084.z);
  float cb0_084w : packoffset(c084.w);
  float cb0_085x : packoffset(c085.x);
  float cb0_085y : packoffset(c085.y);
  int cb0_085z : packoffset(c085.z);
  int cb0_085w : packoffset(c085.w);
  int cb0_086x : packoffset(c086.x);
  float cb0_087x : packoffset(c087.x);
  float cb0_087y : packoffset(c087.y);
  float cb0_087z : packoffset(c087.z);
  float cb0_089x : packoffset(c089.x);
  float cb0_089z : packoffset(c089.z);
  float cb0_089w : packoffset(c089.w);
  float cb0_090x : packoffset(c090.x);
  float cb0_090y : packoffset(c090.y);
  float cb0_090z : packoffset(c090.z);
  float cb0_090w : packoffset(c090.w);
  float cb0_091x : packoffset(c091.x);
  float cb0_091y : packoffset(c091.y);
  float cb0_091z : packoffset(c091.z);
  float cb0_092x : packoffset(c092.x);
  float cb0_092z : packoffset(c092.z);
  float cb0_092w : packoffset(c092.w);
  float cb0_093x : packoffset(c093.x);
  float cb0_093y : packoffset(c093.y);
  float cb0_093z : packoffset(c093.z);
  float cb0_093w : packoffset(c093.w);
  float cb0_094x : packoffset(c094.x);
  float cb0_094y : packoffset(c094.y);
  float cb0_094z : packoffset(c094.z);
  float cb0_097x : packoffset(c097.x);
  int cb0_106w : packoffset(c106.w);
  float cb0_107x : packoffset(c107.x);
  float cb0_107z : packoffset(c107.z);
  int cb0_107w : packoffset(c107.w);
  int cb0_108x : packoffset(c108.x);
  int cb0_108y : packoffset(c108.y);
  int cb0_108z : packoffset(c108.z);
  int cb0_108w : packoffset(c108.w);
};

SamplerState s0 : register(s0);
SamplerState s1 : register(s1);
SamplerState s2 : register(s2);
SamplerState s3 : register(s3);
SamplerState s4 : register(s4);
SamplerState s5 : register(s5);
SamplerState s6 : register(s6);

float4 main(
  noperspective float2 TEXCOORD : TEXCOORD,
  noperspective float2 TEXCOORD_3 : TEXCOORD3,
  noperspective float4 TEXCOORD_1 : TEXCOORD1,
  noperspective float4 TEXCOORD_2 : TEXCOORD2,
  noperspective float2 TEXCOORD_4 : TEXCOORD4,
  noperspective float4 SV_Position : SV_Position
) : SV_Target {
  float4 SV_Target;

  // Initial coordinates and noise
  float _35 = ((cb0_048z * TEXCOORD_3.x) + cb0_049x) * cb0_048x;
  float _36 = ((cb0_048w * TEXCOORD_3.y) + cb0_049y) * cb0_048y;
  float _38 = (TEXCOORD_2.w * 543.3099975585938f) + TEXCOORD_2.z;
  float _41 = frac(sin(_38) * 493013.0f);

  float _65, _66;
  if (cb0_097x > 0.0f) {
    _65 = (((frac((sin(_38 + 33.9900016784668f) * 493013.0f) + 7.177000045776367f) - _41) * cb0_097x) + _41);
    _66 = (((frac((sin(_38 + 66.98999786376953f) * 493013.0f) + 14.298999786376953f) - _41) * cb0_097x) + _41);
  } else {
    _65 = _41;
    _66 = _41;
  }

  float4 _67 = t0.Sample(s0, float2(_35, _36));
  float4 _95 = t1.Sample(s1, float2(min(max(((cb0_068z * _35) + cb0_069x), cb0_060z), cb0_061x), min(max(((cb0_068w * _36) + cb0_069y), cb0_060w), cb0_061y)));
  
  APPLY_BLOOM(_95); // Matching output style

  float _135, _136, _137;
  [branch]
  if (!(cb0_085z == 0)) {
    bool _124 = (cb0_086x != 0);
    float2 _uv_t2 = float2(select(_124, _35, min(max(((cb0_076z * _35) + cb0_077x), cb0_075z), cb0_076x)), 
                           select(_124, _36, min(max(((cb0_076w * _36) + cb0_077y), cb0_075w), cb0_076y)));
    float4 _127 = t2.Sample(s2, _uv_t2);
    _135 = _127.x + _95.x;
    _136 = _127.y + _95.y;
    _137 = _127.z + _95.z;
  } else {
    _135 = _95.x; _136 = _95.y; _137 = _95.z;
  }

  float _149, _150, _151;
  [branch]
  if (!(cb0_085w == 0)) {
    float4 _141 = t3.Sample(s3, float2(_35, _36));
    _149 = _141.x + _135; _150 = _141.y + _136; _151 = _141.z + _137;
  } else {
    _149 = _135; _150 = _136; _151 = _137;
  }

  float3 base_color = float3(_149 + (_67.x * TEXCOORD_1.x * cb0_087x), 
                             _150 + (_67.y * TEXCOORD_1.x * cb0_087y), 
                             _151 + (_67.z * TEXCOORD_1.x * cb0_087z));

  // Lens/Vignette math consolidation
  float _v1 = 1.0f / ((((saturate(cb0_090w) * 9.0f) + 1.0f) * dot(float2(((TEXCOORD_1.z - 1.0f + (cb0_091x * 2.0f)) * cb0_089z * cb0_089x), ((TEXCOORD_1.w - 1.0f + (cb0_091y * 2.0f)) * cb0_089w * cb0_089x)), float2(((TEXCOORD_1.z - 1.0f + (cb0_091x * 2.0f)) * cb0_089z * cb0_089x), ((TEXCOORD_1.w - 1.0f + (cb0_091y * 2.0f)) * cb0_089w * cb0_089x)))) + 1.0f);
  float _v2 = 1.0f / ((((saturate(cb0_093w) * 9.0f) + 1.0f) * dot(float2(((TEXCOORD_1.z - 1.0f + (cb0_094x * 2.0f)) * cb0_092z * cb0_092x), ((TEXCOORD_1.w - 1.0f + (cb0_094y * 2.0f)) * cb0_092w * cb0_092x)), float2(((TEXCOORD_1.z - 1.0f + (cb0_094x * 2.0f)) * cb0_092z * cb0_092x), ((TEXCOORD_1.w - 1.0f + (cb0_094y * 2.0f)) * cb0_092w * cb0_092x)))) + 1.0f);
  
  float _inv_sq1 = _v1 * _v1;
  float _inv_sq2 = _v2 * _v2;
  float3 final_unmapped = base_color * float3((_inv_sq1 * (cb0_091z + 1.0f - cb0_090x) + cb0_090x), (_inv_sq1 * (cb0_091z + 1.0f - cb0_090y) + cb0_090y), (_inv_sq1 * (cb0_091z + 1.0f - cb0_090z) + cb0_090z))
                                     * float3((_inv_sq2 * (cb0_094z + 1.0f - cb0_093x) + cb0_093x), (_inv_sq2 * (cb0_094z + 1.0f - cb0_093y) + cb0_093y), (_inv_sq2 * (cb0_094z + 1.0f - cb0_093z) + cb0_093z));

  CAPTURE_UNTONEMAPPED(final_unmapped);

  float3 _tonemapped = final_unmapped;
  [branch]
  if (WUWA_TM_IS(1)) {
    _tonemapped = saturate(((_tonemapped * 1.3600000143051147f + 0.04699999839067459f) * _tonemapped) / ((_tonemapped * 0.9599999785423279f + 0.5600000023841858f) * _tonemapped + 0.14000000059604645f));
  }

  if (WUWA_TM_IS(2)) {
    float3 _curve = 1.0049500465393066f - (0.16398000717163086f / (_tonemapped - 0.19505000114440918f));
    _tonemapped = saturate(((_tonemapped - _curve) * select((_tonemapped > 0.6000000238418579f), 0.0f, 1.0f)) + _curve);
  }

  if (WUWA_TM_IS(3)) {
    float3 _v_tm = cb0_037y * _tonemapped;
    float _const_tm = cb0_037z * cb0_037w;
    float _off_tm = cb0_038y * cb0_038x;
    float _div_tm = cb0_038z * cb0_038x;
    _tonemapped = saturate((((_const_tm + _v_tm) * _tonemapped + _off_tm) / ((_v_tm + cb0_037z) * _tonemapped + _div_tm)) - (cb0_038y / cb0_038z));
  }

  [branch]
  if (!(cb0_106w == 0) && cb0_107x != 1.0f) {
      _tonemapped *= (cb0_107x * 0.699999988079071f + 0.30000001192092896f);
  }

  CLAMP_IF_SDR3(_tonemapped.x, _tonemapped.y, _tonemapped.z);
  CAPTURE_TONEMAPPED(_tonemapped);

  // LUT processing
  float3 _lut_uv = saturate((log2(_tonemapped + 0.002667719265446067f) * 0.0714285746216774f) + 0.6107269525527954f) * 0.96875f + 0.015625f;
  float4 _lut0 = t5.Sample(s5, _lut_uv);
  
  float3 _final_lut;
  [branch]
  if (!(cb0_108w == 0)) {
    float4 _t4_samp = t4.Sample(s4, float2(min(max(((cb0_084z * _35) + cb0_085x), cb0_083z), cb0_084x), min(max(((cb0_084w * _36) + cb0_085y), cb0_083w), cb0_084y)));
    float _mask = select((((uint)(round(_t4_samp.w * 255.0f)) & 15) & -4) == 12, 1.0f, 0.0f);
    float4 _lut1 = t6.Sample(s6, _lut_uv);
    _final_lut = ((_lut0.xyz - _lut1.xyz) * _mask + _lut1.xyz) * 1.0499999523162842f;
  } else {
    _final_lut = _lut0.xyz * 1.0499999523162842f;
  }

  HANDLE_LUT_OUTPUT3_FADE(_final_lut.x, _final_lut.y, _final_lut.z, t6, s6);

  float3 _final_color = float3(_41, _65, _66) * 0.00390625f - 0.001953125f + _final_lut;

  if (!(cb0_107w == 0)) {
     // Complex HDR/SDR Curve remapping
     float3 _p = pow(_final_color, 0.012683313339948654f);
     float3 _num = max(0.0f, _p - 0.8359375f);
     float3 _den = 18.8515625f - (_p * 18.6875f);
     float3 _res = max(6.103519990574569e-05f, (exp2(log2(_num / _den) * 6.277394771575928f) * 10000.0f) / cb0_107z);
     
     _final_color = min(_res * 12.920000076293945f, (exp2(log2(max(_res, 0.0031306699384003878f)) * 0.4166666567325592f) * 1.0549999475479126f - 0.054999999701976776f));
  }

  SV_Target.xyz = _final_color;
  SV_Target.w = saturate(dot(_final_lut, float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f)));
  CLAMP_IF_SDR(SV_Target.w);
  
  return SV_Target;
}