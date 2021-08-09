`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:57 11/17/2016 
// Design Name: 
// Module Name:    MA 
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
module MA(
input [11:0] A,
input clk,
input enable,
output reg [11:0] MAout
    );

always @ (clk) begin
if (enable == 1) begin
 MAout <= A;
end
end
endmodule
