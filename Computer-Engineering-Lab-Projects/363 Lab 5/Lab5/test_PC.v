`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:41:37 11/28/2016
// Design Name:   PC
// Module Name:   H:/363 Lab 5/Lab5/test_PC.v
// Project Name:  Lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_PC;

	// Inputs
	reg [15:0] muxin;

	// Outputs
	wire [15:0] PCout;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.muxin(muxin), 
		.PCout(PCout)
	);

	initial begin
		// Initialize Inputs
		muxin = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
      muxin = 1;
		#100;
      muxin = 2;
		#100;
      muxin = 3;
		#100;
      muxin = 4;
		#100;
      muxin = 5;
		// Add stimulus here

	end
      
endmodule

