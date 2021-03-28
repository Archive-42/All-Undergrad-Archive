`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:48:09 10/06/2016
// Design Name:   ALU
// Module Name:   H:/363 LAB 3/LAB3/ALU_TEST.v
// Project Name:  LAB3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TEST;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;
	reg s0;
	reg s1;
	reg s2;
	reg s3;

	// Outputs
	wire [63:0] SUM;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.SUM(SUM)
	);

	initial begin
		// Initialize Inputs
		A = 64'b0010001001100000000111000000111000000000000000000001100000011001;
		B = 64'b0000000101010000000010000001100000000000000000000111100000000001;
		
		s0 = 0;
		s1 = 0;
		s2 = 0;
		s3 = 0;


		#100;
		A = 64'b0010001001100000000111000000111000000000000000000001100000011001;
		B = 64'b0000000101010000000010000001100000000000000000000111100000000001;
		s0 = 0;
		s1 = 0;
		s2 = 0;
		s3 = 1;
		
		#100;
		A = 64'b0010001001100000000111000000111000000000000000000001100000011001;
		B = 64'b0000000101010000000010000001100000000000000000000111100000000001;
		s0 = 0;
		s1 = 0;
		s2 = 1;
		s3 = 0;
		
		#100;
		A = 64'b0010001001100000000111000000111000000000000000000001100000011001;
		B = 64'b0000000101010000000010000001100000000000000000000111100000000001;
		s0 = 0;
		s1 = 1;
		s2 = 1;
		s3 = 0;
		
		#100;
		A = 64'b0010001001100000000111000000111000000000000000000001100000011001;
		B = 64'b0000000101010000000010000001100000000000000000000111100000000001;
		s0 = 0;
		s1 = 1;
		s2 = 1;
		s3 = 1;
		
		#100;
		A = 64'b0010001001100000000111000000111000000000000000000001100000011001;
		B = 64'b0000000101010000000010000001100000000000000000000111100000000001;
		s0 = 1;
		s1 = 1;
		s2 = 0;
		s3 = 0;


	end
      
endmodule

