`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:56 10/13/2016 
// Design Name: 
// Module Name:    MUX1 
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
module MUX1(
input [4:0] ins20to16,
input [4:0] ins4to0,
input Reg2loc,
output reg [4:0] mux1out
);
always @ (ins20to16, ins4to0, Reg2loc, mux1out)
	begin
		if (Reg2loc == 0)
			begin
				assign mux1out =  ins20to16;
			end
		else
			begin
			   assign mux1out = ins4to0;
			end
	end
endmodule
