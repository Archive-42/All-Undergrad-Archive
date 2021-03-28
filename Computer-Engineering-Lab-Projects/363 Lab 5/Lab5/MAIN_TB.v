`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:37:29 11/30/2016
// Design Name:   MAIN
// Module Name:   H:/363 Lab 5/Lab5/MAIN_TB.v
// Project Name:  Lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MAIN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MAIN_TB;

	// Inputs
	reg clk;
	reg reset;
	reg gtz;

	// Outputs
	wire [15:0] ALU;
	wire [15:0] MD;
	wire [15:0] IR;
	wire [15:0] AC;
	wire [11:0] mux1out;
	wire [11:0] mux2out;
	wire [11:0] mux3out;
	wire [11:0] PC;
	wire [11:0] MA;

	// Instantiate the Unit Under Test (UUT)
	MAIN uut (
		.clk(clk), 
		.reset(reset),
		.gtz(gtz),
		.ALU(ALU), 
		.MD(MD), 
		.IR(IR), 
		.AC(AC), 
		.mux1out(mux1out), 
		.mux2out(mux2out), 
		.mux3out(mux3out), 
		.PC(PC), 
		.MA(MA)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		gtz = 1;
		// Wait 100 ns for global reset to finish
		#100;
		end	

        
		// Add stimulus here
		always begin
		clk=1;
		#100;
		clk=0;
		#100;
		end

      
endmodule


