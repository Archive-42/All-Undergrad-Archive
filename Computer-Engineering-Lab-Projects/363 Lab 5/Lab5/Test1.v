`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:08:46 11/10/2016
// Design Name:   MD
// Module Name:   H:/363 Lab 5/Lab5/Test1.v
// Project Name:  Lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test1;

	// Inputs
	reg [15:0] RD;

	// Outputs
	wire [11:0] inb;

	// Instantiate the Unit Under Test (UUT)
	MD uut (
		.RD(RD), 
		.inb(inb)
	);

	initial begin
		// Initialize Inputs
		RD = 16'b1110100100111001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

