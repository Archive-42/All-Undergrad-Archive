`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 		 Xilinx
//
// Create Date:    09:57:48 02/01/05
// Design Name:    Stopwatch
// Module Name:    hex2led
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
module hex2led(HEX, LED);
  input [3:0] HEX;
  output [6:0] LED;

  reg [6:0] LED;

// 7-segment encoding
//      0
//     ---
//  5 |   | 1
//     --- <--6
//  4 |   | 2
//     ---
//      3

   always @(HEX)
      case (HEX)
          4'b0001 : LED = 7'b1111001;   // 1
          4'b0010 : LED = 7'b0100100;   // 2
          4'b0011 : LED = 7'b0110000;   // 3
          4'b0100 : LED = 7'b0011001;   // 4
          4'b0101 : LED = 7'b0010010;   // 5
          4'b0110 : LED = 7'b0000010;   // 6
          4'b0111 : LED = 7'b1111000;   // 7
          4'b1000 : LED = 7'b0000000;   // 8
          4'b1001 : LED = 7'b0010000;   // 9
          4'b1010 : LED = 7'b0001000;   // A
          4'b1011 : LED = 7'b0000011;   // b
          4'b1100 : LED = 7'b1000110;   // C
          4'b1101 : LED = 7'b0100001;   // d
          4'b1110 : LED = 7'b0000110;   // E
          4'b1111 : LED = 7'b0001110;   // F
          default : LED = 7'b1000000;   // 0
      endcase


endmodule
