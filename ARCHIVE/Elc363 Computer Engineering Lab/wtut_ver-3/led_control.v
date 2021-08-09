`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 		 Xilinx
//
// Create Date:    17:30:24 01/31/05
// Design Name:    Stopwatch
// Module Name:    led_control
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
module led_control(CLK, HUNDREDTHS, TENTHS, ONES, TENS, MINUTES, AN, 
                   SEVEN_SEG);
  input CLK;
  input [7:0] HUNDREDTHS;
  input [7:0] TENTHS;
  input [7:0] ONES;
  input [7:0] TENS;
  input [7:0] MINUTES;
  output [3:0] AN;
  output [7:0] SEVEN_SEG;

  reg [3:0] AN;
  reg [7:0] SEVEN_SEG;
  reg [15:0] cnt;
  reg [7:0] d0, d1;
  wire [1:0] sel = cnt[15:14];

  always @(sel or TENS or MINUTES or ONES or TENTHS or HUNDREDTHS)
  begin
    case (sel)
	   2'b00 : 
		begin
		  AN = 4'b0111;
		  d0 = TENS;
		  d1 = MINUTES;
      end
		2'b01 : 
		begin
		  AN = 4'b1011;
		  d0 = ONES;
		  d1 = TENS;
      end
		2'b10 : 
		begin
		  AN = 4'b1101;
		  d0 = TENTHS;
		  d1 = ONES;
      end
		default : 
		begin
		  AN = 4'b1110;
		  d0 = HUNDREDTHS;
		  d1 = TENTHS;
      end
    endcase
  end //always

  always @(posedge CLK) cnt <= cnt + 1;

  always @(posedge CLK)
  begin
   if (MINUTES == 8'b10000000)
	  SEVEN_SEG <= d0;
   else
	  SEVEN_SEG <= d1;
  end //always

endmodule
