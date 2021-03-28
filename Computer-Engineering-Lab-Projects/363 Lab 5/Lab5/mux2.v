`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:18 11/13/2016 
// Design Name: 
// Module Name:    mux2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux2(
input [11:0] A,
input [11:0] B,
input [11:0] C,
input sel,
output reg [11:0] mux2out
    );
	 
always @ (A or B or C or sel)
	case (sel)
		0: mux2out = A;
		1: mux2out = B;
		2: mux2out = C;
	endcase


endmodule
