`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:59 11/02/2016
// Design Name:   Main
// Module Name:   H:/LAB 4/LAB4/TB1.v
// Project Name:  LAB4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB1;

	//Inputs
	reg [63:0] in;
	reg clk;
	reg rst;

	// Outputs
	//wire ;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
//		.in(in),
//		.clk(clk),
//		.rst(rst)
	
	);

	initial begin
		// Initialize Inputs
		in =  32'b00000000000000000000000000000000;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
	   #100;
        
		// Add stimulus here

	end
	
	always  begin
		clk = !clk;
		#100;
	end
      
endmodule

