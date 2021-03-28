`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:02 11/29/2016 
// Design Name: 
// Module Name:    WD 
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
module WD(
input [15:0] AC,
input clk,
input enable,
input [11:0] Aout
    );	 
always @ (clk) begin
	 if (enable==1) begin 
		MD.Memory[Aout] = AC;
	 end
end
endmodule
