`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:19:36 10/06/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
input [63:0] A,
input [63:0] B,
input [3:0]s0,
output reg [63:0] SUM,
output reg Zero
    );

always @ (s0)
begin
	if(s0==4'b0000)
		begin
			assign SUM = A&B;
				if (SUM == 1'b0)
					begin
						assign Zero = 1'b1;
					end
		end
	if(s0==4'b0001)
		begin
			assign SUM = A|B;
				if (SUM == 1'b0)
					begin
						assign Zero = 1'b1;
					end
		end
	if(s0==4'b0010)
		begin
			assign SUM = A+B;
				if (SUM == 1'b0)
					begin
						assign Zero = 1'b1;
					end
		end
	if(s0==4'b0110)
		begin
			assign SUM = A-B;
				if (SUM == 1'b0)
					begin
						assign Zero = 1'b1;
					end
		end
	if(s0==4'b0111)
		begin
			assign SUM = B;
			 if (SUM == 1'b0)
				begin
					assign Zero =1'b1;
				end
		end
end

endmodule
