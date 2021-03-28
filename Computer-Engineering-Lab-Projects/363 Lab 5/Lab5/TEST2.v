`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:32:14 11/10/2016
// Design Name:   ALU
// Module Name:   H:/363 Lab 5/Lab5/test2.v
// Project Name:  Lab5
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

module test2;
   //Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg cin;
	reg [2:0] s0;
	
	// Outputs
	wire [15:0] acc;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A),
		.B(B),
		.cin(cin),
		.s0(s0),
		.acc(acc)
	);

	initial begin
		// Initialize Inputs
		A=0;
		B=0;
		s0=0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 16'b1100100101110010;
		B = 16'b1110110100001100;
		s0 = 4'b000;
		#100;
		
		A = 16'b1100100101110010;
		B = 16'b1110110100001100;
		s0 = 4'b001;
		#100;
		
		A = 16'b1100100101110010;
		B = 16'b1110110100001100;
		s0 = 4'b010;
		#100;
		
		A = 16'b1100100101110010;
		B = 16'b1110110100001100;
		s0 = 4'b011;
		#100;
		
		A = 16'b1100100101110010;
		B = 16'b1110110100001100;
		s0 = 4'b100;
		#100;
	end

      
endmodule

