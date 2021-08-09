`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 		 Xilinx
//
// Create Date:    10:05:26 01/31/05
// Design Name:    Stopwatch
// Module Name:    Stopwatch
// Project Name:   ISE In Depth Tutorial
// Target Device:  xc3s200-4ft256
// Tool versions:  ISE 7.1i
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module stopwatch(STRTSTOP, RESET, CLK, SEG_A, SEG_B, SEG_C, SEG_D, SEG_E, 
                 SEG_F, SEG_G, SEG_DP, AN);
  input STRTSTOP;
  input RESET;
  input CLK;
  output SEG_A;
  output SEG_B;
  output SEG_C;
  output SEG_D;
  output SEG_E;
  output SEG_F;
  output SEG_G;
  output SEG_DP;
  output [3:0] AN /* synthesis xc_loc = "e14,f14,g14,d14" */;
//exemplar attribute AN LOC e13,f14,g14,d14
//pragma attribute AN LOC e13,f14,g14,d14
//synthesis attribute LOC of AN is "e13 f14 g14 d14"

  wire [6:0] hundredthsout, tenthsout, onesout, tensout, minutesout;
  wire [3:0] hex2led_int1, hex2led_int2, hex2led_int3, hex2led_int4, hex2led_int5;
  wire clk_262144k, clk_int, clk_100, clk_en_int, rst_int, locked, strtstop_debounced;
  wire time_cnt_ce, ten_cnt_ce, ten_cnt_thresh1, ten_cnt_thresh2;

  assign ten_cnt_ce = clk_en_int & ten_cnt_thresh1;
  assign time_cnt_ce = ten_cnt_thresh2 & ten_cnt_ce;

// Place the Coregen module instantiation for ten_cnt here
//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
ten_cnt TENCNT_1 (
    .Q(hex2led_int1),
    .CLK(clk_100),
    .Q_THRESH0(ten_cnt_thresh1),
    .CE(clk_en_int),
    .AINIT(rst_int));

// INST_TAG_END ------ End INSTANTIATION Template ---------
//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
ten_cnt TENCNT_2 (
    .Q(hex2led_int2),
    .CLK(clk_100),
    .Q_THRESH0(ten_cnt_thresh2),
    .CE(ten_cnt_ce),
    .AINIT(rst_int));

// INST_TAG_END ------ End INSTANTIATION Template ---------

//Insert DCM1 instantiation here
dcm1 instance_name (
    .CLKIN_IN(CLK), 
    .RST_IN(RESET), 
    .CLKFX_OUT(clk_262144k), 
    .CLKIN_IBUFG_OUT(), 
    .CLK0_OUT(clk_int), 
    .LOCKED_OUT(locked)
    );

hex2led HEX2LED_1 (
    .HEX(hex2led_int1),
    .LED(hundredthsout));

hex2led HEX2LED_2 (
    .HEX(hex2led_int2),
    .LED(tenthsout));

hex2led HEX2LED_3 (
    .HEX(hex2led_int3),
    .LED(onesout));

hex2led HEX2LED_4 (
    .HEX(hex2led_int4),
    .LED(tensout));

hex2led HEX2LED_5 (
    .HEX(hex2led_int5),
    .LED(minutesout));

debounce DEBOUNCE_1 (
    .SIG_IN(STRTSTOP),
    .CLK(clk_100),
    .SIG_OUT(strtstop_debounced));

time_cnt TIMECNT_1 (
    .CLK(clk_100),
    .CE(time_cnt_ce),
    .CLR(rst_int),
    .SEC_LSB(hex2led_int3),
    .SEC_MSB(hex2led_int4),
    .MINUTES(hex2led_int5));

stmach_v STATEMACH_1 (
    .CLK(clk_100),
    .reset(RESET),
    .DCM_lock(locked),
    .strtstop(strtstop_debounced),
    .clken(clk_en_int),
    .rst(rst_int));

led_control LEDCONTROL_1 (
    .CLK(clk_int),
    .HUNDREDTHS({hundredthsout,1'b1}),
    .TENTHS({tenthsout,1'b1}),
    .ONES({onesout,1'b0}),
    .TENS({tensout,1'b1}),
    .MINUTES({minutesout,1'b0}),
    .AN(AN), 
    .SEVEN_SEG({SEG_G,SEG_F,SEG_E,SEG_D,SEG_C,SEG_B,SEG_A,SEG_DP}));

clk_div_262k CLKDIV262K_1 (
    .CLK(clk_262144k),
    .DIV_262144(clk_100));

endmodule
