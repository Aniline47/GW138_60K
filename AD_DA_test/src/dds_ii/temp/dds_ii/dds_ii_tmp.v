//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.10.03 (64-bit)
//Part Number: GW5AST-LV138PG484AC1/I0
//Device: GW5AST-138
//Device Version: B
//Created Time: Mon Mar 17 16:58:43 2025

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	DDS_II_DA your_instance_name(
		.clk_i(clk_i), //input clk_i
		.rst_n_i(rst_n_i), //input rst_n_i
		.sine_o(sine_o), //output [13:0] sine_o
		.data_valid_o(data_valid_o) //output data_valid_o
	);

//--------Copy end-------------------
