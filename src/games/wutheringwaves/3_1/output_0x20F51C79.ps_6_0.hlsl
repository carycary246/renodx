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
  float _28 = cb0_048z * TEXCOORD_3.x;
  float _29 = cb0_048w * TEXCOORD_3.y;
  float _33 = _28 + cb0_049x;
  float _34 = _29 + cb0_049y;
  float _35 = _33 * cb0_048x;
  float _36 = _34 * cb0_048y;
  float _37 = TEXCOORD_2.w * 543.3099975585938f;
  float _38 = _37 + TEXCOORD_2.z;
  float _39 = sin(_38);
  float _40 = _39 * 493013.0f;
  float _41 = frac(_40);
  bool _44 = (cb0_097x > 0.0f);
  float _65;
  float _66;
  float _135;
  float _136;
  float _137;
  float _149;
  float _150;
  float _151;
  float _279;
  float _280;
  float _281;
  float _313;
  float _314;
  float _315;
  float _362;
  float _363;
  float _364;
  float _379;
  float _380;
  float _381;
  float _454;
  float _455;
  float _456;
  float _544;
  float _545;
  float _546;
  if (_44) {
    float _46 = TEXCOORD_2.z + 33.9900016784668f;
    float _47 = _46 + _37;
    float _48 = sin(_47);
    float _49 = _48 * 493013.0f;
    float _50 = _49 + 7.177000045776367f;
    float _51 = frac(_50);
    float _52 = TEXCOORD_2.z + 66.98999786376953f;
    float _53 = _52 + _37;
    float _54 = sin(_53);
    float _55 = _54 * 493013.0f;
    float _56 = _55 + 14.298999786376953f;
    float _57 = frac(_56);
    float _58 = _51 - _41;
    float _59 = _57 - _41;
    float _60 = cb0_097x * _58;
    float _61 = cb0_097x * _59;
    float _62 = _60 + _41;
    float _63 = _61 + _41;
    _65 = _62;
    _66 = _63;
  } else {
    _65 = _41;
    _66 = _41;
  }
  float4 _67 = t0.Sample(s0, float2(_35, _36));
  float _78 = cb0_068z * _35;
  float _79 = cb0_068w * _36;
  float _83 = _78 + cb0_069x;
  float _84 = _79 + cb0_069y;
  float _91 = max(_83, cb0_060z);
  float _92 = max(_84, cb0_060w);
  float _93 = min(_91, cb0_061x);
  float _94 = min(_92, cb0_061y);
  float4 _95 = t1.Sample(s1, float2(_93, _94));
  bool _101 = (cb0_085z == 0);
  [branch]
  if (!_101) {
    float _106 = cb0_076z * _35;
    float _107 = cb0_076w * _36;
    float _111 = _106 + cb0_077x;
    float _112 = _107 + cb0_077y;
    float _118 = max(_111, cb0_075z);
    float _119 = max(_112, cb0_075w);
    float _120 = min(_118, cb0_076x);
    float _121 = min(_119, cb0_076y);
    bool _124 = (cb0_086x != 0);
    float _125 = select(_124, _35, _120);
    float _126 = select(_124, _36, _121);
    float4 _127 = t2.Sample(s2, float2(_125, _126));
    float _131 = _127.x + _95.x;
    float _132 = _127.y + _95.y;
    float _133 = _127.z + _95.z;
    _135 = _131;
    _136 = _132;
    _137 = _133;
  } else {
    _135 = _95.x;
    _136 = _95.y;
    _137 = _95.z;
  }
  bool _139 = (cb0_085w == 0);
  [branch]
  if (!_139) {
    float4 _141 = t3.Sample(s3, float2(_35, _36));
    float _145 = _141.x + _135;
    float _146 = _141.y + _136;
    float _147 = _141.z + _137;
    _149 = _145;
    _150 = _146;
    _151 = _147;
  } else {
    _149 = _135;
    _150 = _136;
    _151 = _137;
  }
  float _152 = _67.x * TEXCOORD_1.x;
  float _153 = _152 * cb0_087x;
  float _154 = _67.y * TEXCOORD_1.x;
  float _155 = _154 * cb0_087y;
  float _156 = _67.z * TEXCOORD_1.x;
  float _157 = _156 * cb0_087z;
  float _158 = _149 + _153;
  float _159 = _150 + _155;
  float _160 = _151 + _157;
  float _174 = cb0_091x * 2.0f;
  float _175 = cb0_091y * 2.0f;
  float _176 = TEXCOORD_1.z + -1.0f;
  float _177 = _176 + _174;
  float _178 = TEXCOORD_1.w + -1.0f;
  float _179 = _178 + _175;
  float _180 = _177 * cb0_089z;
  float _181 = _180 * cb0_089x;
  float _182 = _179 * cb0_089w;
  float _183 = _182 * cb0_089x;
  float _184 = dot(float2(_181, _183), float2(_181, _183));
  float _185 = saturate(cb0_090w);
  float _186 = _185 * 9.0f;
  float _187 = _186 + 1.0f;
  float _188 = _187 * _184;
  float _189 = _188 + 1.0f;
  float _190 = 1.0f / _189;
  float _191 = _190 * _190;
  float _192 = cb0_091z + 1.0f;
  float _193 = _192 - cb0_090x;
  float _194 = _192 - cb0_090y;
  float _195 = _192 - cb0_090z;
  float _196 = _191 * _193;
  float _197 = _191 * _194;
  float _198 = _191 * _195;
  float _199 = _196 + cb0_090x;
  float _200 = _197 + cb0_090y;
  float _201 = _198 + cb0_090z;
  float _215 = cb0_094x * 2.0f;
  float _216 = cb0_094y * 2.0f;
  float _217 = _176 + _215;
  float _218 = _178 + _216;
  float _219 = _217 * cb0_092z;
  float _220 = _219 * cb0_092x;
  float _221 = _218 * cb0_092w;
  float _222 = _221 * cb0_092x;
  float _223 = dot(float2(_220, _222), float2(_220, _222));
  float _224 = saturate(cb0_093w);
  float _225 = _224 * 9.0f;
  float _226 = _225 + 1.0f;
  float _227 = _226 * _223;
  float _228 = _227 + 1.0f;
  float _229 = 1.0f / _228;
  float _230 = _229 * _229;
  float _231 = cb0_094z + 1.0f;
  float _232 = _231 - cb0_093x;
  float _233 = _231 - cb0_093y;
  float _234 = _231 - cb0_093z;
  float _235 = _230 * _232;
  float _236 = _230 * _233;
  float _237 = _230 * _234;
  float _238 = _235 + cb0_093x;
  float _239 = _236 + cb0_093y;
  float _240 = _237 + cb0_093z;
  float _241 = _199 * _158;
  float _242 = _241 * _238;
  float _243 = _200 * _159;
  float _244 = _243 * _239;
  float _245 = _201 * _160;
  float _246 = _245 * _240;

  CAPTURE_UNTONEMAPPED(float3(_242, _244, _246));
  bool _249 = (cb0_108x == 0);
  [branch]
  if (!_249) {
    float _251 = _242 * 1.3600000143051147f;
    float _252 = _244 * 1.3600000143051147f;
    float _253 = _246 * 1.3600000143051147f;
    float _254 = _251 + 0.04699999839067459f;
    float _255 = _252 + 0.04699999839067459f;
    float _256 = _253 + 0.04699999839067459f;
    float _257 = _254 * _242;
    float _258 = _255 * _244;
    float _259 = _256 * _246;
    float _260 = _242 * 0.9599999785423279f;
    float _261 = _244 * 0.9599999785423279f;
    float _262 = _246 * 0.9599999785423279f;
    float _263 = _260 + 0.5600000023841858f;
    float _264 = _261 + 0.5600000023841858f;
    float _265 = _262 + 0.5600000023841858f;
    float _266 = _263 * _242;
    float _267 = _264 * _244;
    float _268 = _265 * _246;
    float _269 = _266 + 0.14000000059604645f;
    float _270 = _267 + 0.14000000059604645f;
    float _271 = _268 + 0.14000000059604645f;
    float _272 = _257 / _269;
    float _273 = _258 / _270;
    float _274 = _259 / _271;
    float _275 = saturate(_272);
    float _276 = saturate(_273);
    float _277 = saturate(_274);
    _279 = _275;
    _280 = _276;
    _281 = _277;
  } else {
    _279 = _242;
    _280 = _244;
    _281 = _246;
  }
  bool _283 = (cb0_108y == 0);
  [branch]
  if (!_283) {
    float _285 = _279 + -0.19505000114440918f;
    float _286 = _280 + -0.19505000114440918f;
    float _287 = _281 + -0.19505000114440918f;
    float _288 = 0.16398000717163086f / _285;
    float _289 = 0.16398000717163086f / _286;
    float _290 = 0.16398000717163086f / _287;
    float _291 = 1.0049500465393066f - _288;
    float _292 = 1.0049500465393066f - _289;
    float _293 = 1.0049500465393066f - _290;
    bool _294 = (_279 > 0.6000000238418579f);
    float _295 = select(_294, 0.0f, 1.0f);
    bool _296 = (_280 > 0.6000000238418579f);
    float _297 = select(_296, 0.0f, 1.0f);
    bool _298 = (_281 > 0.6000000238418579f);
    float _299 = select(_298, 0.0f, 1.0f);
    float _300 = _279 - _291;
    float _301 = _300 * _295;
    float _302 = _301 + _291;
    float _303 = _280 - _292;
    float _304 = _303 * _297;
    float _305 = _304 + _292;
    float _306 = _281 - _293;
    float _307 = _306 * _299;
    float _308 = _307 + _293;
    float _309 = saturate(_302);
    float _310 = saturate(_305);
    float _311 = saturate(_308);
    _313 = _309;
    _314 = _310;
    _315 = _311;
  } else {
    _313 = _279;
    _314 = _280;
    _315 = _281;
  }
  bool _317 = (cb0_108z == 0);
  [branch]
  if (!_317) {
    float _321 = cb0_037y * _313;
    float _322 = cb0_037y * _314;
    float _323 = cb0_037y * _315;
    float _326 = cb0_037z * cb0_037w;
    float _327 = _326 + _321;
    float _328 = _326 + _322;
    float _329 = _326 + _323;
    float _330 = _327 * _313;
    float _331 = _328 * _314;
    float _332 = _329 * _315;
    float _336 = cb0_038y * cb0_038x;
    float _337 = _330 + _336;
    float _338 = _331 + _336;
    float _339 = _332 + _336;
    float _340 = _321 + cb0_037z;
    float _341 = _322 + cb0_037z;
    float _342 = _323 + cb0_037z;
    float _343 = _340 * _313;
    float _344 = _341 * _314;
    float _345 = _342 * _315;
    float _347 = cb0_038z * cb0_038x;
    float _348 = _347 + _343;
    float _349 = _347 + _344;
    float _350 = _347 + _345;
    float _351 = _337 / _348;
    float _352 = _338 / _349;
    float _353 = _339 / _350;
    float _354 = cb0_038y / cb0_038z;
    float _355 = _351 - _354;
    float _356 = _352 - _354;
    float _357 = _353 - _354;
    float _358 = saturate(_355);
    float _359 = saturate(_356);
    float _360 = saturate(_357);
    _362 = _358;
    _363 = _359;
    _364 = _360;
  } else {
    _362 = _313;
    _363 = _314;
    _364 = _315;
  }
  bool _367 = (cb0_106w == 0);
  [branch]
  if (!_367) {
    bool _371 = (cb0_107x == 1.0f);
    if (!_371) {
      float _373 = cb0_107x * 0.699999988079071f;
      float _374 = _373 + 0.30000001192092896f;
      float _375 = _374 * _362;
      float _376 = _374 * _363;
      float _377 = _374 * _364;
      _379 = _375;
      _380 = _376;
      _381 = _377;
    } else {
      _379 = _362;
      _380 = _363;
      _381 = _364;
    }
  } else {
    _379 = _362;
    _380 = _363;
    _381 = _364;
  }
  bool _383 = (cb0_108w == 0);
  float _384 = _379 + 0.002667719265446067f;
  float _385 = _380 + 0.002667719265446067f;
  float _386 = _381 + 0.002667719265446067f;
  float _387 = log2(_384);
  float _388 = log2(_385);
  float _389 = log2(_386);
  float _390 = _387 * 0.0714285746216774f;
  float _391 = _388 * 0.0714285746216774f;
  float _392 = _389 * 0.0714285746216774f;
  float _393 = _390 + 0.6107269525527954f;
  float _394 = _391 + 0.6107269525527954f;
  float _395 = _392 + 0.6107269525527954f;
  float _396 = saturate(_393);
  float _397 = saturate(_394);
  float _398 = saturate(_395);
  float _399 = _396 * 0.96875f;
  float _400 = _397 * 0.96875f;
  float _401 = _398 * 0.96875f;
  float _402 = _399 + 0.015625f;
  float _403 = _400 + 0.015625f;
  float _404 = _401 + 0.015625f;
  float4 _405 = t5.Sample(s5, float3(_402, _403, _404));
  [branch]
  if (!_383) {
    float _413 = cb0_084z * _35;
    float _414 = cb0_084w * _36;
    float _418 = _413 + cb0_085x;
    float _419 = _414 + cb0_085y;
    float _425 = max(_418, cb0_083z);
    float _426 = max(_419, cb0_083w);
    float _427 = min(_425, cb0_084x);
    float _428 = min(_426, cb0_084y);
    float4 _429 = t4.Sample(s4, float2(_427, _428));
    float _431 = _429.w * 255.0f;
    float _432 = round(_431);
    uint _433 = uint(_432);
    int _434 = _433 & 15;
    float _435 = float((uint)_434);
    uint _436 = uint(_435);
    int _437 = _436 & -4;
    bool _438 = (_437 == 12);
    float _439 = select(_438, 1.0f, 0.0f);
    float4 _440 = t6.Sample(s6, float3(_402, _403, _404));
    float _444 = _405.x - _440.x;
    float _445 = _405.y - _440.y;
    float _446 = _405.z - _440.z;
    float _447 = _444 * _439;
    float _448 = _445 * _439;
    float _449 = _446 * _439;
    float _450 = _447 + _440.x;
    float _451 = _448 + _440.y;
    float _452 = _449 + _440.z;
    _454 = _450;
    _455 = _451;
    _456 = _452;
  } else {
    _454 = _405.x;
    _455 = _405.y;
    _456 = _405.z;
  }
  float _457 = _456 * 1.0499999523162842f;
  float _458 = _455 * 1.0499999523162842f;
  float _459 = _454 * 1.0499999523162842f;
  float _460 = dot(float3(_459, _458, _457), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
  float _461 = _41 * 0.00390625f;
  float _462 = _65 * 0.00390625f;
  float _463 = _66 * 0.00390625f;
  float _464 = _461 + -0.001953125f;
  float _465 = _462 + -0.001953125f;
  float _466 = _463 + -0.001953125f;
  float _467 = _464 + _459;
  float _468 = _465 + _458;
  float _469 = _466 + _457;
  float _470 = saturate(_460);
  bool _473 = (cb0_107w == 0);
  [branch]
  if (!_473) {
    float _475 = log2(_467);
    float _476 = log2(_468);
    float _477 = log2(_469);
    float _478 = _475 * 0.012683313339948654f;
    float _479 = _476 * 0.012683313339948654f;
    float _480 = _477 * 0.012683313339948654f;
    float _481 = exp2(_478);
    float _482 = exp2(_479);
    float _483 = exp2(_480);
    float _484 = _481 + -0.8359375f;
    float _485 = _482 + -0.8359375f;
    float _486 = _483 + -0.8359375f;
    float _487 = max(0.0f, _484);
    float _488 = max(0.0f, _485);
    float _489 = max(0.0f, _486);
    float _490 = _481 * 18.6875f;
    float _491 = _482 * 18.6875f;
    float _492 = _483 * 18.6875f;
    float _493 = 18.8515625f - _490;
    float _494 = 18.8515625f - _491;
    float _495 = 18.8515625f - _492;
    float _496 = _487 / _493;
    float _497 = _488 / _494;
    float _498 = _489 / _495;
    float _499 = log2(_496);
    float _500 = log2(_497);
    float _501 = log2(_498);
    float _502 = _499 * 6.277394771575928f;
    float _503 = _500 * 6.277394771575928f;
    float _504 = _501 * 6.277394771575928f;
    float _505 = exp2(_502);
    float _506 = exp2(_503);
    float _507 = exp2(_504);
    float _508 = _505 * 10000.0f;
    float _509 = _506 * 10000.0f;
    float _510 = _507 * 10000.0f;
    float _513 = _508 / cb0_107z;
    float _514 = _509 / cb0_107z;
    float _515 = _510 / cb0_107z;
    float _516 = max(6.103519990574569e-05f, _513);
    float _517 = max(6.103519990574569e-05f, _514);
    float _518 = max(6.103519990574569e-05f, _515);
    float _519 = max(_516, 0.0031306699384003878f);
    float _520 = max(_517, 0.0031306699384003878f);
    float _521 = max(_518, 0.0031306699384003878f);
    float _522 = log2(_519);
    float _523 = log2(_520);
    float _524 = log2(_521);
    float _525 = _522 * 0.4166666567325592f;
    float _526 = _523 * 0.4166666567325592f;
    float _527 = _524 * 0.4166666567325592f;
    float _528 = exp2(_525);
    float _529 = exp2(_526);
    float _530 = exp2(_527);
    float _531 = _528 * 1.0549999475479126f;
    float _532 = _529 * 1.0549999475479126f;
    float _533 = _530 * 1.0549999475479126f;
    float _534 = _531 + -0.054999999701976776f;
    float _535 = _532 + -0.054999999701976776f;
    float _536 = _533 + -0.054999999701976776f;
    float _537 = _516 * 12.920000076293945f;
    float _538 = _517 * 12.920000076293945f;
    float _539 = _518 * 12.920000076293945f;
    float _540 = min(_537, _534);
    float _541 = min(_538, _535);
    float _542 = min(_539, _536);
    _544 = _540;
    _545 = _541;
    _546 = _542;
  } else {
    _544 = _467;
    _545 = _468;
    _546 = _469;
  }
  CAPTURE_TONEMAPPED(float3(_544, _545, _546));
  CLAMP_IF_SDR3(_544, _545, _546);

  SV_Target.x = _544;
  SV_Target.y = _545;
  SV_Target.z = _546;
  SV_Target.w = _470;
  CLAMP_IF_SDR(SV_Target.w);
  SV_Target.rgb = renodx::draw::RenderIntermediatePass(SV_Target.rgb);
  return SV_Target;
}
