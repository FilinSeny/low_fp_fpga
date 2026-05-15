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

assign dout[0] = alm_2_lut6out;

fourteennm_logic_module alm_0(
    .a(din_B[2]),
    .b(din_B[1]),
    .c0(din_A[2]),
    .d0(din_A[0]),
    .c1(din_A[2]),
    .d1(din_B[0]),
    .e(vcc),
    .f(din_A[2]),
    .cin(gnd),
    .sumout0(alm_0_sumout0),
    .sumout1(alm_0_sumout1),
    .cout(alm_0_cout),
    .lut5out0(alm_0_lut5out0),
    .lut5out1(alm_0_lut5out1),
    .lut6out(alm_0_lut6out));
defparam alm_0.lut_mask = 64'h6A49B43B9706C0A4;

fourteennm_logic_module alm_1(
    .a(alm_0_sumout1),
    .b(alm_0_sumout0),
    .c0(alm_0_lut6out),
    .d0(alm_0_lut6out),
    .c1(din_A[1]),
    .d1(alm_0_lut5out0),
    .e(vcc),
    .f(alm_0_lut6out),
    .cin(alm_0_cout),
    .sumout0(alm_1_sumout0),
    .sumout1(alm_1_sumout1),
    .cout(alm_1_cout),
    .lut5out0(alm_1_lut5out0),
    .lut5out1(alm_1_lut5out1),
    .lut6out(alm_1_lut6out));
defparam alm_1.lut_mask = 64'hA17EA80E325C842A;

fourteennm_logic_module alm_2(
    .a(alm_1_lut6out),
    .b(alm_1_sumout0),
    .c0(alm_0_lut6out),
    .d0(alm_0_sumout1),
    .c1(din_A[3]),
    .d1(din_B[3]),
    .e(alm_0_lut5out0),
    .f(alm_1_sumout1),
    .cin(alm_1_cout),
    .sumout0(alm_2_sumout0),
    .sumout1(alm_2_sumout1),
    .cout(alm_2_cout),
    .lut5out0(alm_2_lut5out0),
    .lut5out1(alm_2_lut5out1),
    .lut6out(alm_2_lut6out));
defparam alm_2.lut_mask = 64'h5005711785F455FD;

endmodule
