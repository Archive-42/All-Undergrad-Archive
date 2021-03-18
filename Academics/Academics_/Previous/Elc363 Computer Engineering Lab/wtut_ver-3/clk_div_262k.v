`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company:        Xilinx
//
// Create Date:    10:08:15 01/31/05
// Design Name:    Stopwatch
// Module Name:    clk_div_262k
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
module clk_div_262k(CLK, DIV_262144);
  input CLK;
  output DIV_262144;

  reg [15:0] div_32, div_1024, div_32768;
  reg [3:0] temp_div_262144;
  wire div_32_clk, div_1024_clk, div_32768_clk;

  always @(posedge CLK) div_32 <= {div_32[14:0], ~div_32[15]};
  always @(posedge div_32_clk) div_1024 <= {div_1024[14:0], ~div_1024[15]};
  always @(posedge div_1024_clk) div_32768 <= {div_32768[14:0], ~div_32768[15]};
  always @(posedge div_32768_clk) temp_div_262144 <= {temp_div_262144[2:0], ~temp_div_262144[3]};

  assign div_32_clk = div_32[15];
  assign div_1024_clk = div_1024[15];
  assign div_32768_clk = div_32768[15];
  assign DIV_262144 = temp_div_262144[3];

endmodule
