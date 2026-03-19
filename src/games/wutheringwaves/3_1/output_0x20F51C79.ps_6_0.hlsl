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

    // Base texture coordinates
    float _28 = cb0_048z * TEXCOORD_3.x;
    float _29 = cb0_048w * TEXCOORD_3.y;
    float _35 = (_28 + cb0_049x) * cb0_048x;
    float _36 = (_29 + cb0_049y) * cb0_048y;

    // Random seed generation
    float _37 = TEXCOORD_2.w * 543.31f;
    float _38 = _37 + TEXCOORD_2.z;
    float _41 = frac(sin(_38) * 493013.0f);

    // Conditional random offsets
    float _65, _66;
    if (cb0_097x > 0.0f) {
        float _51 = frac(sin(TEXCOORD_2.z + 33.99f + _37) * 493013.0f + 7.177f);
        float _57 = frac(sin(TEXCOORD_2.z + 66.99f + _37) * 493013.0f + 14.299f);
        _65 = cb0_097x * (_51 - _41) + _41;
        _66 = cb0_097x * (_57 - _41) + _41;
    } else {
        _65 = _41;
        _66 = _41;
    }

    // Sample primary textures
    float4 _67 = t0.Sample(s0, float2(_35, _36));

    float _83 = max(cb0_068z * _35 + cb0_069x, cb0_060z);
    float _84 = max(cb0_068w * _36 + cb0_069y, cb0_060w);
    float4 _95 = t1.Sample(s1, float2(min(_83, cb0_061x), min(_84, cb0_061y)));

    // Secondary texture addition
    float _135, _136, _137;
    if (cb0_085z != 0) {
        float _125 = cb0_086x != 0 ? _35 : min(cb0_076z * _35 + cb0_077x, cb0_076x);
        float _126 = cb0_086x != 0 ? _36 : min(cb0_076w * _36 + cb0_077y, cb0_076y);
        float4 _127 = t2.Sample(s2, float2(_125, _126));
        _135 = _127.x + _95.x;
        _136 = _127.y + _95.y;
        _137 = _127.z + _95.z;
    } else {
        _135 = _95.x;
        _136 = _95.y;
        _137 = _95.z;
    }

    // Tertiary texture addition
    float _149, _150, _151;
    if (cb0_085w != 0) {
        _149 = _135;
        _150 = _136;
        _151 = _137;
    } else {
        float4 _141 = t3.Sample(s3, float2(_35, _36));
        _149 = _141.x + _135;
        _150 = _141.y + _136;
        _151 = _141.z + _137;
    }

    // Apply color multipliers from TEXCOORD_1
    float _158 = _149 + _67.x * TEXCOORD_1.x * cb0_087x;
    float _159 = _150 + _67.y * TEXCOORD_1.x * cb0_087y;
    float _160 = _151 + _67.z * TEXCOORD_1.x * cb0_087z;

    // Compute some scaled coordinates for 3D textures
    float _174 = cb0_091x * 2.0f;
    float _175 = cb0_091y * 2.0f;
    float _177 = TEXCOORD_1.z - 1.0f + _174;
    float _179 = TEXCOORD_1.w - 1.0f + _175;
    float _180 = _177 * cb0_089z * cb0_089x;
    float _182 = _179 * cb0_089w * cb0_089x;
    float _184 = dot(float2(_180, _182), float2(_180, _182));
    float _190 = 1.0f / (_184 * (saturate(cb0_090w) * 9.0f + 1.0f) + 1.0f);
    float _191 = _190 * _190;
    float _199 = _191 * (_192 := cb0_091z + 1.0f - cb0_090x) + cb0_090x;
    float _200 = _191 * (_194 := cb0_091z + 1.0f - cb0_090y) + cb0_090y;
    float _201 = _191 * (_195 := cb0_091z + 1.0f - cb0_090z) + cb0_090z;

    // ... (rest of the shader follows the same structured pattern for sampling t4/t5/t6 and blending)

    // Final outputs
    SV_Target.x = _544;
    SV_Target.y = _545;
    SV_Target.z = _546;
    SV_Target.w = saturate(_460);

    return SV_Target;
}