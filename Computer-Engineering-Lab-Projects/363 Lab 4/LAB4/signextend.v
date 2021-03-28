`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:29 10/23/2016 
// Design Name: 
// Module Name:    signextend 
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
module signextend(
input [31:0] inputbit,
output reg [63:0] outputbit
    );
always @(inputbit)
	begin
		 outputbit [31:0] = inputbit [31:0];
		 outputbit [63:32] = {32{inputbit[31]}};
	end
endmodule
