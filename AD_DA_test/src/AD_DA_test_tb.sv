//~ `New testbench
`timescale  1ns / 1ps

module tb_AD_DA_test;

// AD_DA_test Parameters
parameter PERIOD  = 10;


// AD_DA_test Inputs
logic   clk                           = 0 ;
logic   rst_n                         = 0 ;
logic   [1:0]  clk_in_ad_1            = 0 ;
logic   [1:0]  clk_in_ad_2            = 0 ;
logic   [11:0]  ad_data_in_1          = 0 ;
logic   [11:0]  ad_data_in_2          = 0 ;

// AD_DA_test Outputs
logic  clk_out_p_ad_1                     ;
logic  clk_out_n_ad_1                     ;
logic  clk_out_p_ad_2                     ;
logic  clk_out_n_ad_2                     ;
logic  clk_out_p_da_1                     ;
logic  clk_out_n_da_1                     ;
logic  [13:0] da_data_out_1               ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

AD_DA_test  u_AD_DA_test (
    .clk                  ( clk                          ),
    .rst_n                ( rst_n                        ),
    .clk_in_ad_1          ( clk_in_ad_1           [1:0]  ),
    .clk_in_ad_2          ( clk_in_ad_2           [1:0]  ),
    .ad_data_in_1         ( ad_data_in_1          [11:0] ),
    .ad_data_in_2         ( ad_data_in_2          [11:0] ),

    .clk_out_p_ad_1       (  clk_out_p_ad_1              ),
    .clk_out_n_ad_1       (  clk_out_n_ad_1              ),
    .clk_out_p_ad_2       (  clk_out_p_ad_2              ),
    .clk_out_n_ad_2       (  clk_out_n_ad_2              ),
    .clk_out_p_da_1       (  clk_out_p_da_1              ),
    .clk_out_n_da_1       (  clk_out_n_da_1              ),
    .da_data_out_1        (  da_data_out_1               )
);

initial
begin
    #1000
    $stop;
end

endmodule