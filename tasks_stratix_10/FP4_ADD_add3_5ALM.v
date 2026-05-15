module quartus_prj (
	dout,
    clk,
	din_A,
	din_B);

output  [0:0] dout;
input 	clk;
input  [3:0] din_A;
input  [3:0] din_B;


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

wire alm_0_sumout0;
wire alm_0_sumout1;
wire alm_0_lut5out0;
wire alm_0_lut5out1;
wire alm_0_lut6out;
wire alm_0_cout;
wire alm_1_sumout0;
wire alm_1_sumout1;
wire alm_1_lut5out0;
wire alm_1_lut5out1;
wire alm_1_lut6out;
wire alm_1_cout;
wire alm_2_sumout0;
wire alm_2_sumout1;
wire alm_2_lut5out0;
wire alm_2_lut5out1;
wire alm_2_lut6out;
wire alm_2_cout;
wire alm_3_sumout0;
wire alm_3_sumout1;
wire alm_3_lut5out0;
wire alm_3_lut5out1;
wire alm_3_lut6out;
wire alm_3_cout;
wire alm_4_sumout0;
wire alm_4_sumout1;
wire alm_4_lut5out0;
wire alm_4_lut5out1;
wire alm_4_lut6out;
wire alm_4_cout;

assign dout[0] = ~alm_4_sumout1;

fourteennm_logic_module alm_0(
    .a(din_A[3]),
    .b(din_B[2]),
    .c0(din_A[2]),
    .d0(din_B[0]),
    .c1(din_B[1]),
    .d1(din_B[0]),
    .e(vcc),
    .f(din_B[2]),
    .cin(gnd),
    .sumout0(alm_0_sumout0),
    .sumout1(alm_0_sumout1),
    .cout(alm_0_cout),
    .lut5out0(alm_0_lut5out0),
    .lut5out1(alm_0_lut5out1),
    .lut6out(alm_0_lut6out));
defparam alm_0.lut_mask = 64'hD1DD11FFCF6D709E;

fourteennm_logic_module alm_1(
    .a(din_B[3]),
    .b(din_B[1]),
    .c0(din_B[2]),
    .d0(din_B[1]),
    .c1(din_A[2]),
    .d1(din_A[1]),
    .e(din_B[0]),
    .f(din_B[0]),
    .cin(alm_0_cout),
    .sumout0(alm_1_sumout0),
    .sumout1(alm_1_sumout1),
    .cout(alm_1_cout),
    .lut5out0(alm_1_lut5out0),
    .lut5out1(alm_1_lut5out1),
    .lut6out(alm_1_lut6out));
defparam alm_1.lut_mask = 64'h96403222BAC41264;

fourteennm_logic_module alm_2(
    .a(vcc),
    .b(din_B[3]),
    .c0(din_B[2]),
    .d0(din_B[2]),
    .c1(din_B[2]),
    .d1(din_B[1]),
    .e(din_A[3]),
    .f(din_A[0]),
    .cin(alm_1_cout),
    .sumout0(alm_2_sumout0),
    .sumout1(alm_2_sumout1),
    .cout(alm_2_cout),
    .lut5out0(alm_2_lut5out0),
    .lut5out1(alm_2_lut5out1),
    .lut6out(alm_2_lut6out));
defparam alm_2.lut_mask = 64'h8002828A8AA0AA2A;

fourteennm_logic_module alm_3(
    .a(din_A[1]),
    .b(din_A[0]),
    .c0(din_A[3]),
    .d0(din_B[1]),
    .c1(din_B[2]),
    .d1(din_B[0]),
    .e(din_B[0]),
    .f(din_A[2]),
    .cin(alm_2_cout),
    .sumout0(alm_3_sumout0),
    .sumout1(alm_3_sumout1),
    .cout(alm_3_cout),
    .lut5out0(alm_3_lut5out0),
    .lut5out1(alm_3_lut5out1),
    .lut6out(alm_3_lut6out));
defparam alm_3.lut_mask = 64'hD88ED9ABF85E7A1E;

fourteennm_logic_module alm_4(
    .a(alm_0_lut6out),
    .b(alm_1_sumout1),
    .c0(alm_0_lut5out0),
    .d0(alm_3_lut5out1),
    .c1(alm_3_lut5out0),
    .d1(alm_0_sumout1),
    .e(vcc),
    .f(alm_3_lut5out0),
    .cin(alm_3_cout),
    .sumout0(alm_4_sumout0),
    .sumout1(alm_4_sumout1),
    .cout(alm_4_cout),
    .lut5out0(alm_4_lut5out0),
    .lut5out1(alm_4_lut5out1),
    .lut6out(alm_4_lut6out));
defparam alm_4.lut_mask = 64'h000032A20A8D02A5;

endmodule
