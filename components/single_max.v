//This file was automatically generated by the python 'pipeliner' script
//This module has a latency of 7 clocks
module dq (clk, q, d);
  input  clk;
  input  [width-1:0] d;
  output [width-1:0] q;
  parameter width=8;
  parameter depth=2;
  integer i;
  reg [width-1:0] delay_line [depth-1:0];
  always @(posedge clk) begin
    delay_line[0] <= d;
    for(i=1; i<depth; i=i+1) begin
      delay_line[i] <= delay_line[i-1];
    end
  end
  assign q = delay_line[depth-1];
endmodule

module single_max(clk, single_max_a, single_max_b, single_max_z);
  input clk;
  input [31:0] single_max_a;
  input [31:0] single_max_b;
  output [31:0] single_max_z;
  wire [31:0] s_0;
  wire [31:0] s_1;
  wire [0:0] s_2;
  wire [0:0] s_3;
  wire [0:0] s_4;
  wire [31:0] s_5;
  wire [0:0] s_6;
  wire [0:0] s_7;
  wire [31:0] s_8;
  wire [0:0] s_9;
  wire [0:0] s_10;
  wire [0:0] s_11;
  wire [0:0] s_12;
  wire [23:0] s_13;
  wire [23:0] s_14;
  wire [23:0] s_15;
  wire [24:0] s_16;
  wire [24:0] s_17;
  wire [24:0] s_18;
  wire [24:0] s_19;
  wire [23:0] s_20;
  wire [27:0] s_21;
  wire [27:0] s_22;
  wire [27:0] s_23;
  wire [27:0] s_24;
  wire [27:0] s_25;
  wire [27:0] s_26;
  wire [27:0] s_27;
  wire [27:0] s_28;
  wire [27:0] s_29;
  wire [23:0] s_30;
  wire [23:0] s_31;
  wire [0:0] s_32;
  wire [0:0] s_33;
  wire [0:0] s_34;
  wire [0:0] s_35;
  wire [7:0] s_36;
  wire [7:0] s_37;
  wire [6:0] s_38;
  wire [7:0] s_39;
  wire [22:0] s_40;
  wire [23:0] s_41;
  wire [0:0] s_42;
  wire [0:0] s_43;
  wire [0:0] s_44;
  wire [0:0] s_45;
  wire [7:0] s_46;
  wire [7:0] s_47;
  wire [6:0] s_48;
  wire [7:0] s_49;
  wire [22:0] s_50;
  wire [0:0] s_51;
  wire [0:0] s_52;
  wire [0:0] s_53;
  wire [8:0] s_54;
  wire [7:0] s_55;
  wire [7:0] s_56;
  wire [8:0] s_57;
  wire [7:0] s_58;
  wire [7:0] s_59;
  wire [0:0] s_60;
  wire [0:0] s_61;
  wire [7:0] s_62;
  wire [0:0] s_63;
  wire [22:0] s_64;
  wire [0:0] s_65;
  wire [0:0] s_66;
  wire [0:0] s_67;
  wire [7:0] s_68;
  wire [0:0] s_69;
  wire [22:0] s_70;
  wire [1:0] s_71;
  wire [27:0] s_72;
  wire [27:0] s_73;
  wire [27:0] s_74;
  wire [27:0] s_75;
  wire [23:0] s_76;
  wire [1:0] s_77;
  wire [8:0] s_78;
  wire [8:0] s_79;
  wire [8:0] s_80;
  wire [0:0] s_81;
  wire [27:0] s_82;
  wire [27:0] s_83;
  wire [27:0] s_84;
  wire [0:0] s_85;
  wire [0:0] s_86;
  wire [27:0] s_87;
  wire [27:0] s_88;
  wire [27:0] s_89;
  wire [27:0] s_90;
  wire [27:0] s_91;
  wire [0:0] s_92;
  wire [0:0] s_93;
  wire [8:0] s_94;
  wire [8:0] s_95;
  wire [5:0] s_96;
  wire [5:0] s_97;
  wire [0:0] s_98;
  wire [0:0] s_99;
  wire [4:0] s_100;
  wire [0:0] s_101;
  wire [0:0] s_102;
  wire [3:0] s_103;
  wire [0:0] s_104;
  wire [0:0] s_105;
  wire [2:0] s_106;
  wire [0:0] s_107;
  wire [0:0] s_108;
  wire [1:0] s_109;
  wire [0:0] s_110;
  wire [0:0] s_111;
  wire [0:0] s_112;
  wire [1:0] s_113;
  wire [3:0] s_114;
  wire [7:0] s_115;
  wire [15:0] s_116;
  wire [31:0] s_117;
  wire [30:0] s_118;
  wire [29:0] s_119;
  wire [28:0] s_120;
  wire [0:0] s_121;
  wire [0:0] s_122;
  wire [0:0] s_123;
  wire [0:0] s_124;
  wire [0:0] s_125;
  wire [0:0] s_126;
  wire [0:0] s_127;
  wire [0:0] s_128;
  wire [0:0] s_129;
  wire [0:0] s_130;
  wire [0:0] s_131;
  wire [1:0] s_132;
  wire [0:0] s_133;
  wire [0:0] s_134;
  wire [0:0] s_135;
  wire [1:0] s_136;
  wire [0:0] s_137;
  wire [0:0] s_138;
  wire [0:0] s_139;
  wire [0:0] s_140;
  wire [0:0] s_141;
  wire [0:0] s_142;
  wire [1:0] s_143;
  wire [0:0] s_144;
  wire [0:0] s_145;
  wire [0:0] s_146;
  wire [0:0] s_147;
  wire [0:0] s_148;
  wire [0:0] s_149;
  wire [2:0] s_150;
  wire [0:0] s_151;
  wire [0:0] s_152;
  wire [1:0] s_153;
  wire [0:0] s_154;
  wire [0:0] s_155;
  wire [0:0] s_156;
  wire [1:0] s_157;
  wire [3:0] s_158;
  wire [0:0] s_159;
  wire [0:0] s_160;
  wire [0:0] s_161;
  wire [0:0] s_162;
  wire [0:0] s_163;
  wire [0:0] s_164;
  wire [0:0] s_165;
  wire [1:0] s_166;
  wire [0:0] s_167;
  wire [0:0] s_168;
  wire [0:0] s_169;
  wire [1:0] s_170;
  wire [0:0] s_171;
  wire [0:0] s_172;
  wire [0:0] s_173;
  wire [0:0] s_174;
  wire [0:0] s_175;
  wire [0:0] s_176;
  wire [1:0] s_177;
  wire [0:0] s_178;
  wire [0:0] s_179;
  wire [0:0] s_180;
  wire [0:0] s_181;
  wire [0:0] s_182;
  wire [2:0] s_183;
  wire [0:0] s_184;
  wire [0:0] s_185;
  wire [1:0] s_186;
  wire [1:0] s_187;
  wire [1:0] s_188;
  wire [0:0] s_189;
  wire [3:0] s_190;
  wire [0:0] s_191;
  wire [0:0] s_192;
  wire [2:0] s_193;
  wire [0:0] s_194;
  wire [0:0] s_195;
  wire [1:0] s_196;
  wire [0:0] s_197;
  wire [0:0] s_198;
  wire [0:0] s_199;
  wire [1:0] s_200;
  wire [3:0] s_201;
  wire [7:0] s_202;
  wire [0:0] s_203;
  wire [0:0] s_204;
  wire [0:0] s_205;
  wire [0:0] s_206;
  wire [0:0] s_207;
  wire [0:0] s_208;
  wire [0:0] s_209;
  wire [1:0] s_210;
  wire [0:0] s_211;
  wire [0:0] s_212;
  wire [0:0] s_213;
  wire [1:0] s_214;
  wire [0:0] s_215;
  wire [0:0] s_216;
  wire [0:0] s_217;
  wire [0:0] s_218;
  wire [0:0] s_219;
  wire [0:0] s_220;
  wire [1:0] s_221;
  wire [0:0] s_222;
  wire [0:0] s_223;
  wire [0:0] s_224;
  wire [0:0] s_225;
  wire [0:0] s_226;
  wire [0:0] s_227;
  wire [2:0] s_228;
  wire [0:0] s_229;
  wire [0:0] s_230;
  wire [1:0] s_231;
  wire [0:0] s_232;
  wire [0:0] s_233;
  wire [0:0] s_234;
  wire [1:0] s_235;
  wire [3:0] s_236;
  wire [0:0] s_237;
  wire [0:0] s_238;
  wire [0:0] s_239;
  wire [0:0] s_240;
  wire [0:0] s_241;
  wire [0:0] s_242;
  wire [0:0] s_243;
  wire [1:0] s_244;
  wire [0:0] s_245;
  wire [0:0] s_246;
  wire [0:0] s_247;
  wire [1:0] s_248;
  wire [0:0] s_249;
  wire [0:0] s_250;
  wire [0:0] s_251;
  wire [0:0] s_252;
  wire [0:0] s_253;
  wire [0:0] s_254;
  wire [1:0] s_255;
  wire [0:0] s_256;
  wire [0:0] s_257;
  wire [0:0] s_258;
  wire [0:0] s_259;
  wire [0:0] s_260;
  wire [2:0] s_261;
  wire [0:0] s_262;
  wire [0:0] s_263;
  wire [1:0] s_264;
  wire [1:0] s_265;
  wire [1:0] s_266;
  wire [3:0] s_267;
  wire [0:0] s_268;
  wire [0:0] s_269;
  wire [2:0] s_270;
  wire [2:0] s_271;
  wire [2:0] s_272;
  wire [0:0] s_273;
  wire [4:0] s_274;
  wire [0:0] s_275;
  wire [0:0] s_276;
  wire [3:0] s_277;
  wire [0:0] s_278;
  wire [0:0] s_279;
  wire [2:0] s_280;
  wire [0:0] s_281;
  wire [0:0] s_282;
  wire [1:0] s_283;
  wire [0:0] s_284;
  wire [0:0] s_285;
  wire [0:0] s_286;
  wire [1:0] s_287;
  wire [3:0] s_288;
  wire [7:0] s_289;
  wire [15:0] s_290;
  wire [0:0] s_291;
  wire [0:0] s_292;
  wire [0:0] s_293;
  wire [0:0] s_294;
  wire [0:0] s_295;
  wire [0:0] s_296;
  wire [0:0] s_297;
  wire [1:0] s_298;
  wire [0:0] s_299;
  wire [0:0] s_300;
  wire [0:0] s_301;
  wire [1:0] s_302;
  wire [0:0] s_303;
  wire [0:0] s_304;
  wire [0:0] s_305;
  wire [0:0] s_306;
  wire [0:0] s_307;
  wire [0:0] s_308;
  wire [1:0] s_309;
  wire [0:0] s_310;
  wire [0:0] s_311;
  wire [0:0] s_312;
  wire [0:0] s_313;
  wire [0:0] s_314;
  wire [0:0] s_315;
  wire [2:0] s_316;
  wire [0:0] s_317;
  wire [0:0] s_318;
  wire [1:0] s_319;
  wire [0:0] s_320;
  wire [0:0] s_321;
  wire [0:0] s_322;
  wire [1:0] s_323;
  wire [3:0] s_324;
  wire [0:0] s_325;
  wire [0:0] s_326;
  wire [0:0] s_327;
  wire [0:0] s_328;
  wire [0:0] s_329;
  wire [0:0] s_330;
  wire [0:0] s_331;
  wire [1:0] s_332;
  wire [0:0] s_333;
  wire [0:0] s_334;
  wire [0:0] s_335;
  wire [1:0] s_336;
  wire [0:0] s_337;
  wire [0:0] s_338;
  wire [0:0] s_339;
  wire [0:0] s_340;
  wire [0:0] s_341;
  wire [0:0] s_342;
  wire [1:0] s_343;
  wire [0:0] s_344;
  wire [0:0] s_345;
  wire [0:0] s_346;
  wire [0:0] s_347;
  wire [0:0] s_348;
  wire [2:0] s_349;
  wire [0:0] s_350;
  wire [0:0] s_351;
  wire [1:0] s_352;
  wire [1:0] s_353;
  wire [1:0] s_354;
  wire [0:0] s_355;
  wire [3:0] s_356;
  wire [0:0] s_357;
  wire [0:0] s_358;
  wire [2:0] s_359;
  wire [0:0] s_360;
  wire [0:0] s_361;
  wire [1:0] s_362;
  wire [0:0] s_363;
  wire [0:0] s_364;
  wire [0:0] s_365;
  wire [1:0] s_366;
  wire [3:0] s_367;
  wire [7:0] s_368;
  wire [0:0] s_369;
  wire [0:0] s_370;
  wire [0:0] s_371;
  wire [0:0] s_372;
  wire [0:0] s_373;
  wire [0:0] s_374;
  wire [0:0] s_375;
  wire [1:0] s_376;
  wire [0:0] s_377;
  wire [0:0] s_378;
  wire [0:0] s_379;
  wire [1:0] s_380;
  wire [0:0] s_381;
  wire [0:0] s_382;
  wire [0:0] s_383;
  wire [0:0] s_384;
  wire [0:0] s_385;
  wire [0:0] s_386;
  wire [1:0] s_387;
  wire [0:0] s_388;
  wire [0:0] s_389;
  wire [0:0] s_390;
  wire [0:0] s_391;
  wire [0:0] s_392;
  wire [0:0] s_393;
  wire [2:0] s_394;
  wire [0:0] s_395;
  wire [0:0] s_396;
  wire [1:0] s_397;
  wire [0:0] s_398;
  wire [0:0] s_399;
  wire [0:0] s_400;
  wire [1:0] s_401;
  wire [3:0] s_402;
  wire [0:0] s_403;
  wire [0:0] s_404;
  wire [0:0] s_405;
  wire [0:0] s_406;
  wire [0:0] s_407;
  wire [0:0] s_408;
  wire [0:0] s_409;
  wire [1:0] s_410;
  wire [0:0] s_411;
  wire [0:0] s_412;
  wire [0:0] s_413;
  wire [1:0] s_414;
  wire [0:0] s_415;
  wire [0:0] s_416;
  wire [0:0] s_417;
  wire [0:0] s_418;
  wire [0:0] s_419;
  wire [0:0] s_420;
  wire [1:0] s_421;
  wire [0:0] s_422;
  wire [0:0] s_423;
  wire [0:0] s_424;
  wire [0:0] s_425;
  wire [0:0] s_426;
  wire [2:0] s_427;
  wire [0:0] s_428;
  wire [0:0] s_429;
  wire [1:0] s_430;
  wire [1:0] s_431;
  wire [1:0] s_432;
  wire [3:0] s_433;
  wire [0:0] s_434;
  wire [0:0] s_435;
  wire [2:0] s_436;
  wire [2:0] s_437;
  wire [2:0] s_438;
  wire [4:0] s_439;
  wire [0:0] s_440;
  wire [0:0] s_441;
  wire [3:0] s_442;
  wire [3:0] s_443;
  wire [3:0] s_444;
  wire [8:0] s_445;
  wire [8:0] s_446;
  wire [8:0] s_447;
  wire [8:0] s_448;
  wire [8:0] s_449;
  wire [8:0] s_450;
  wire [0:0] s_451;
  wire [8:0] s_452;
  wire [0:0] s_453;
  wire [8:0] s_454;
  wire [8:0] s_455;
  wire [0:0] s_456;
  wire [23:0] s_457;
  wire [0:0] s_458;
  wire [0:0] s_459;
  wire [0:0] s_460;
  wire [0:0] s_461;
  wire [0:0] s_462;
  wire [0:0] s_463;
  wire [0:0] s_464;
  wire [0:0] s_465;
  wire [0:0] s_466;
  wire [0:0] s_467;
  wire [0:0] s_468;
  wire [0:0] s_469;
  wire [0:0] s_470;
  wire [23:0] s_471;
  wire [0:0] s_472;
  wire [0:0] s_473;
  wire [0:0] s_474;
  wire [0:0] s_475;
  wire [0:0] s_476;
  wire [0:0] s_477;
  wire [0:0] s_478;
  wire [0:0] s_479;
  wire [0:0] s_480;
  wire [0:0] s_481;
  wire [0:0] s_482;
  wire [0:0] s_483;
  wire [0:0] s_484;
  wire [0:0] s_485;
  wire [27:0] s_486;
  wire [0:0] s_487;
  wire [0:0] s_488;
  wire [0:0] s_489;
  wire [0:0] s_490;
  wire [8:0] s_491;
  wire [8:0] s_492;
  wire [8:0] s_493;
  wire [8:0] s_494;
  wire [8:0] s_495;
  wire [8:0] s_496;
  wire [7:0] s_497;
  wire [0:0] s_498;
  wire [0:0] s_499;
  wire [0:0] s_500;
  wire [0:0] s_501;
  wire [0:0] s_502;
  wire [0:0] s_503;
  wire [7:0] s_504;
  wire [0:0] s_505;
  wire [22:0] s_506;
  wire [0:0] s_507;
  wire [0:0] s_508;
  wire [0:0] s_509;
  wire [0:0] s_510;
  wire [7:0] s_511;
  wire [0:0] s_512;
  wire [22:0] s_513;
  wire [30:0] s_514;
  wire [31:0] s_515;
  wire [31:0] s_516;
  wire [30:0] s_517;
  wire [31:0] s_518;
  wire [31:0] s_519;
  wire [30:0] s_520;
  wire [31:0] s_521;
  wire [31:0] s_522;
  wire [8:0] s_523;
  wire [7:0] s_524;
  wire [22:0] s_525;
  wire [23:0] s_526;
  wire [23:0] s_527;
  wire [23:0] s_528;
  wire [31:0] s_529;
  wire [8:0] s_530;
  wire [7:0] s_531;
  wire [7:0] s_532;
  wire [7:0] s_533;
  wire [7:0] s_534;
  wire [6:0] s_535;
  wire [22:0] s_536;
  wire [0:0] s_537;
  wire [0:0] s_538;
  wire [7:0] s_539;
  wire [0:0] s_540;
  wire [0:0] s_541;
  wire [0:0] s_542;
  wire [23:0] s_543;
  wire [0:0] s_544;
  wire [0:0] s_545;
  wire [0:0] s_546;
  wire [0:0] s_547;
  wire [0:0] s_548;

  assign s_0 = s_547?s_1:s_515;
  assign s_1 = {s_2,s_514};
  assign s_2 = s_9?s_3:s_6;
  dq #(1, 7) dq_s_3 (clk, s_3, s_4);
  assign s_4 = s_5[31];
  assign s_5 = single_max_a;
  dq #(1, 7) dq_s_6 (clk, s_6, s_7);
  assign s_7 = s_8[31];
  assign s_8 = single_max_b;
  assign s_9 = s_10 & s_507;
  assign s_10 = s_11 & s_500;
  assign s_11 = s_12 | s_474;
  assign s_12 = s_13 == s_473;
  dq #(24, 1) dq_s_13 (clk, s_13, s_14);
  assign s_14 = s_472?s_15:s_471;
  assign s_15 = s_16[24:1];
  assign s_16 = s_458?s_17:s_457;
  dq #(25, 1) dq_s_17 (clk, s_17, s_18);
  assign s_18 = s_19 + s_456;
  assign s_19 = s_20;
  assign s_20 = s_21[27:4];
  dq #(28, 1) dq_s_21 (clk, s_21, s_22);
  assign s_22 = s_23 << s_94;
  dq #(28, 2) dq_s_23 (clk, s_23, s_24);
  dq #(28, 1) dq_s_24 (clk, s_24, s_25);
  assign s_25 = s_26 + s_87;
  dq #(28, 1) dq_s_26 (clk, s_26, s_27);
  assign s_27 = s_86?s_28:s_72;
  assign s_28 = s_29 << s_71;
  assign s_29 = s_30;
  assign s_30 = s_51?s_31:s_41;
  assign s_31 = {s_32,s_40};
  assign s_32 = s_35?s_33:s_34;
  assign s_33 = 1'd0;
  assign s_34 = 1'd1;
  assign s_35 = s_36 == s_39;
  assign s_36 = s_37 - s_38;
  assign s_37 = s_5[30:23];
  assign s_38 = 7'd127;
  assign s_39 = -8'd127;
  assign s_40 = s_5[22:0];
  assign s_41 = {s_42,s_50};
  assign s_42 = s_45?s_43:s_44;
  assign s_43 = 1'd0;
  assign s_44 = 1'd1;
  assign s_45 = s_46 == s_49;
  assign s_46 = s_47 - s_48;
  assign s_47 = s_8[30:23];
  assign s_48 = 7'd127;
  assign s_49 = -8'd127;
  assign s_50 = s_8[22:0];
  assign s_51 = s_52 & s_65;
  assign s_52 = s_53 | s_60;
  assign s_53 = $signed(s_54) > $signed(s_57);
  assign s_54 = $signed(s_55);
  assign s_55 = s_35?s_56:s_36;
  assign s_56 = -8'd126;
  assign s_57 = $signed(s_58);
  assign s_58 = s_45?s_59:s_46;
  assign s_59 = -8'd126;
  assign s_60 = s_61 & s_63;
  assign s_61 = s_36 == s_62;
  assign s_62 = 8'd128;
  assign s_63 = s_40 == s_64;
  assign s_64 = 23'd0;
  assign s_65 = ~s_66;
  assign s_66 = s_67 & s_69;
  assign s_67 = s_46 == s_68;
  assign s_68 = 8'd128;
  assign s_69 = s_50 == s_70;
  assign s_70 = 23'd0;
  assign s_71 = 2'd3;
  assign s_72 = s_73 | s_81;
  assign s_73 = s_74 >> s_78;
  assign s_74 = s_75 << s_77;
  assign s_75 = s_76;
  assign s_76 = s_51?s_41:s_31;
  assign s_77 = 2'd3;
  assign s_78 = s_79 - s_80;
  assign s_79 = s_51?s_54:s_57;
  assign s_80 = s_51?s_57:s_54;
  assign s_81 = s_82 != s_85;
  assign s_82 = s_74 << s_83;
  assign s_83 = s_84 - s_78;
  assign s_84 = 28'd28;
  assign s_85 = 1'd0;
  assign s_86 = s_28 >= s_72;
  dq #(28, 1) dq_s_87 (clk, s_87, s_88);
  assign s_88 = s_92?s_89:s_90;
  assign s_89 = s_86?s_72:s_28;
  assign s_90 = s_91 - s_89;
  assign s_91 = 28'd0;
  assign s_92 = s_4 == s_93;
  assign s_93 = ~s_7;
  dq #(9, 1) dq_s_94 (clk, s_94, s_95);
  assign s_95 = s_453?s_96:s_445;
  dq #(6, 1) dq_s_96 (clk, s_96, s_97);
  assign s_97 = {s_98,s_439};
  assign s_98 = s_99 & s_273;
  assign s_99 = s_100[4];
  assign s_100 = {s_101,s_267};
  assign s_101 = s_102 & s_189;
  assign s_102 = s_103[3];
  assign s_103 = {s_104,s_183};
  assign s_104 = s_105 & s_149;
  assign s_105 = s_106[2];
  assign s_106 = {s_107,s_143};
  assign s_107 = s_108 & s_131;
  assign s_108 = s_109[1];
  assign s_109 = {s_110,s_127};
  assign s_110 = s_111 & s_125;
  assign s_111 = ~s_112;
  assign s_112 = s_113[1];
  assign s_113 = s_114[3:2];
  assign s_114 = s_115[7:4];
  assign s_115 = s_116[15:8];
  assign s_116 = s_117[31:16];
  assign s_117 = {s_118,s_124};
  assign s_118 = {s_119,s_123};
  assign s_119 = {s_120,s_122};
  assign s_120 = {s_24,s_121};
  assign s_121 = 1'd1;
  assign s_122 = 1'd1;
  assign s_123 = 1'd1;
  assign s_124 = 1'd1;
  assign s_125 = ~s_126;
  assign s_126 = s_113[0];
  assign s_127 = s_128 & s_130;
  assign s_128 = ~s_129;
  assign s_129 = s_113[1];
  assign s_130 = s_113[0];
  assign s_131 = s_132[1];
  assign s_132 = {s_133,s_139};
  assign s_133 = s_134 & s_137;
  assign s_134 = ~s_135;
  assign s_135 = s_136[1];
  assign s_136 = s_114[1:0];
  assign s_137 = ~s_138;
  assign s_138 = s_136[0];
  assign s_139 = s_140 & s_142;
  assign s_140 = ~s_141;
  assign s_141 = s_136[1];
  assign s_142 = s_136[0];
  assign s_143 = {s_144,s_146};
  assign s_144 = s_108 & s_145;
  assign s_145 = ~s_131;
  assign s_146 = s_108?s_147:s_148;
  assign s_147 = s_132[0:0];
  assign s_148 = s_109[0:0];
  assign s_149 = s_150[2];
  assign s_150 = {s_151,s_177};
  assign s_151 = s_152 & s_165;
  assign s_152 = s_153[1];
  assign s_153 = {s_154,s_161};
  assign s_154 = s_155 & s_159;
  assign s_155 = ~s_156;
  assign s_156 = s_157[1];
  assign s_157 = s_158[3:2];
  assign s_158 = s_115[3:0];
  assign s_159 = ~s_160;
  assign s_160 = s_157[0];
  assign s_161 = s_162 & s_164;
  assign s_162 = ~s_163;
  assign s_163 = s_157[1];
  assign s_164 = s_157[0];
  assign s_165 = s_166[1];
  assign s_166 = {s_167,s_173};
  assign s_167 = s_168 & s_171;
  assign s_168 = ~s_169;
  assign s_169 = s_170[1];
  assign s_170 = s_158[1:0];
  assign s_171 = ~s_172;
  assign s_172 = s_170[0];
  assign s_173 = s_174 & s_176;
  assign s_174 = ~s_175;
  assign s_175 = s_170[1];
  assign s_176 = s_170[0];
  assign s_177 = {s_178,s_180};
  assign s_178 = s_152 & s_179;
  assign s_179 = ~s_165;
  assign s_180 = s_152?s_181:s_182;
  assign s_181 = s_166[0:0];
  assign s_182 = s_153[0:0];
  assign s_183 = {s_184,s_186};
  assign s_184 = s_105 & s_185;
  assign s_185 = ~s_149;
  assign s_186 = s_105?s_187:s_188;
  assign s_187 = s_150[1:0];
  assign s_188 = s_106[1:0];
  assign s_189 = s_190[3];
  assign s_190 = {s_191,s_261};
  assign s_191 = s_192 & s_227;
  assign s_192 = s_193[2];
  assign s_193 = {s_194,s_221};
  assign s_194 = s_195 & s_209;
  assign s_195 = s_196[1];
  assign s_196 = {s_197,s_205};
  assign s_197 = s_198 & s_203;
  assign s_198 = ~s_199;
  assign s_199 = s_200[1];
  assign s_200 = s_201[3:2];
  assign s_201 = s_202[7:4];
  assign s_202 = s_116[7:0];
  assign s_203 = ~s_204;
  assign s_204 = s_200[0];
  assign s_205 = s_206 & s_208;
  assign s_206 = ~s_207;
  assign s_207 = s_200[1];
  assign s_208 = s_200[0];
  assign s_209 = s_210[1];
  assign s_210 = {s_211,s_217};
  assign s_211 = s_212 & s_215;
  assign s_212 = ~s_213;
  assign s_213 = s_214[1];
  assign s_214 = s_201[1:0];
  assign s_215 = ~s_216;
  assign s_216 = s_214[0];
  assign s_217 = s_218 & s_220;
  assign s_218 = ~s_219;
  assign s_219 = s_214[1];
  assign s_220 = s_214[0];
  assign s_221 = {s_222,s_224};
  assign s_222 = s_195 & s_223;
  assign s_223 = ~s_209;
  assign s_224 = s_195?s_225:s_226;
  assign s_225 = s_210[0:0];
  assign s_226 = s_196[0:0];
  assign s_227 = s_228[2];
  assign s_228 = {s_229,s_255};
  assign s_229 = s_230 & s_243;
  assign s_230 = s_231[1];
  assign s_231 = {s_232,s_239};
  assign s_232 = s_233 & s_237;
  assign s_233 = ~s_234;
  assign s_234 = s_235[1];
  assign s_235 = s_236[3:2];
  assign s_236 = s_202[3:0];
  assign s_237 = ~s_238;
  assign s_238 = s_235[0];
  assign s_239 = s_240 & s_242;
  assign s_240 = ~s_241;
  assign s_241 = s_235[1];
  assign s_242 = s_235[0];
  assign s_243 = s_244[1];
  assign s_244 = {s_245,s_251};
  assign s_245 = s_246 & s_249;
  assign s_246 = ~s_247;
  assign s_247 = s_248[1];
  assign s_248 = s_236[1:0];
  assign s_249 = ~s_250;
  assign s_250 = s_248[0];
  assign s_251 = s_252 & s_254;
  assign s_252 = ~s_253;
  assign s_253 = s_248[1];
  assign s_254 = s_248[0];
  assign s_255 = {s_256,s_258};
  assign s_256 = s_230 & s_257;
  assign s_257 = ~s_243;
  assign s_258 = s_230?s_259:s_260;
  assign s_259 = s_244[0:0];
  assign s_260 = s_231[0:0];
  assign s_261 = {s_262,s_264};
  assign s_262 = s_192 & s_263;
  assign s_263 = ~s_227;
  assign s_264 = s_192?s_265:s_266;
  assign s_265 = s_228[1:0];
  assign s_266 = s_193[1:0];
  assign s_267 = {s_268,s_270};
  assign s_268 = s_102 & s_269;
  assign s_269 = ~s_189;
  assign s_270 = s_102?s_271:s_272;
  assign s_271 = s_190[2:0];
  assign s_272 = s_103[2:0];
  assign s_273 = s_274[4];
  assign s_274 = {s_275,s_433};
  assign s_275 = s_276 & s_355;
  assign s_276 = s_277[3];
  assign s_277 = {s_278,s_349};
  assign s_278 = s_279 & s_315;
  assign s_279 = s_280[2];
  assign s_280 = {s_281,s_309};
  assign s_281 = s_282 & s_297;
  assign s_282 = s_283[1];
  assign s_283 = {s_284,s_293};
  assign s_284 = s_285 & s_291;
  assign s_285 = ~s_286;
  assign s_286 = s_287[1];
  assign s_287 = s_288[3:2];
  assign s_288 = s_289[7:4];
  assign s_289 = s_290[15:8];
  assign s_290 = s_117[15:0];
  assign s_291 = ~s_292;
  assign s_292 = s_287[0];
  assign s_293 = s_294 & s_296;
  assign s_294 = ~s_295;
  assign s_295 = s_287[1];
  assign s_296 = s_287[0];
  assign s_297 = s_298[1];
  assign s_298 = {s_299,s_305};
  assign s_299 = s_300 & s_303;
  assign s_300 = ~s_301;
  assign s_301 = s_302[1];
  assign s_302 = s_288[1:0];
  assign s_303 = ~s_304;
  assign s_304 = s_302[0];
  assign s_305 = s_306 & s_308;
  assign s_306 = ~s_307;
  assign s_307 = s_302[1];
  assign s_308 = s_302[0];
  assign s_309 = {s_310,s_312};
  assign s_310 = s_282 & s_311;
  assign s_311 = ~s_297;
  assign s_312 = s_282?s_313:s_314;
  assign s_313 = s_298[0:0];
  assign s_314 = s_283[0:0];
  assign s_315 = s_316[2];
  assign s_316 = {s_317,s_343};
  assign s_317 = s_318 & s_331;
  assign s_318 = s_319[1];
  assign s_319 = {s_320,s_327};
  assign s_320 = s_321 & s_325;
  assign s_321 = ~s_322;
  assign s_322 = s_323[1];
  assign s_323 = s_324[3:2];
  assign s_324 = s_289[3:0];
  assign s_325 = ~s_326;
  assign s_326 = s_323[0];
  assign s_327 = s_328 & s_330;
  assign s_328 = ~s_329;
  assign s_329 = s_323[1];
  assign s_330 = s_323[0];
  assign s_331 = s_332[1];
  assign s_332 = {s_333,s_339};
  assign s_333 = s_334 & s_337;
  assign s_334 = ~s_335;
  assign s_335 = s_336[1];
  assign s_336 = s_324[1:0];
  assign s_337 = ~s_338;
  assign s_338 = s_336[0];
  assign s_339 = s_340 & s_342;
  assign s_340 = ~s_341;
  assign s_341 = s_336[1];
  assign s_342 = s_336[0];
  assign s_343 = {s_344,s_346};
  assign s_344 = s_318 & s_345;
  assign s_345 = ~s_331;
  assign s_346 = s_318?s_347:s_348;
  assign s_347 = s_332[0:0];
  assign s_348 = s_319[0:0];
  assign s_349 = {s_350,s_352};
  assign s_350 = s_279 & s_351;
  assign s_351 = ~s_315;
  assign s_352 = s_279?s_353:s_354;
  assign s_353 = s_316[1:0];
  assign s_354 = s_280[1:0];
  assign s_355 = s_356[3];
  assign s_356 = {s_357,s_427};
  assign s_357 = s_358 & s_393;
  assign s_358 = s_359[2];
  assign s_359 = {s_360,s_387};
  assign s_360 = s_361 & s_375;
  assign s_361 = s_362[1];
  assign s_362 = {s_363,s_371};
  assign s_363 = s_364 & s_369;
  assign s_364 = ~s_365;
  assign s_365 = s_366[1];
  assign s_366 = s_367[3:2];
  assign s_367 = s_368[7:4];
  assign s_368 = s_290[7:0];
  assign s_369 = ~s_370;
  assign s_370 = s_366[0];
  assign s_371 = s_372 & s_374;
  assign s_372 = ~s_373;
  assign s_373 = s_366[1];
  assign s_374 = s_366[0];
  assign s_375 = s_376[1];
  assign s_376 = {s_377,s_383};
  assign s_377 = s_378 & s_381;
  assign s_378 = ~s_379;
  assign s_379 = s_380[1];
  assign s_380 = s_367[1:0];
  assign s_381 = ~s_382;
  assign s_382 = s_380[0];
  assign s_383 = s_384 & s_386;
  assign s_384 = ~s_385;
  assign s_385 = s_380[1];
  assign s_386 = s_380[0];
  assign s_387 = {s_388,s_390};
  assign s_388 = s_361 & s_389;
  assign s_389 = ~s_375;
  assign s_390 = s_361?s_391:s_392;
  assign s_391 = s_376[0:0];
  assign s_392 = s_362[0:0];
  assign s_393 = s_394[2];
  assign s_394 = {s_395,s_421};
  assign s_395 = s_396 & s_409;
  assign s_396 = s_397[1];
  assign s_397 = {s_398,s_405};
  assign s_398 = s_399 & s_403;
  assign s_399 = ~s_400;
  assign s_400 = s_401[1];
  assign s_401 = s_402[3:2];
  assign s_402 = s_368[3:0];
  assign s_403 = ~s_404;
  assign s_404 = s_401[0];
  assign s_405 = s_406 & s_408;
  assign s_406 = ~s_407;
  assign s_407 = s_401[1];
  assign s_408 = s_401[0];
  assign s_409 = s_410[1];
  assign s_410 = {s_411,s_417};
  assign s_411 = s_412 & s_415;
  assign s_412 = ~s_413;
  assign s_413 = s_414[1];
  assign s_414 = s_402[1:0];
  assign s_415 = ~s_416;
  assign s_416 = s_414[0];
  assign s_417 = s_418 & s_420;
  assign s_418 = ~s_419;
  assign s_419 = s_414[1];
  assign s_420 = s_414[0];
  assign s_421 = {s_422,s_424};
  assign s_422 = s_396 & s_423;
  assign s_423 = ~s_409;
  assign s_424 = s_396?s_425:s_426;
  assign s_425 = s_410[0:0];
  assign s_426 = s_397[0:0];
  assign s_427 = {s_428,s_430};
  assign s_428 = s_358 & s_429;
  assign s_429 = ~s_393;
  assign s_430 = s_358?s_431:s_432;
  assign s_431 = s_394[1:0];
  assign s_432 = s_359[1:0];
  assign s_433 = {s_434,s_436};
  assign s_434 = s_276 & s_435;
  assign s_435 = ~s_355;
  assign s_436 = s_276?s_437:s_438;
  assign s_437 = s_356[2:0];
  assign s_438 = s_277[2:0];
  assign s_439 = {s_440,s_442};
  assign s_440 = s_99 & s_441;
  assign s_441 = ~s_273;
  assign s_442 = s_99?s_443:s_444;
  assign s_443 = s_274[3:0];
  assign s_444 = s_100[3:0];
  dq #(9, 2) dq_s_445 (clk, s_445, s_446);
  assign s_446 = s_447 - s_452;
  dq #(9, 1) dq_s_447 (clk, s_447, s_448);
  assign s_448 = s_449 + s_451;
  assign s_449 = s_86?s_79:s_450;
  assign s_450 = s_80 + s_78;
  assign s_451 = 1'd1;
  assign s_452 = -9'd126;
  assign s_453 = s_454 <= s_455;
  assign s_454 = s_96;
  dq #(9, 2) dq_s_455 (clk, s_455, s_446);
  assign s_456 = 1'd1;
  dq #(24, 1) dq_s_457 (clk, s_457, s_20);
  assign s_458 = s_459 & s_461;
  dq #(1, 1) dq_s_459 (clk, s_459, s_460);
  assign s_460 = s_21[3];
  assign s_461 = s_462 | s_469;
  assign s_462 = s_463 | s_465;
  dq #(1, 1) dq_s_463 (clk, s_463, s_464);
  assign s_464 = s_21[2];
  dq #(1, 1) dq_s_465 (clk, s_465, s_466);
  assign s_466 = s_467 | s_468;
  assign s_467 = s_21[1];
  assign s_468 = s_21[0];
  dq #(1, 1) dq_s_469 (clk, s_469, s_470);
  assign s_470 = s_20[0];
  assign s_471 = s_16[23:0];
  assign s_472 = s_16[24];
  assign s_473 = 1'd0;
  assign s_474 = ~s_475;
  assign s_475 = s_488?s_476:s_480;
  dq #(1, 7) dq_s_476 (clk, s_476, s_477);
  assign s_477 = s_86?s_478:s_479;
  assign s_478 = s_51?s_4:s_93;
  assign s_479 = s_51?s_93:s_4;
  dq #(1, 5) dq_s_480 (clk, s_480, s_481);
  assign s_481 = s_485?s_482:s_484;
  dq #(1, 2) dq_s_482 (clk, s_482, s_483);
  assign s_483 = s_4 & s_93;
  dq #(1, 2) dq_s_484 (clk, s_484, s_477);
  assign s_485 = s_486 == s_487;
  dq #(28, 1) dq_s_486 (clk, s_486, s_25);
  assign s_487 = 1'd0;
  assign s_488 = s_489 | s_499;
  assign s_489 = s_490 | s_498;
  assign s_490 = $signed(s_491) > $signed(s_497);
  dq #(9, 1) dq_s_491 (clk, s_491, s_492);
  assign s_492 = s_493 + s_472;
  dq #(9, 1) dq_s_493 (clk, s_493, s_494);
  dq #(9, 1) dq_s_494 (clk, s_494, s_495);
  assign s_495 = s_496 - s_94;
  dq #(9, 3) dq_s_496 (clk, s_496, s_447);
  assign s_497 = 8'd127;
  dq #(1, 7) dq_s_498 (clk, s_498, s_60);
  dq #(1, 7) dq_s_499 (clk, s_499, s_66);
  dq #(1, 7) dq_s_500 (clk, s_500, s_501);
  assign s_501 = ~s_502;
  assign s_502 = s_503 & s_505;
  assign s_503 = s_36 == s_504;
  assign s_504 = 8'd128;
  assign s_505 = s_40 != s_506;
  assign s_506 = 23'd0;
  dq #(1, 7) dq_s_507 (clk, s_507, s_508);
  assign s_508 = ~s_509;
  assign s_509 = s_510 & s_512;
  assign s_510 = s_46 == s_511;
  assign s_511 = 8'd128;
  assign s_512 = s_50 != s_513;
  assign s_513 = 23'd0;
  assign s_514 = 31'd2143289344;
  assign s_515 = s_544?s_516:s_518;
  assign s_516 = {s_2,s_517};
  assign s_517 = 31'd2139095040;
  assign s_518 = s_542?s_519:s_521;
  assign s_519 = {s_2,s_520};
  assign s_520 = 31'd0;
  assign s_521 = s_537?s_522:s_529;
  assign s_522 = {s_523,s_525};
  assign s_523 = {s_2,s_524};
  assign s_524 = 8'd0;
  assign s_525 = s_526[22:0];
  assign s_526 = s_9?s_527:s_528;
  dq #(24, 7) dq_s_527 (clk, s_527, s_31);
  dq #(24, 7) dq_s_528 (clk, s_528, s_41);
  assign s_529 = {s_530,s_536};
  assign s_530 = {s_2,s_531};
  assign s_531 = s_532 + s_535;
  assign s_532 = s_9?s_533:s_534;
  dq #(8, 7) dq_s_533 (clk, s_533, s_55);
  dq #(8, 7) dq_s_534 (clk, s_534, s_58);
  assign s_535 = 7'd127;
  assign s_536 = s_526[22:0];
  assign s_537 = s_538 & s_540;
  assign s_538 = s_532 == s_539;
  assign s_539 = -8'd126;
  assign s_540 = ~s_541;
  assign s_541 = s_526[23];
  assign s_542 = s_526 == s_543;
  assign s_543 = 24'd0;
  assign s_544 = s_9?s_545:s_546;
  dq #(1, 7) dq_s_545 (clk, s_545, s_60);
  dq #(1, 7) dq_s_546 (clk, s_546, s_66);
  dq #(1, 7) dq_s_547 (clk, s_547, s_548);
  assign s_548 = s_502 | s_509;
  assign single_max_z = s_0;
endmodule
