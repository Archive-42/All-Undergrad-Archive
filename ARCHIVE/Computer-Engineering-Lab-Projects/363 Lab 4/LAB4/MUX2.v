`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:09 10/13/2016 
// Design Name: 
// Module Name:    MUX2 
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
module MUX2(
input [63:0] Data2,
input [63:0] signext,
input ALUSrc,
output reg [63:0] mux2out
    );

always @ (Data2, signext, ALUSrc, mux2out)
	begin
		if (ALUSrc == 0)
			begin
				assign mux2out = Data2;
			end
		else
			begin
				assign mux2out = signext;
			end
	end

endmodule
