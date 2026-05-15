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

assign dout[0] = alm_2_sumout0;

fourteennm_logic_module alm_0(
    .a(din_A[2]),
    .b(din_B[2]),
    .c0(din_B[3]),
    .d0(din_B[0]),
    .c1(din_A[1]),
    .d1(din_B[3]),
    .e(din_A[0]),
    .f(gnd),
    .cin(gnd),
    .sumout0(alm_0_sumout0),
    .sumout1(alm_0_sumout1),
    .cout(alm_0_cout),
    .lut5out0(alm_0_lut5out0),
    .lut5out1(alm_0_lut5out1),
    .lut6out(alm_0_lut6out));
defparam alm_0.lut_mask = 64'h4D089009DD44D4D4;

fourteennm_logic_module alm_1(
    .a(alm_0_sumout0),
    .b(alm_0_lut5out0),
    .c0(alm_0_sumout1),
    .d0(din_A[3]),
    .c1(alm_0_sumout1),
    .d1(alm_0_lut6out),
    .e(din_B[1]),
    .f(alm_0_sumout1),
    .cin(alm_0_cout),
    .sumout0(alm_1_sumout0),
    .sumout1(alm_1_sumout1),
    .cout(alm_1_cout),
    .lut5out0(alm_1_lut5out0),
    .lut5out1(alm_1_lut5out1),
    .lut6out(alm_1_lut6out));
defparam alm_1.lut_mask = 64'h84843A0B22E3887E;

fourteennm_logic_module alm_2(
    .a(alm_1_lut5out1),
    .b(alm_1_sumout1),
    .c0(alm_1_lut6out),
    .d0(alm_1_sumout0),
    .c1(vcc),
    .d1(din_B[3]),
    .e(din_A[2]),
    .f(din_B[1]),
    .cin(alm_1_cout),
    .sumout0(alm_2_sumout0),
    .sumout1(alm_2_sumout1),
    .cout(alm_2_cout),
    .lut5out0(alm_2_lut5out0),
    .lut5out1(alm_2_lut5out1),
    .lut6out(alm_2_lut6out));
defparam alm_2.lut_mask = 64'h000003440E02CD7D;

endmodule
