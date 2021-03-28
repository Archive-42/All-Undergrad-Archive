`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:32 10/13/2016 
// Design Name: 
// Module Name:    MUX3 
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
module MUX3(
input [63:0] pc4,
input [63:0] ALUresult,
input uncbranch,
input branch,
input Zero,
output reg [63:0] mux3out
    );
always @(pc4, ALUresult, uncbranch, branch, Zero, mux3out)
	begin
		if ((branch==1 && Zero == 1) || (uncbranch==1 && Zero==0))
			begin
				assign mux3out = ALUresult;
			end
		else
			begin
				assign mux3out = pc4;
			end
	end
endmodule
