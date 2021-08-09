`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:47:25 11/17/2016 
// Design Name: 
// Module Name:    AC 
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
module AC(
input [15:0] y,
input clk,
input enable,
output reg [15:0] ACout
    );

always @ (clk) begin
	if (enable == 1) begin
		 ACout <= y;
	end
end

endmodule
