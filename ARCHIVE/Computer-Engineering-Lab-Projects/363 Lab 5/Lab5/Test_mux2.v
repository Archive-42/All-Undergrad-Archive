`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:39:58 11/13/2016
// Design Name:   mux2
// Module Name:   H:/363 Lab 5/Lab5/Test_mux2.v
// Project Name:  Lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_mux2;

	reg [11:0] A;
	reg [11:0] B;
	reg [11:0] C;
	reg sel;
	// Outputs
	wire [11:0] mux2out;

	// Instantiate the Unit Under Test (UUT)
	mux2 uut (
		.A(A),
		.B(B),
		.C(C),
		.sel(sel),
		.mux2out(mux2out)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
      A = 254;
		B = 2142;
		C = 763421;
		sel = 1;
		// Add stimulus here

	end
      
endmodule

