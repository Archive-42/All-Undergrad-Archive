`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:49:53 09/15/2016
// Design Name:   Sixty_Four_Bit_Adder
// Module Name:   H:/363/Lab2/V2/Test.v
// Project Name:  V2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sixty_Four_Bit_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [64:0] SUM;
	wire CARRY;

	// Instantiate the Unit Under Test (UUT)
	Sixty_Four_Bit_Adder uut (
		.A(A), 
		.B(B), 
		.SUM(SUM), 
		.CARRY(CARRY)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

