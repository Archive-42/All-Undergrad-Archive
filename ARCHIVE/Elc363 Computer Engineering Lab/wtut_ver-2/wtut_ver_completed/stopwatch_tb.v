`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:			Xilinx 
//
// Create Date:   15:45:44 02/05/2005
// Design Name:   stopwatch
// Module Name:   stopwatch_tb.v
// Project Name:  ISE In-Depth Tutorial
// Target Device: xc3s200-4ft256 
// Tool versions: ISE 7.1i 
// Description: 
//
// Verilog Test Fixture created by ISE for module: stopwatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stopwatch_tb;

	// Inputs
	reg STRTSTOP;
	reg RESET;
	reg CLK;

	// Outputs
	wire SEG_A;
	wire SEG_B;
	wire SEG_C;
	wire SEG_D;
	wire SEG_E;
	wire SEG_F;
	wire SEG_G;
	wire SEG_DP;
	wire [3:0] AN;

	// Instantiate the Unit Under Test (UUT)
	stopwatch uut (
		.STRTSTOP(STRTSTOP), 
		.RESET(RESET), 
		.CLK(CLK), 
		.SEG_A(SEG_A), 
		.SEG_B(SEG_B), 
		.SEG_C(SEG_C), 
		.SEG_D(SEG_D), 
		.SEG_E(SEG_E), 
		.SEG_F(SEG_F), 
		.SEG_G(SEG_G), 
		.SEG_DP(SEG_DP), 
		.AN(AN)
	);

	initial begin
		// Initialize Inputs
		STRTSTOP = 0;
		RESET = 1;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
   end    
		// Add stimulus here
		//define clock 
   always begin
		#10 CLK = ~CLK;
   end

		//Stimulus for RESET and STRTSTOP
	initial begin
		#150 RESET = 0;
		#200 STRTSTOP = 1;
   	#3000 $finish;
	end
      
endmodule

