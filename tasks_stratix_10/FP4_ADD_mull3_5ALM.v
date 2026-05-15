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

assign dout[0] = alm_4_sumout1;

fourteennm_logic_module alm_0(
    .a(din_B[1]),
    .b(din_B[0]),
    .c0(din_A[3]),
    .d0(din_B[2]),
    .c1(din_A[1]),
    .d1(din_B[3]),
    .e(vcc),
    .f(din_A[3]),
    .cin(gnd),
    .sumout0(alm_0_sumout0),
    .sumout1(alm_0_sumout1),
    .cout(alm_0_cout),
    .lut5out0(alm_0_lut5out0),
    .lut5out1(alm_0_lut5out1),
    .lut6out(alm_0_lut6out));
defparam alm_0.lut_mask = 64'h045D4DBB6E634454;

fourteennm_logic_module alm_1(
    .a(din_A[0]),
    .b(din_A[0]),
    .c0(din_A[3]),
    .d0(din_B[3]),
    .c1(din_A[2]),
    .d1(din_A[0]),
    .e(din_A[3]),
    .f(din_A[1]),
    .cin(alm_0_cout),
    .sumout0(alm_1_sumout0),
    .sumout1(alm_1_sumout1),
    .cout(alm_1_cout),
    .lut5out0(alm_1_lut5out0),
    .lut5out1(alm_1_lut5out1),
    .lut6out(alm_1_lut6out));
defparam alm_1.lut_mask = 64'hC9D2BDBB4A2696DB;

fourteennm_logic_module alm_2(
    .a(din_B[1]),
    .b(din_B[0]),
    .c0(din_A[1]),
    .d0(din_B[3]),
    .c1(din_B[2]),
    .d1(din_B[2]),
    .e(din_A[3]),
    .f(din_B[2]),
    .cin(alm_1_cout),
    .sumout0(alm_2_sumout0),
    .sumout1(alm_2_sumout1),
    .cout(alm_2_cout),
    .lut5out0(alm_2_lut5out0),
    .lut5out1(alm_2_lut5out1),
    .lut6out(alm_2_lut6out));
defparam alm_2.lut_mask = 64'hC6A1F830F0EF0080;

fourteennm_logic_module alm_3(
    .a(vcc),
    .b(din_A[1]),
    .c0(din_B[3]),
    .d0(din_B[2]),
    .c1(vcc),
    .d1(din_B[3]),
    .e(din_A[3]),
    .f(din_B[3]),
    .cin(alm_2_cout),
    .sumout0(alm_3_sumout0),
    .sumout1(alm_3_sumout1),
    .cout(alm_3_cout),
    .lut5out0(alm_3_lut5out0),
    .lut5out1(alm_3_lut5out1),
    .lut6out(alm_3_lut6out));
defparam alm_3.lut_mask = 64'h9120451260F7A590;

fourteennm_logic_module alm_4(
    .a(alm_2_sumout1),
    .b(alm_2_sumout0),
    .c0(alm_3_sumout1),
    .d0(alm_1_sumout0),
    .c1(alm_1_lut6out),
    .d1(alm_3_lut6out),
    .e(vcc),
    .f(alm_0_lut6out),
    .cin(alm_3_cout),
    .sumout0(alm_4_sumout0),
    .sumout1(alm_4_sumout1),
    .cout(alm_4_cout),
    .lut5out0(alm_4_lut5out0),
    .lut5out1(alm_4_lut5out1),
    .lut6out(alm_4_lut6out));
defparam alm_4.lut_mask = 64'h002AC02E4040C91A;

endmodule
