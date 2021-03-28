`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:43 11/17/2016 
// Design Name: 
// Module Name:    mux1 
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
module mux1(
input [11:0] MD,
input [11:0] IR,
input sel,
output reg[11:0] mux1out
    );

always @ (MD or IR or sel)
	case (sel)
		0: mux1out = IR;
		1: mux1out = MD;
	endcase
endmodule
