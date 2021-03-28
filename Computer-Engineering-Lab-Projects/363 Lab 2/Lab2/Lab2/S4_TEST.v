`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:33:13 09/15/2016
// Design Name:   sixty_four_bit_adder_1
// Module Name:   H:/363/Lab2/Lab2/S4_TEST.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sixty_four_bit_adder_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module S4_TEST;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [64:0] SUM;
	wire CARRY;
	integer i;
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

end
always @(A or B)                             //iterates through the different combinations
                begin
                for ( i=0; i<2048; i = i + 1 ) 
                        #1 {A, B} = i; 
                        
                //#1 $stop;
                end

	
      
endmodule

