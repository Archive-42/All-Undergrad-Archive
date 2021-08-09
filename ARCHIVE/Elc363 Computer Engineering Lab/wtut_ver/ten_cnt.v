/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used             *
*     solely for design, simulation, implementation and creation of            *
*     design files limited to Xilinx devices or technologies. Use              *
*     with non-Xilinx devices or technologies is expressly prohibited          *
*     and immediately terminates your license.                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"            *
*     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                  *
*     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION          *
*     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION              *
*     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS                *
*     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                  *
*     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE         *
*     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY                 *
*     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                  *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS          *
*     FOR A PARTICULAR PURPOSE.                                                *
*                                                                              *
*     Xilinx products are not intended for use in life support                 *
*     appliances, devices, or systems. Use in such applications are            *
*     expressly prohibited.                                                    *
*                                                                              *
*     (c) Copyright 1995-2004 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// The synopsys directives "translate_off/translate_on" specified below are
// supported by XST, FPGA Compiler II, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

// You must compile the wrapper file ten_cnt.v when simulating
// the core, ten_cnt. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

`timescale 1ns/1ps

module ten_cnt(
	Q,
	CLK,
	Q_THRESH0,
	CE,
	AINIT);


output [3 : 0] Q;
input CLK;
output Q_THRESH0;
input CE;
input AINIT;

// synopsys translate_off

      C_COUNTER_BINARY_V6_0 #(
		"0000",	// c_ainit_val
		"0001",	// c_count_by
		0,	// c_count_mode
		"1001",	// c_count_to
		1,	// c_enable_rlocs
		0,	// c_has_aclr
		1,	// c_has_ainit
		0,	// c_has_aset
		1,	// c_has_ce
		0,	// c_has_iv
		0,	// c_has_l
		0,	// c_has_load
		1,	// c_has_q_thresh0
		0,	// c_has_q_thresh1
		0,	// c_has_sclr
		0,	// c_has_sinit
		0,	// c_has_sset
		0,	// c_has_thresh0
		0,	// c_has_thresh1
		0,	// c_has_up
		1,	// c_load_enable
		0,	// c_load_low
		0,	// c_pipe_stages
		1,	// c_restrict_count
		"0",	// c_sinit_val
		0,	// c_sync_enable
		1,	// c_sync_priority
		"1001",	// c_thresh0_value
		"1111111111111111",	// c_thresh1_value
		1,	// c_thresh_early
		4)	// c_width
	inst (
		.Q(Q),
		.CLK(CLK),
		.Q_THRESH0(Q_THRESH0),
		.CE(CE),
		.AINIT(AINIT),
		.L(),
		.LOAD(),
		.IV(),
		.UP(),
		.THRESH0(),
		.THRESH1(),
		.Q_THRESH1(),
		.SCLR(),
		.SINIT(),
		.SSET(),
		.ACLR(),
		.ASET());


// synopsys translate_on

// FPGA Express black box declaration
// synopsys attribute fpga_dont_touch "true"
// synthesis attribute fpga_dont_touch of ten_cnt is "true"

// XST black box declaration
// box_type "black_box"
// synthesis attribute box_type of ten_cnt is "black_box"

endmodule

