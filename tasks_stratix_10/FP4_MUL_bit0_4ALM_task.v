module quartus_prj (
    dout,
    clk,
    din_A,
    din_B);

output  [0:0] dout;
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


wire dout_0;
assign dout[0] = dout_0;


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


z3_hint_group(input_group_0, %CONSTS, %INPUTS);
z3_hint_group(input_group_1, %CONSTS, %INPUTS, %ALM_OUTPUTS_0);
z3_hint_group(input_group_2, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1);
z3_hint_group(input_group_3, %CONSTS, %INPUTS, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2);



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


z3_hint_group_with_polarity(output_group_0, %ALM_OUTPUTS_0, %ALM_OUTPUTS_1, %ALM_OUTPUTS_2, %ALM_OUTPUTS_3);
z3_hint_connection(dout_0, output_group_0);

z3_hint_lut_mask(alm_0, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_1, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_2, %LUT_MASK_FULL);
z3_hint_lut_mask(alm_3, %LUT_MASK_FULL);

z3_hint_function(dout_0, 256'v0000000000000000001010100010101001010101010101010010101000101010010101000101010000101001001010010101000001010000001001000010010000000000000000000010101000101010010101010101010100101010001010100101010001010100001010010010100101010000010100000010010000100100);

z3_hint_function(alm_3_cout, 0);

endmodule
