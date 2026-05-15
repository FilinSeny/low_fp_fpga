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

assign dout[0] = ~alm_3_sumout1;

fourteennm_logic_module alm_0(
    .a(din_B[1]),
    .b(din_B[0]),
    .c0(din_A[2]),
    .d0(din_B[2]),
    .c1(gnd),
    .d1(gnd),
    .e(gnd),
    .f(din_A[2]),
    .cin(gnd),
    .sumout0(alm_0_sumout0),
    .sumout1(alm_0_sumout1),
    .cout(alm_0_cout),
    .lut5out0(alm_0_lut5out0),
    .lut5out1(alm_0_lut5out1),
    .lut6out(alm_0_lut6out));
defparam alm_0.lut_mask = 64'hBDBBFF4B29B9B2B3;

fourteennm_logic_module alm_1(
    .a(din_A[0]),
    .b(din_B[0]),
    .c0(din_A[2]),
    .d0(din_B[1]),
    .c1(alm_1_lut6out),
    .d1(din_B[1]),
    .e(din_B[0]),
    .f(din_B[1]),
    .cin(alm_0_cout),
    .sumout0(alm_1_sumout0),
    .sumout1(alm_1_sumout1),
    .cout(alm_1_cout),
    .lut5out0(alm_1_lut5out0),
    .lut5out1(alm_1_lut5out1),
    .lut6out(alm_1_lut6out));
defparam alm_1.lut_mask = 64'hD433FEF4D2033FD6;

fourteennm_logic_module alm_2(
    .a(din_A[1]),
    .b(din_B[1]),
    .c0(alm_1_lut6out),
    .d0(vcc),
    .c1(din_A[0]),
    .d1(din_B[0]),
    .e(din_A[2]),
    .f(alm_1_lut5out1),
    .cin(alm_1_cout),
    .sumout0(alm_2_sumout0),
    .sumout1(alm_2_sumout1),
    .cout(alm_2_cout),
    .lut5out0(alm_2_lut5out0),
    .lut5out1(alm_2_lut5out1),
    .lut6out(alm_2_lut6out));
defparam alm_2.lut_mask = 64'h49A275AB0EBF9CC1;

fourteennm_logic_module alm_3(
    .a(alm_2_lut6out),
    .b(din_B[0]),
    .c0(alm_1_lut6out),
    .d0(din_B[2]),
    .c1(alm_1_lut6out),
    .d1(alm_2_sumout1),
    .e(din_A[2]),
    .f(din_A[1]),
    .cin(alm_2_cout),
    .sumout0(alm_3_sumout0),
    .sumout1(alm_3_sumout1),
    .cout(alm_3_cout),
    .lut5out0(alm_3_lut5out0),
    .lut5out1(alm_3_lut5out1),
    .lut6out(alm_3_lut6out));
defparam alm_3.lut_mask = 64'h00C00151A888D4EB;

endmodule
