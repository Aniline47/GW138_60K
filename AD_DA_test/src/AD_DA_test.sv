module AD_DA_test (
    input logic clk,
    input logic rst_n,
    input logic [1:0] clk_in_ad_1,        //AD输出正负时钟1
    input logic [1:0] clk_in_ad_2,       //AD输出正负时钟2
    output logic clk_out_p_ad_1,
    output logic clk_out_n_ad_1,
    output logic clk_out_p_ad_2,
    output logic clk_out_n_ad_2,
    output logic clk_out_p_da_1,
    output logic clk_out_n_da_1,
    output logic [13:0] da_data_out_1,
    input logic [11:0] i12_ad_data_in_1,
    input logic [11:0] i12_ad_data_in_2
);
    logic clk_out_ad;
    logic clk_out_da;
    logic [13:0] sine_o;

    logic [11:0] u12_ad_data_in_1;
    logic [11:0] u12_ad_data_in_2;

    Gowin_PLL_AD LTC2220_PLL(
        .clkout0(clk_out_ad), //output clkout0
        .clkin(clk) //input clkin
    );
    
    Gowin_PLL_DA AD9744_PLL(
        .clkout0(clk_out_da), //output clkout0
        .clkin(clk) //input clkin
    );
    
	DDS_II_DA AD9744_DDS(
		.clk_i(clk_out_da), //input clk_i
		.rst_n_i(rst_n), //input rst_n_i
		.sine_o(sine_o), //output [13:0] sine_o
		.data_valid_o(data_valid_o) //output data_valid_o
	);
    
    assign clk_out_p_ad_1=clk_out_ad;
    assign clk_out_n_ad_1=~clk_out_ad;
    assign clk_out_p_ad_2=clk_out_ad;
    assign clk_out_n_ad_2=~clk_out_ad;
    assign clk_out_p_da_1=clk_out_da;
    assign clk_out_n_da_1=~clk_out_da;
    assign u12_ad_data_in_1=i12_ad_data_in_1-2048;
    assign u12_ad_data_in_2=i12_ad_data_in_2-2048;
    assign da_data_out_1=sine_o-8192;

endmodule