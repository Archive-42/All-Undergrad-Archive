`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:03 09/22/2016 
// Design Name: 
// Module Name:    twoBitLookAheadAdder 
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
module twoBitLookAheadAdder(
	output [1:0]SUM,
	output Cout, PG, GG,
	input [1:0] A,B,
	input Carryin
    );
	 
	wire [1:0] G,P,C;
	
	assign G = A & B;
	assign P = A ^ B;
	assign C[0] = Cin;
	assign C[1] = G[0] | (P[0] & C[0]);


endmodule
