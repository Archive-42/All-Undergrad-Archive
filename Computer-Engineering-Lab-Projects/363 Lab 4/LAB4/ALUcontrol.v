`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:07 10/23/2016 
// Design Name: 
// Module Name:    ALUcontrol 
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
module ALUcontrol(
input [10:0] instruction,
input [1:0] ALUOp,
output reg [3:0] ALUcontrol
    );
	 
always @(instruction, ALUOp)
	begin
		if (ALUOp == 2'b10) //R-Type
			begin 
				case(instruction)
					11'b10001011000: ALUcontrol = 4'b0010; //add
					11'b11001011000: ALUcontrol = 4'b0110; //subtract
					11'b10001010000: ALUcontrol = 4'b0000; // AND
					11'b10101010000: ALUcontrol = 4'b0001; //OR
				endcase
			end
		if (ALUOp == 2'b01) //CBZ
			begin
				assign ALUcontrol = 4'b0111; //pass input b
			end
		if (ALUOp == 2'b00)
			begin
				assign ALUcontrol = 4'b0010; //Load and Store
			end
	end	
		
endmodule
