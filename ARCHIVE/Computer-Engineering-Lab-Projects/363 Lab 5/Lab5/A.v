`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:56 11/29/2016 
// Design Name: 
// Module Name:    A 
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
module A(
input [11:0] Ain,
input clk,
output reg [11:0] Aout
    );
always @ (clk) begin
	Aout <= Ain;
end

endmodule
