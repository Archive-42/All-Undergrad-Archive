`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company:        Xilinx
//
// Create Date:    11:48:23 01/31/05
// Design Name:    Stopwatch
// Module Name:    time_cnt
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
module time_cnt(CLK, CE, CLR, SEC_LSB, SEC_MSB, MINUTES);
  input CLK;
  input CE;
  input CLR;
  output [3:0] SEC_LSB;
  output [3:0] SEC_MSB;
  output [3:0] MINUTES;

  reg [3:0] ones_cnt;
  reg [2:0]	tens_cnt;
  reg [3:0] mins_cnt;

// change psedge to posedge
  always @(psedge CLK or posedge CLR)
  begin
    if (CLR)
      ones_cnt <= 0;
    else if (CE) begin
      if (ones_cnt == 4'd9)
        ones_cnt <= 4'd0;
      else
        ones_cnt <= ones_cnt + 1'd1;
    end // if (CE)
  end  //always

  always @(posedge CLK or posedge CLR)
  begin
    if (CLR)
      tens_cnt <= 0;
    else if (ones_cnt == 9 && CE == 1) begin
      if (tens_cnt == 5)
        tens_cnt <= 0;
      else
        tens_cnt <= tens_cnt + 1;
    end // if (ones_cnt == 9)
  end  //always

  always @(posedge CLK or posedge CLR)
  begin
    if (CLR)
      mins_cnt <= 0;
    else if (tens_cnt == 5 && ones_cnt == 9 && CE == 1)	begin
      if (mins_cnt == 9)
        mins_cnt <= 0;
      else
        mins_cnt <= mins_cnt + 1;
    end // if (tens_cnt == 5 && ones_cnt == 9)
  end  //always

  assign SEC_LSB =  ones_cnt;
  assign SEC_MSB = {1'b0,tens_cnt};
  assign MINUTES = mins_cnt;

endmodule
