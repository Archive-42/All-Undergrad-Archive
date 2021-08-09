`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:43:40 09/15/2016
// Design Name:   Sixty_Four_Bit_Adder
// Module Name:   H:/363/Lab2/Lab2/SIXTY4_TEST.v
// Project Name:  Lab2
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

module SIXTY4_TEST;

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
					 
        end
        
        initial
                $monitor( "A(%B) + B(%B)  =  SUM(%B %B)", A, B, CARRY, SUM ); // displays out put on console

                
        always @(A or B)                             //iterates through the 256 different combinations
                begin
                for ( i=0; i< 256; i = i + 1 ) 
                        #1 {A, B} = i; 
                        
                #10 $stop;
                end
      
endmodule

