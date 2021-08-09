`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:26 11/29/2016 
// Design Name: 
// Module Name:    CONTROL 
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
module CONTROL(
input [3:0] IR,
input pos,
output reg Mux1C,
output reg Mux2C,
output reg Mux3C,
output reg enableWD,
output reg enableRD,
output reg [2:0] ALUc,
output reg enableIR,
output reg enableMD,
output reg enableAC,
output reg enablePC,
output reg enableMA,
output reg enableC

    );
wire state;

always @(*) begin //++



   Mux3C <= 0;
	enableRD <= 1;
	
 

	 Mux2C <= 0;
	 enablePC <= 1;
	
	if (IR [3:1]== 3'b000) begin	//NOT
	   ALUc <= 3'b000;
		enableAC <= 1;
	   enableWD <= 1;
		 Mux3C <= 0;
		enableRD <= 1;
	end
	
	else begin //+
		
		if(IR [3:1] == 'b011) begin //INCA
			
			enableAC <= 1;
			enableWD <= 1;
			ALUc <= 3'b011;
			   Mux3C <= 0;
			enableRD <= 1;
		end
		
		else begin//-
			
			if (IR [3:1] == 3'b010) begin //JPA
				
		
				if (pos == 1) begin //GTZ?
					if (IR [0] == 1) begin
						Mux1C <= 0;
						Mux2C <= 2;
						Mux3C <= 1;
						enableMA <= 1;
						enablePC <= 1;
						enableMD <= 1;
						  Mux3C <= 0;
						enableRD <= 1;
					end
			
					else if (IR[0] == 0) begin
						Mux2C <= 1;
						enablePC <= 1;
						   Mux3C <= 0;
	enableRD <= 1;
					end
				end
		
				else if (pos == 0) begin
					   Mux3C <= 0;
	enableRD <= 1;
				end
				
			end
			
			else begin //*
			
				Mux1C <= 0;
				enableMA <= 1;
				if (IR [3:1] == 4'b1000) begin //STA
					
					
					
					if (IR [0] == 1) begin
						Mux3C <=1;
						Mux1C <= 1;
						enableWD <= 1;
						ALUc <= 3'b100;
						enableMD <=1;
						enableMA <=1;
						enableAC <=1;
						   Mux3C <= 0;
						enableRD <= 1;
					end
		
					else if (IR[0] == 0) begin
					   enableWD <= 1;
						ALUc <= 3'b100;
						enableAC <=1;
						   Mux3C <= 0;
						enableRD <= 1;
					end
				end
				
				else begin //1
					
					
					enableMD <= 1;
					Mux3C <=1;
					
					if (IR [0] == 1) begin//2
						enableMA <= 1;
						enableMD <= 1;
						Mux1C <= 1;
						Mux3C <=1;
						
						
						if (IR [3:1] == 3'b001) begin //ADC
							
							enableAC <=1;
							enableWD <= 1;
							ALUc <= 3'b001;
							   Mux3C <= 0;
							enableRD <= 1;
							enableC <= 1;
						end
						
						else begin
						enableWD <= 1;
							if (IR [3:1] == 3'b101) begin //LDA
								Mux2C <= 1;
								enableAC <=1;
								enableIR <=1;
								enablePC <=1;
								ALUc <= 3'b101;
								   Mux3C <= 0;
								enableRD <= 1;
							end
						end
					end//2
					
					else begin
						if (IR [3:1] == 3'b001) begin //ADC
							ALUc <= 3'b001;
							enableAC <=1;
							enableWD <= 1;
							   Mux3C <= 0;
						enableRD <= 1;
							enableC <=1;
						end
						
						else begin

						
							if (IR [3:1] == 3'b101) begin //LDA
								enableWD <= 1;
								enableAC <=1;
								Mux2C <=1;
								enableIR <=1;
								enablePC <=1;
								ALUc <= 3'b101;
								   Mux3C <= 0;
							enableRD <= 1;
							end
						end
					end
						
				end//1
			end //*
	end //- 				

				
				
		end//+
		
	end	//+
	

endmodule
