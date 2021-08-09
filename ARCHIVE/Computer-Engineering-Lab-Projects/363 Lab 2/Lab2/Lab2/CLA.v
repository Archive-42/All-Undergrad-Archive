`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:02 09/27/2016 
// Design Name: 
// Module Name:    CLA 
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
module CLA(
	 input [1:0]A,
    input [1:0]B,
    input CARRY_IN,
    output [1:0]SUM,
    output CARRY_OUT
    );
wire P1, P2, G1, G2;

assign P1 = A[0] ^ B[0];
assign P2 = A[1] ^ B[1];
assign G1 = A[0] & B[0];
assign G2 = A[1] & B[1];

assign CARRY_IN = 64'b00000000000000000000000000000000000000000000000000000000000000000; 

assign SUM[0] = P1^CARRY_IN;
assign SUM[1] = P2^CARRY_IN;


assign CARRY_OUT = G1 | P1 & CARRY_IN;
endmodule
