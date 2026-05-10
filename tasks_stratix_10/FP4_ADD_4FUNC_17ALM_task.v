module quartus_prj (
    dout,
    clk,
    din_A,
    din_B);

output  [3:0] dout;
input   clk;
input   [3:0] din_A;
input   [3:0] din_B;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

wire alm_0_sumout0;
wire alm_0_sumout1;
wire alm_0_cout;
wire alm_0_lut5out0;
wire alm_0_lut5out1;
wire alm_0_lut6out;

wire alm_0_a;
wire alm_0_b;
wire alm_0_c0;
wire alm_0_d0;
wire alm_0_c1;
wire alm_0_d1;
wire alm_0_e;
wire alm_0_f;

wire alm_1_sumout0;
wire alm_1_sumout1;
wire alm_1_cout;
wire alm_1_lut5out0;
wire alm_1_lut5out1;
wire alm_1_lut6out;

wire alm_1_a;
wire alm_1_b;
wire alm_1_c0;
wire alm_1_d0;
wire alm_1_c1;
wire alm_1_d1;
wire alm_1_e;
wire alm_1_f;

wire alm_2_sumout0;
wire alm_2_sumout1;
wire alm_2_cout;
wire alm_2_lut5out0;
wire alm_2_lut5out1;
wire alm_2_lut6out;

wire alm_2_a;
wire alm_2_b;
wire alm_2_c0;
wire alm_2_d0;
wire alm_2_c1;
wire alm_2_d1;
wire alm_2_e;
wire alm_2_f;

wire alm_3_sumout0;
wire alm_3_sumout1;
wire alm_3_cout;
wire alm_3_lut5out0;
wire alm_3_lut5out1;
wire alm_3_lut6out;

wire alm_3_a;
wire alm_3_b;
wire alm_3_c0;
wire alm_3_d0;
wire alm_3_c1;
wire alm_3_d1;
wire alm_3_e;
wire alm_3_f;

wire alm_4_sumout0;
wire alm_4_sumout1;
wire alm_4_cout;
wire alm_4_lut5out0;
wire alm_4_lut5out1;
wire alm_4_lut6out;

wire alm_4_a;
wire alm_4_b;
wire alm_4_c0;
wire alm_4_d0;
wire alm_4_c1;
wire alm_4_d1;
wire alm_4_e;
wire alm_4_f;

wire alm_5_sumout0;
wire alm_5_sumout1;
wire alm_5_cout;
wire alm_5_lut5out0;
wire alm_5_lut5out1;
wire alm_5_lut6out;

wire alm_5_a;
wire alm_5_b;
wire alm_5_c0;
wire alm_5_d0;
wire alm_5_c1;
wire alm_5_d1;
wire alm_5_e;
wire alm_5_f;

wire alm_6_sumout0;
wire alm_6_sumout1;
wire alm_6_cout;
wire alm_6_lut5out0;
wire alm_6_lut5out1;
wire alm_6_lut6out;

wire alm_6_a;
wire alm_6_b;
wire alm_6_c0;
wire alm_6_d0;
wire alm_6_c1;
wire alm_6_d1;
wire alm_6_e;
wire alm_6_f;

wire alm_7_sumout0;
wire alm_7_sumout1;
wire alm_7_cout;
wire alm_7_lut5out0;
wire alm_7_lut5out1;
wire alm_7_lut6out;

wire alm_7_a;
wire alm_7_b;
wire alm_7_c0;
wire alm_7_d0;
wire alm_7_c1;
wire alm_7_d1;
wire alm_7_e;
wire alm_7_f;

wire alm_8_sumout0;
wire alm_8_sumout1;
wire alm_8_cout;
wire alm_8_lut5out0;
wire alm_8_lut5out1;
wire alm_8_lut6out;

wire alm_8_a;
wire alm_8_b;
wire alm_8_c0;
wire alm_8_d0;
wire alm_8_c1;
wire alm_8_d1;
wire alm_8_e;
wire alm_8_f;

wire alm_9_sumout0;
wire alm_9_sumout1;
wire alm_9_cout;
wire alm_9_lut5out0;
wire alm_9_lut5out1;
wire alm_9_lut6out;

wire alm_9_a;
wire alm_9_b;
wire alm_9_c0;
wire alm_9_d0;
wire alm_9_c1;
wire alm_9_d1;
wire alm_9_e;
wire alm_9_f;

wire alm_10_sumout0;
wire alm_10_sumout1;
wire alm_10_cout;
wire alm_10_lut5out0;
wire alm_10_lut5out1;
wire alm_10_lut6out;

wire alm_10_a;
wire alm_10_b;
wire alm_10_c0;
wire alm_10_d0;
wire alm_10_c1;
wire alm_10_d1;
wire alm_10_e;
wire alm_10_f;

wire alm_11_sumout0;
wire alm_11_sumout1;
wire alm_11_cout;
wire alm_11_lut5out0;
wire alm_11_lut5out1;
wire alm_11_lut6out;

wire alm_11_a;
wire alm_11_b;
wire alm_11_c0;
wire alm_11_d0;
wire alm_11_c1;
wire alm_11_d1;
wire alm_11_e;
wire alm_11_f;

wire alm_12_sumout0;
wire alm_12_sumout1;
wire alm_12_cout;
wire alm_12_lut5out0;
wire alm_12_lut5out1;
wire alm_12_lut6out;

wire alm_12_a;
wire alm_12_b;
wire alm_12_c0;
wire alm_12_d0;
wire alm_12_c1;
wire alm_12_d1;
wire alm_12_e;
wire alm_12_f;

wire alm_13_sumout0;
wire alm_13_sumout1;
wire alm_13_cout;
wire alm_13_lut5out0;
wire alm_13_lut5out1;
wire alm_13_lut6out;

wire alm_13_a;
wire alm_13_b;
wire alm_13_c0;
wire alm_13_d0;
wire alm_13_c1;
wire alm_13_d1;
wire alm_13_e;
wire alm_13_f;

wire alm_14_sumout0;
wire alm_14_sumout1;
wire alm_14_cout;
wire alm_14_lut5out0;
wire alm_14_lut5out1;
wire alm_14_lut6out;

wire alm_14_a;
wire alm_14_b;
wire alm_14_c0;
wire alm_14_d0;
wire alm_14_c1;
wire alm_14_d1;
wire alm_14_e;
wire alm_14_f;

wire alm_15_sumout0;
wire alm_15_sumout1;
wire alm_15_cout;
wire alm_15_lut5out0;
wire alm_15_lut5out1;
wire alm_15_lut6out;

wire alm_15_a;
wire alm_15_b;
wire alm_15_c0;
wire alm_15_d0;
wire alm_15_c1;
wire alm_15_d1;
wire alm_15_e;
wire alm_15_f;

wire alm_16_sumout0;
wire alm_16_sumout1;
wire alm_16_cout;
wire alm_16_lut5out0;
wire alm_16_lut5out1;
wire alm_16_lut6out;

wire alm_16_a;
wire alm_16_b;
wire alm_16_c0;
wire alm_16_d0;
wire alm_16_c1;
wire alm_16_d1;
wire alm_16_e;
wire alm_16_f;


wire dout_0;
wire dout_1;
wire dout_2;
wire dout_3;

assign dout[0] = dout_0;
assign dout[1] = dout_1;
assign dout[2] = dout_2;
assign dout[3] = dout_3;

fourteennm_logic_module alm_0(
    .a(alm_0_a),
    .b(alm_0_b),
    .c0(alm_0_c0),
    .d0(alm_0_d0),
    .c1(alm_0_c1),
    .d1(alm_0_d1),
    .e(alm_0_e),
    .f(alm_0_f),
    .cin(gnd),
    .sumout0(alm_0_sumout0),
    .sumout1(alm_0_sumout1),
    .cout(alm_0_cout),
    .lut5out0(alm_0_lut5out0),
    .lut5out1(alm_0_lut5out1),
    .lut6out(alm_0_lut6out)
);
defparam alm_0.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_1(
    .a(alm_1_a),
    .b(alm_1_b),
    .c0(alm_1_c0),
    .d0(alm_1_d0),
    .c1(alm_1_c1),
    .d1(alm_1_d1),
    .e(alm_1_e),
    .f(alm_1_f),
    .cin(alm_0_cout),
    .sumout0(alm_1_sumout0),
    .sumout1(alm_1_sumout1),
    .cout(alm_1_cout),
    .lut5out0(alm_1_lut5out0),
    .lut5out1(alm_1_lut5out1),
    .lut6out(alm_1_lut6out)
);
defparam alm_1.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_2(
    .a(alm_2_a),
    .b(alm_2_b),
    .c0(alm_2_c0),
    .d0(alm_2_d0),
    .c1(alm_2_c1),
    .d1(alm_2_d1),
    .e(alm_2_e),
    .f(alm_2_f),
    .cin(alm_1_cout),
    .sumout0(alm_2_sumout0),
    .sumout1(alm_2_sumout1),
    .cout(alm_2_cout),
    .lut5out0(alm_2_lut5out0),
    .lut5out1(alm_2_lut5out1),
    .lut6out(alm_2_lut6out)
);
defparam alm_2.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_3(
    .a(alm_3_a),
    .b(alm_3_b),
    .c0(alm_3_c0),
    .d0(alm_3_d0),
    .c1(alm_3_c1),
    .d1(alm_3_d1),
    .e(alm_3_e),
    .f(alm_3_f),
    .cin(alm_2_cout),
    .sumout0(alm_3_sumout0),
    .sumout1(alm_3_sumout1),
    .cout(alm_3_cout),
    .lut5out0(alm_3_lut5out0),
    .lut5out1(alm_3_lut5out1),
    .lut6out(alm_3_lut6out)
);
defparam alm_3.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_4(
    .a(alm_4_a),
    .b(alm_4_b),
    .c0(alm_4_c0),
    .d0(alm_4_d0),
    .c1(alm_4_c1),
    .d1(alm_4_d1),
    .e(alm_4_e),
    .f(alm_4_f),
    .cin(alm_3_cout),
    .sumout0(alm_4_sumout0),
    .sumout1(alm_4_sumout1),
    .cout(alm_4_cout),
    .lut5out0(alm_4_lut5out0),
    .lut5out1(alm_4_lut5out1),
    .lut6out(alm_4_lut6out)
);
defparam alm_4.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_5(
    .a(alm_5_a),
    .b(alm_5_b),
    .c0(alm_5_c0),
    .d0(alm_5_d0),
    .c1(alm_5_c1),
    .d1(alm_5_d1),
    .e(alm_5_e),
    .f(alm_5_f),
    .cin(alm_4_cout),
    .sumout0(alm_5_sumout0),
    .sumout1(alm_5_sumout1),
    .cout(alm_5_cout),
    .lut5out0(alm_5_lut5out0),
    .lut5out1(alm_5_lut5out1),
    .lut6out(alm_5_lut6out)
);
defparam alm_5.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_6(
    .a(alm_6_a),
    .b(alm_6_b),
    .c0(alm_6_c0),
    .d0(alm_6_d0),
    .c1(alm_6_c1),
    .d1(alm_6_d1),
    .e(alm_6_e),
    .f(alm_6_f),
    .cin(alm_5_cout),
    .sumout0(alm_6_sumout0),
    .sumout1(alm_6_sumout1),
    .cout(alm_6_cout),
    .lut5out0(alm_6_lut5out0),
    .lut5out1(alm_6_lut5out1),
    .lut6out(alm_6_lut6out)
);
defparam alm_6.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_7(
    .a(alm_7_a),
    .b(alm_7_b),
    .c0(alm_7_c0),
    .d0(alm_7_d0),
    .c1(alm_7_c1),
    .d1(alm_7_d1),
    .e(alm_7_e),
    .f(alm_7_f),
    .cin(alm_6_cout),
    .sumout0(alm_7_sumout0),
    .sumout1(alm_7_sumout1),
    .cout(alm_7_cout),
    .lut5out0(alm_7_lut5out0),
    .lut5out1(alm_7_lut5out1),
    .lut6out(alm_7_lut6out)
);
defparam alm_7.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_8(
    .a(alm_8_a),
    .b(alm_8_b),
    .c0(alm_8_c0),
    .d0(alm_8_d0),
    .c1(alm_8_c1),
    .d1(alm_8_d1),
    .e(alm_8_e),
    .f(alm_8_f),
    .cin(alm_7_cout),
    .sumout0(alm_8_sumout0),
    .sumout1(alm_8_sumout1),
    .cout(alm_8_cout),
    .lut5out0(alm_8_lut5out0),
    .lut5out1(alm_8_lut5out1),
    .lut6out(alm_8_lut6out)
);
defparam alm_8.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_9(
    .a(alm_9_a),
    .b(alm_9_b),
    .c0(alm_9_c0),
    .d0(alm_9_d0),
    .c1(alm_9_c1),
    .d1(alm_9_d1),
    .e(alm_9_e),
    .f(alm_9_f),
    .cin(alm_8_cout),
    .sumout0(alm_9_sumout0),
    .sumout1(alm_9_sumout1),
    .cout(alm_9_cout),
    .lut5out0(alm_9_lut5out0),
    .lut5out1(alm_9_lut5out1),
    .lut6out(alm_9_lut6out)
);
defparam alm_9.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_10(
    .a(alm_10_a),
    .b(alm_10_b),
    .c0(alm_10_c0),
    .d0(alm_10_d0),
    .c1(alm_10_c1),
    .d1(alm_10_d1),
    .e(alm_10_e),
    .f(alm_10_f),
    .cin(alm_9_cout),
    .sumout0(alm_10_sumout0),
    .sumout1(alm_10_sumout1),
    .cout(alm_10_cout),
    .lut5out0(alm_10_lut5out0),
    .lut5out1(alm_10_lut5out1),
    .lut6out(alm_10_lut6out)
);
defparam alm_10.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_11(
    .a(alm_11_a),
    .b(alm_11_b),
    .c0(alm_11_c0),
    .d0(alm_11_d0),
    .c1(alm_11_c1),
    .d1(alm_11_d1),
    .e(alm_11_e),
    .f(alm_11_f),
    .cin(alm_10_cout),
    .sumout0(alm_11_sumout0),
    .sumout1(alm_11_sumout1),
    .cout(alm_11_cout),
    .lut5out0(alm_11_lut5out0),
    .lut5out1(alm_11_lut5out1),
    .lut6out(alm_11_lut6out)
);
defparam alm_11.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_12(
    .a(alm_12_a),
    .b(alm_12_b),
    .c0(alm_12_c0),
    .d0(alm_12_d0),
    .c1(alm_12_c1),
    .d1(alm_12_d1),
    .e(alm_12_e),
    .f(alm_12_f),
    .cin(alm_11_cout),
    .sumout0(alm_12_sumout0),
    .sumout1(alm_12_sumout1),
    .cout(alm_12_cout),
    .lut5out0(alm_12_lut5out0),
    .lut5out1(alm_12_lut5out1),
    .lut6out(alm_12_lut6out)
);
defparam alm_12.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_13(
    .a(alm_13_a),
    .b(alm_13_b),
    .c0(alm_13_c0),
    .d0(alm_13_d0),
    .c1(alm_13_c1),
    .d1(alm_13_d1),
    .e(alm_13_e),
    .f(alm_13_f),
    .cin(alm_12_cout),
    .sumout0(alm_13_sumout0),
    .sumout1(alm_13_sumout1),
    .cout(alm_13_cout),
    .lut5out0(alm_13_lut5out0),
    .lut5out1(alm_13_lut5out1),
    .lut6out(alm_13_lut6out)
);
defparam alm_13.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_14(
    .a(alm_14_a),
    .b(alm_14_b),
    .c0(alm_14_c0),
    .d0(alm_14_d0),
    .c1(alm_14_c1),
    .d1(alm_14_d1),
    .e(alm_14_e),
    .f(alm_14_f),
    .cin(alm_13_cout),
    .sumout0(alm_14_sumout0),
    .sumout1(alm_14_sumout1),
    .cout(alm_14_cout),
    .lut5out0(alm_14_lut5out0),
    .lut5out1(alm_14_lut5out1),
    .lut6out(alm_14_lut6out)
);
defparam alm_14.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_15(
    .a(alm_15_a),
    .b(alm_15_b),
    .c0(alm_15_c0),
    .d0(alm_15_d0),
    .c1(alm_15_c1),
    .d1(alm_15_d1),
    .e(alm_15_e),
    .f(alm_15_f),
    .cin(alm_14_cout),
    .sumout0(alm_15_sumout0),
    .sumout1(alm_15_sumout1),
    .cout(alm_15_cout),
    .lut5out0(alm_15_lut5out0),
    .lut5out1(alm_15_lut5out1),
    .lut6out(alm_15_lut6out)
);
defparam alm_15.lut_mask = 64'h0000000000000000;

fourteennm_logic_module alm_16(
    .a(alm_16_a),
    .b(alm_16_b),
    .c0(alm_16_c0),
    .d0(alm_16_d0),
    .c1(alm_16_c1),
    .d1(alm_16_d1),
    .e(alm_16_e),
    .f(alm_16_f),
    .cin(alm_15_cout),
    .sumout0(alm_16_sumout0),
    .sumout1(alm_16_sumout1),
    .cout(alm_16_cout),
    .lut5out0(alm_16_lut5out0),
    .lut5out1(alm_16_lut5out1),
    .lut6out(alm_16_lut6out)
);
defparam alm_16.lut_mask = 64'h0000000000000000;


z3_hint_group(input_group_0, %CONSTS, %INPUTS);
z3_hint_group(input_group_1, %CONSTS, %INPUTS, %ALM_OUTPUTS_0);
z3_hint_group(input_group_2, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1);
z3_hint_group(input_group_3, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2);
z3_hint_group(input_group_4, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3);
z3_hint_group(input_group_5, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4);
z3_hint_group(input_group_6, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5);
z3_hint_group(input_group_7, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6);
z3_hint_group(input_group_8, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6, %ALM_OUTPUTS_7);
z3_hint_group(input_group_9, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6, %ALM_OUTPUTS_7, %ALM_OUTPUTS_8);
z3_hint_group(input_group_10, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6, %ALM_OUTPUTS_7, %ALM_OUTPUTS_8, %ALM_OUTPUTS_9);
z3_hint_group(input_group_11, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6, %ALM_OUTPUTS_7, %ALM_OUTPUTS_8, %ALM_OUTPUTS_9, %ALM_OUTPUTS_10);
z3_hint_group(input_group_12, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6, %ALM_OUTPUTS_7, %ALM_OUTPUTS_8, %ALM_OUTPUTS_9, %ALM_OUTPUTS_10, %ALM_OUTPUTS_11);
z3_hint_group(input_group_13, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6, %ALM_OUTPUTS_7, %ALM_OUTPUTS_8, %ALM_OUTPUTS_9, %ALM_OUTPUTS_10, %ALM_OUTPUTS_11, %ALM_OUTPUTS_12);
z3_hint_group(input_group_14, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6, %ALM_OUTPUTS_7, %ALM_OUTPUTS_8, %ALM_OUTPUTS_9, %ALM_OUTPUTS_10, %ALM_OUTPUTS_11, %ALM_OUTPUTS_12, %ALM_OUTPUTS_13);
z3_hint_group(input_group_15, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6, %ALM_OUTPUTS_7, %ALM_OUTPUTS_8, %ALM_OUTPUTS_9, %ALM_OUTPUTS_10, %ALM_OUTPUTS_11, %ALM_OUTPUTS_12, %ALM_OUTPUTS_13, %ALM_OUTPUTS_14);
z3_hint_group(input_group_16, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3, %ALM_OUTPUTS_4, %ALM_OUTPUTS_5, %ALM_OUTPUTS_6, %ALM_OUTPUTS_7, %ALM_OUTPUTS_8, %ALM_OUTPUTS_9, %ALM_OUTPUTS_10, %ALM_OUTPUTS_11, %ALM_OUTPUTS_12, %ALM_OUTPUTS_13, %ALM_OUTPUTS_14, %ALM_OUTPUTS_15);

z3_hint_symmetric_connection(alm_0_a, alm_0_b, input_group_0);
z3_hint_symmetric_connection(alm_0_c0, alm_0_d0, input_group_0);
z3_hint_symmetric_connection(alm_0_c1, alm_0_d1, input_group_0);
z3_hint_connection(alm_0_e, alm_0_f, input_group_0);
z3_hint_symmetric_connection(alm_1_a, alm_1_b, input_group_1);
z3_hint_symmetric_connection(alm_1_c0, alm_1_d0, input_group_1);
z3_hint_symmetric_connection(alm_1_c1, alm_1_d1, input_group_1);
z3_hint_connection(alm_1_e, alm_1_f, input_group_1);
z3_hint_symmetric_connection(alm_2_a, alm_2_b, input_group_2);
z3_hint_symmetric_connection(alm_2_c0, alm_2_d0, input_group_2);
z3_hint_symmetric_connection(alm_2_c1, alm_2_d1, input_group_2);
z3_hint_connection(alm_2_e, alm_2_f, input_group_2);
z3_hint_symmetric_connection(alm_3_a, alm_3_b, input_group_3);
z3_hint_symmetric_connection(alm_3_c0, alm_3_d0, input_group_3);
z3_hint_symmetric_connection(alm_3_c1, alm_3_d1, input_group_3);
z3_hint_connection(alm_3_e, alm_3_f, input_group_3);
z3_hint_symmetric_connection(alm_4_a, alm_4_b, input_group_4);
z3_hint_symmetric_connection(alm_4_c0, alm_4_d0, input_group_4);
z3_hint_symmetric_connection(alm_4_c1, alm_4_d1, input_group_4);
z3_hint_connection(alm_4_e, alm_4_f, input_group_4);
z3_hint_symmetric_connection(alm_5_a, alm_5_b, input_group_5);
z3_hint_symmetric_connection(alm_5_c0, alm_5_d0, input_group_5);
z3_hint_symmetric_connection(alm_5_c1, alm_5_d1, input_group_5);
z3_hint_connection(alm_5_e, alm_5_f, input_group_5);
z3_hint_symmetric_connection(alm_6_a, alm_6_b, input_group_6);
z3_hint_symmetric_connection(alm_6_c0, alm_6_d0, input_group_6);
z3_hint_symmetric_connection(alm_6_c1, alm_6_d1, input_group_6);
z3_hint_connection(alm_6_e, alm_6_f, input_group_6);
z3_hint_symmetric_connection(alm_7_a, alm_7_b, input_group_7);
z3_hint_symmetric_connection(alm_7_c0, alm_7_d0, input_group_7);
z3_hint_symmetric_connection(alm_7_c1, alm_7_d1, input_group_7);
z3_hint_connection(alm_7_e, alm_7_f, input_group_7);
z3_hint_symmetric_connection(alm_8_a, alm_8_b, input_group_8);
z3_hint_symmetric_connection(alm_8_c0, alm_8_d0, input_group_8);
z3_hint_symmetric_connection(alm_8_c1, alm_8_d1, input_group_8);
z3_hint_connection(alm_8_e, alm_8_f, input_group_8);
z3_hint_symmetric_connection(alm_9_a, alm_9_b, input_group_9);
z3_hint_symmetric_connection(alm_9_c0, alm_9_d0, input_group_9);
z3_hint_symmetric_connection(alm_9_c1, alm_9_d1, input_group_9);
z3_hint_connection(alm_9_e, alm_9_f, input_group_9);
z3_hint_symmetric_connection(alm_10_a, alm_10_b, input_group_10);
z3_hint_symmetric_connection(alm_10_c0, alm_10_d0, input_group_10);
z3_hint_symmetric_connection(alm_10_c1, alm_10_d1, input_group_10);
z3_hint_connection(alm_10_e, alm_10_f, input_group_10);
z3_hint_symmetric_connection(alm_11_a, alm_11_b, input_group_11);
z3_hint_symmetric_connection(alm_11_c0, alm_11_d0, input_group_11);
z3_hint_symmetric_connection(alm_11_c1, alm_11_d1, input_group_11);
z3_hint_connection(alm_11_e, alm_11_f, input_group_11);
z3_hint_symmetric_connection(alm_12_a, alm_12_b, input_group_12);
z3_hint_symmetric_connection(alm_12_c0, alm_12_d0, input_group_12);
z3_hint_symmetric_connection(alm_12_c1, alm_12_d1, input_group_12);
z3_hint_connection(alm_12_e, alm_12_f, input_group_12);
z3_hint_symmetric_connection(alm_13_a, alm_13_b, input_group_13);
z3_hint_symmetric_connection(alm_13_c0, alm_13_d0, input_group_13);
z3_hint_symmetric_connection(alm_13_c1, alm_13_d1, input_group_13);
z3_hint_connection(alm_13_e, alm_13_f, input_group_13);
z3_hint_symmetric_connection(alm_14_a, alm_14_b, input_group_14);
z3_hint_symmetric_connection(alm_14_c0, alm_14_d0, input_group_14);
z3_hint_symmetric_connection(alm_14_c1, alm_14_d1, input_group_14);
z3_hint_connection(alm_14_e, alm_14_f, input_group_14);
z3_hint_symmetric_connection(alm_15_a, alm_15_b, input_group_15);
z3_hint_symmetric_connection(alm_15_c0, alm_15_d0, input_group_15);
z3_hint_symmetric_connection(alm_15_c1, alm_15_d1, input_group_15);
z3_hint_connection(alm_15_e, alm_15_f, input_group_15);
z3_hint_symmetric_connection(alm_16_a, alm_16_b, input_group_16);
z3_hint_symmetric_connection(alm_16_c0, alm_16_d0, input_group_16);
z3_hint_symmetric_connection(alm_16_c1, alm_16_d1, input_group_16);
z3_hint_connection(alm_16_e, alm_16_f, input_group_16);

z3_hint_group_with_polarity(
    output_group_0,
    %ALM_OUTPUTS_0,
    %ALM_OUTPUTS_1,
    %ALM_OUTPUTS_2,
    %ALM_OUTPUTS_3,
    %ALM_OUTPUTS_4,
    %ALM_OUTPUTS_5,
    %ALM_OUTPUTS_6,
    %ALM_OUTPUTS_7,
    %ALM_OUTPUTS_8,
    %ALM_OUTPUTS_9,
    %ALM_OUTPUTS_10,
    %ALM_OUTPUTS_11,
    %ALM_OUTPUTS_12,
    %ALM_OUTPUTS_13,
    %ALM_OUTPUTS_14,
    %ALM_OUTPUTS_15,
    %ALM_OUTPUTS_16
);

z3_hint_connection(
    dout_0,
    dout_1,
    dout_2,
    dout_3,
    output_group_0
);

z3_hint_lut_mask(alm_0, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_1, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_2, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_3, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_4, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_5, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_6, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_7, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_8, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_9, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_10, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_11, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_12, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_13, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_14, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_15, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_16, %LUT_MASK_FULL);

z3_hint_function(dout_0, 256'v0101010101010101111001011000010101001001000000011001100110000001001100100000000011000110110000000000110100000000111100101111000001010101010101011000010111100101000000010100100110000001100110010000000000110010110000001100011000000000000011011111000011110010);

z3_hint_function(dout_1, 256'v0011001100110011011000110001001111000111100010111000011111001011000011110011010100111111000010011111111111110000111111111111110000110011001100110001001101100011100010111100011111001011100001110011010100001111000010010011111111110000111111111111110011111111);

z3_hint_function(dout_2, 256'v0000111100001111000111110000111100111111000001110111111100000111111111111100001111111111111100111111111111111101111111111111111000001111000011110000111100011111000001110011111100000111011111111100001111111111111100111111111111111101111111111111111011111111);

z3_hint_function(dout_3, 256'v0000000011111111000000000011111100000000000111110000000000001111000000000000011100000000000000110000000000000001000000000000000000000000111111111000000011111111110000001111111111100000111111111111000011111111111110001111111111111100111111111111111011111111);

z3_hint_function(alm_16_cout, 0);

endmodule
