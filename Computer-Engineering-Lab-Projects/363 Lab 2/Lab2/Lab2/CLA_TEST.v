`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:04:45 09/27/2016
// Design Name:   S4_CLA
// Module Name:   H:/363/Lab2/Lab2/CLA_TEST.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: S4_CLA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_TEST;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [63:0] SUM;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	S4_CLA uut (
		.A(A), 
		.B(B), 
		.SUM(SUM)
	);


	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		
		#100;
		
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

