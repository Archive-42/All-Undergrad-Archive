`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:25 11/17/2016 
// Design Name: 
// Module Name:    C 
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
module C(
input cout,
input clk,
input enable,
output reg cin
    );

always @ (clk) begin
if (enable ==1) begin
 cin <= cout;
end
end
endmodule
