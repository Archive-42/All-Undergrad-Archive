`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:07:11 09/28/2016
// Design Name:   Full_Adder
// Module Name:   H:/363/Lab2/Lab2/QWERTy.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module QWERTy;

	// Inputs
	reg A;
	reg B;
	reg CARRY_IN;

	// Outputs
	wire SUM;
	wire CARRY_OUT;

	// Instantiate the Unit Under Test (UUT)
	Full_Adder uut (
		.A(A), 
		.B(B), 
		.CARRY_IN(CARRY_IN), 
		.SUM(SUM), 
		.CARRY_OUT(CARRY_OUT)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		CARRY_IN = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 64'b0000000000000000000000000000000000000000000000000000000000000001;
		B = 64'b0000000000000000000000000000000000000000000000000000000000000010;
		
		#100;

	end
      
endmodule

