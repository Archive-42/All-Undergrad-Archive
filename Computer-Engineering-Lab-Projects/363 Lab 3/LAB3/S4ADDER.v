`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:09 09/29/2016 
// Design Name: 
// Module Name:    S4ADDER 
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


module S4ADDER(
input [63:0] A,
input [63:0] B,
output [64:0] SUM,
	 
output CARRY
    );
assign SUM = A-B;

endmodule
