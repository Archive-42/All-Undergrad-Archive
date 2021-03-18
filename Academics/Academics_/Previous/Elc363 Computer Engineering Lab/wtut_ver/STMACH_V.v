//  C:\TEMP\CASE\WTUT_VER\STMACH_V.v
//  Verilog created by Xilinx's StateCAD 7.1i
//  Wed Feb 02 13:38:11 2005

//  This Verilog code (for use with Synopsys) was generated using: 
//  binary encoded state assignment with structured code format.
//  Minimization is disabled,  implied else is enabled, 
//  and outputs are manually optimized.

`timescale 1s/1s

module stmach_v(CLK,DCM_lock,reset,strtstop,clken,rst,state_reset);

	input CLK;
	input DCM_lock,reset,strtstop;
	output clken,rst,state_reset;
	reg clken,rst,state_reset;
	reg [2:0] sreg;
	reg [2:0] next_sreg;

	`define clear 3'b000
	`define counting 3'b001
	`define start 3'b010
	`define stop 3'b011
	`define stopped 3'b100
	`define zero 3'b101


	always @(posedge CLK or posedge state_reset)
	begin
		if ( state_reset ) sreg = `clear;
		else sreg = next_sreg;
	end

	always @ (sreg or strtstop)
	begin
		clken = 0; rst = 0; 

		next_sreg=`clear;

		case (sreg)
			`clear : begin
				rst=1;
				clken=0;
				if ( 1'h1) begin
					next_sreg=`zero;
				end
				else begin
					next_sreg=`clear;
				end
			end
			`counting : begin
				clken=1;
				rst=0;
				if ( ~( ( ~strtstop  ) | ( strtstop  ) )) begin
					next_sreg=`counting;
				end
				if ( ~strtstop ) begin
					next_sreg=`counting;
				end
				if ( strtstop ) begin
					next_sreg=`stop;
				end
			end
			`start : begin
				clken=1;
				rst=0;
				if ( ~( ( strtstop  ) | ( ~strtstop  ) )) begin
					next_sreg=`start;
				end
				if ( strtstop ) begin
					next_sreg=`start;
				end
				if ( ~strtstop ) begin
					next_sreg=`counting;
				end
			end
			`stop : begin
				clken=0;
				rst=0;
				if ( ~( ( strtstop  ) | ( ~strtstop  ) )) begin
					next_sreg=`stop;
				end
				if ( strtstop ) begin
					next_sreg=`stop;
				end
				if ( ~strtstop ) begin
					next_sreg=`stopped;
				end
			end
			`stopped : begin
				clken=0;
				rst=0;
				if ( ~( ( ~strtstop  ) | ( strtstop  ) )) begin
					next_sreg=`stopped;
				end
				if ( ~strtstop ) begin
					next_sreg=`stopped;
				end
				if ( strtstop ) begin
					next_sreg=`start;
				end
			end
			`zero : begin
				clken=0;
				rst=0;
				if ( ~( ( ~strtstop  ) | ( strtstop  ) )) begin
					next_sreg=`zero;
				end
				if ( ~strtstop ) begin
					next_sreg=`zero;
				end
				if ( strtstop ) begin
					next_sreg=`start;
				end
			end
		endcase
	end

	always @(DCM_lock or reset)
	begin
		if ( reset  | ~DCM_lock )  state_reset=1;
		else state_reset=0;
	end
endmodule
