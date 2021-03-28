`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:47 10/27/2016 
// Design Name: 
// Module Name:    Instruction_mem 
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
module Instruction_mem(
input [63:0] PC,
output reg [31:0] ints
    );

reg [32:0] Mem[32:0];

initial begin

	Mem[0] = 32'b11111000010000010000000001000011;
	Mem[4] = 32'b10001011000001000000000001000101;
	Mem[8] = 32'b10101010000001010000000001100110;
	Mem[12] = 32'b11001011000000110000000010100111;
	Mem[16] = 32'b10110100000000000000000001100111;
	Mem[20] = 32'b10001010000001010000000010001000;
	Mem[24] = 32'b11111000000000000000000100100101;
	Mem[28] = 32'b10001011000000110000000001000101;
	Mem[32] = 32'b11111000000000000000000100100101;	
	
	end
	
always @(PC)
	begin
		assign ints = Mem[PC];
	end
endmodule
