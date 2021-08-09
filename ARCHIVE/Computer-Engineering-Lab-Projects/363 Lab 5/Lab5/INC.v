`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:37 11/17/2016 
// Design Name: 
// Module Name:    INC 
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
module INC(
input [11:0] PC,
output reg [11:0] INCout
    );

always @(PC)begin
	 INCout <= PC + 1;
end

endmodule
