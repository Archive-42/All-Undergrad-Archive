`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:34 10/20/2016 
// Design Name: 
// Module Name:    MemoryData 
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
module MemoryData(
	input [63:0] Address,
	input [63:0] WriteData,
	input MemRead,
	input MemWrite,
	output reg [63:0] outputMem
	);
	


reg [63:0] Memory[63:0];

    integer i;
	initial begin   
    for (i = 0; i < 4096; i = i+1) 
	     Memory[i] = 2 ;
	end
	 
always @(Address, WriteData, MemRead, MemWrite)
	begin
		if (MemWrite == 1) 
			begin
				Memory[Address] = WriteData;
			end
		if (MemRead == 1)
			begin
				outputMem <= Memory[Address];
			end
	end
endmodule
