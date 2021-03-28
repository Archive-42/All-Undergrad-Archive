`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:26 10/13/2016 
// Design Name: 
// Module Name:    MUX4 
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
module MUX4(
input [63:0] ReadData,
input [63:0] ALUresult,
input MemtoReg,
output reg [63:0] mux4out 
    );
always @(ReadData, ALUresult, MemtoReg, mux4out)
	begin
		if (MemtoReg == 1)
			begin
				assign mux4out = ReadData;
			end
		else
			begin
				assign mux4out = ALUresult;
			end
	end
endmodule
