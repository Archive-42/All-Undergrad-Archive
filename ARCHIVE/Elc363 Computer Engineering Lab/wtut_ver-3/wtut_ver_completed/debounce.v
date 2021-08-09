`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 		 Xilinx
//
// Create Date:    11:03:45 01/31/05
// Design Name:    Stopwatch
// Module Name:    debounce
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
module debounce(SIG_IN, CLK, SIG_OUT);
  input SIG_IN;
  input CLK;
  output SIG_OUT;

  reg int1, int2, int3;

  always @(posedge CLK)
  begin
    int1 <= SIG_IN;
	 int2 <= int1;
	 int3 <= int2;
  end

  assign SIG_OUT = SIG_IN | int1 | int2 | int3;

endmodule
