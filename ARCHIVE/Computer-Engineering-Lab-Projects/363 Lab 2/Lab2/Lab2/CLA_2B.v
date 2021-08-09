`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:50 09/25/2016 
// Design Name: 
// Module Name:    CLA_2B 
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
module CLA_2B(A,B,CIN,SUM,COUT);
	input[1:0] A,B;
	input CIN;
	output [1:0] SUM;
	output COUT;
	wire [1:0] G,P,C;
	assign P[0]=(A[0]^B[0]),
		  P[1]=(A[1]^B[1]);
	assign G[0]=(A[0]&B[0]),
		  G[1]=(A[1]&B[1]);
	assign C[0]=CIN,
		  C[1]=g0|(P[0]&cin);
	assign SUM[0]=P[0]^C[0],
			SUM[1]=P[1]^C[1];
	assign COUT=C[1];
			 
endmodule

CLA_2B s1 ( .A( A[1:1] )