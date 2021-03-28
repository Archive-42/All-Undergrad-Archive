`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:48 10/23/2016 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
input [10:0] Opcode,
output reg Reg2Loc,
output reg Uncondbranch,
output reg Branch,
output reg MemRead,
output reg MemtoReg,
output reg [1:0] ALUOp,
output reg MemWrite,
output reg ALUSrc,
output reg RegWrite
    );
always @(Opcode)
	begin
		//R type
		if (Opcode == 11'b10001011000 | Opcode == 11'b11001011000 | Opcode == 11'b10001010000 | Opcode == 11'b10101010000) //R-Type
			begin
				assign Reg2Loc = 0;
				assign ALUSrc = 0;
				assign MemtoReg = 0;
				assign RegWrite = 1;
				assign MemRead = 0;
				assign MemWrite = 0;
				assign Branch = 0;
				assign ALUOp = 2'b10;
			end

		if (Opcode == 11'b11111000010) //LDUR
			begin
			//	assign Reg2Loc = 0;
				assign ALUSrc = 1;
				assign MemtoReg = 1;
				assign RegWrite = 1;
				assign MemRead = 1;
				assign MemWrite = 0;
				assign Branch = 0;
				assign ALUOp = 2'b00;
			end
		if (Opcode == 11'b11111000000) //STUR
			begin
				assign Reg2Loc = 1;
				assign ALUSrc = 1;
			//	assign MemtoReg = 1;
				assign RegWrite = 0;
				assign MemRead = 0;
				assign MemWrite = 1;
				assign Branch = 0;
				assign ALUOp = 2'b00;
			end
		if ((Opcode>>3) == 8'b10110100) //CBZ
			begin
				assign Reg2Loc = 1;
				assign ALUSrc = 0;
			//	assign MemtoReg = 1;
				assign RegWrite = 0;
				assign MemRead = 0;
				assign MemWrite = 0;
				assign Branch = 1;
				assign ALUOp = 2'b01;
			end
	end
endmodule
