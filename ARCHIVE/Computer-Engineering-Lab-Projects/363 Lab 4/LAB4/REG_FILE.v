`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:03 10/13/2016 
// Design Name: 
// Module Name:    REG_FILE 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RegFile(
    input RegWrite,
    input [4:0] ReadReg1, ReadReg2, WriteReg,
    input [63:0] WriteData,
	 input clk,
	 input rst,
    output reg [63:0] ReadData1,
	 output reg [63:0] ReadData2
);  
    reg [63:0] Register[31:0]; 
	 
    integer i;
	 initial begin   
//    for (i = 0; i < 32; i = i+1) 
//	     Register[i] = 32'b0 ;
		Register [3] =0;
		Register [2] = 998001;
		Register [7] = 0;
	 end

    always @ (*) begin
           
            ReadData1 <= Register[2];
            ReadData2 <= Register[3];
				end
           
   always @(posedge clk)  begin       
				if (RegWrite) begin
                Register[WriteReg] = WriteData; 
               
            end   
				end
   
    
endmodule 
