`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:08 11/28/2016 
// Design Name: 
// Module Name:    mux3 
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
module mux3(
input [11:0] PC,
input [11:0] MA,
input sel,
output reg[11:0] mux3out
    );

always @ (PC or MA or sel)begin
	case (sel)
		0: mux3out = PC;
		1: mux3out = MA;
	endcase
end

endmodule 