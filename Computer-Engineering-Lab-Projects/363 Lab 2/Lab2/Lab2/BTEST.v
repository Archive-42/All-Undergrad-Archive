`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:10:55 09/28/2016
// Design Name:   Behavioral_S4
// Module Name:   H:/363/Lab2/Lab2/BTEST.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Behavioral_S4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BTEST;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [63:0] SUM;

	// Instantiate the Unit Under Test (UUT)
	Behavioral_S4 uut (
		.A(A), 
		.B(B), 
		.SUM(SUM)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 64'b0000000000000000000010000000000000000000000000000000000100000001;
		B = 64'b0000000000100000000000000000000000000000000000000000000000000010;

		#100;
		
		A = 64'b0000000000000000000000000000000000000000000000000000000101110000;
		B = 64'b0000000000000000000000000000000000000000000000000000011000001000;

		#100;
		
		A = 64'b0000000000000000000000000000000000000010000010011100000100001011;
		B = 64'b0000000000000000000000000000000000000000100000000001100000100100;
	end
      
endmodule

