module gw_gao(
    \u12_ad_data_in_1[11] ,
    \u12_ad_data_in_1[10] ,
    \u12_ad_data_in_1[9] ,
    \u12_ad_data_in_1[8] ,
    \u12_ad_data_in_1[7] ,
    \u12_ad_data_in_1[6] ,
    \u12_ad_data_in_1[5] ,
    \u12_ad_data_in_1[4] ,
    \u12_ad_data_in_1[3] ,
    \u12_ad_data_in_1[2] ,
    \u12_ad_data_in_1[1] ,
    \u12_ad_data_in_1[0] ,
    \u12_ad_data_in_2[11] ,
    \u12_ad_data_in_2[10] ,
    \u12_ad_data_in_2[9] ,
    \u12_ad_data_in_2[8] ,
    \u12_ad_data_in_2[7] ,
    \u12_ad_data_in_2[6] ,
    \u12_ad_data_in_2[5] ,
    \u12_ad_data_in_2[4] ,
    \u12_ad_data_in_2[3] ,
    \u12_ad_data_in_2[2] ,
    \u12_ad_data_in_2[1] ,
    \u12_ad_data_in_2[0] ,
    \clk_in_ad_1[0] ,
    clk,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \u12_ad_data_in_1[11] ;
input \u12_ad_data_in_1[10] ;
input \u12_ad_data_in_1[9] ;
input \u12_ad_data_in_1[8] ;
input \u12_ad_data_in_1[7] ;
input \u12_ad_data_in_1[6] ;
input \u12_ad_data_in_1[5] ;
input \u12_ad_data_in_1[4] ;
input \u12_ad_data_in_1[3] ;
input \u12_ad_data_in_1[2] ;
input \u12_ad_data_in_1[1] ;
input \u12_ad_data_in_1[0] ;
input \u12_ad_data_in_2[11] ;
input \u12_ad_data_in_2[10] ;
input \u12_ad_data_in_2[9] ;
input \u12_ad_data_in_2[8] ;
input \u12_ad_data_in_2[7] ;
input \u12_ad_data_in_2[6] ;
input \u12_ad_data_in_2[5] ;
input \u12_ad_data_in_2[4] ;
input \u12_ad_data_in_2[3] ;
input \u12_ad_data_in_2[2] ;
input \u12_ad_data_in_2[1] ;
input \u12_ad_data_in_2[0] ;
input \clk_in_ad_1[0] ;
input clk;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \u12_ad_data_in_1[11] ;
wire \u12_ad_data_in_1[10] ;
wire \u12_ad_data_in_1[9] ;
wire \u12_ad_data_in_1[8] ;
wire \u12_ad_data_in_1[7] ;
wire \u12_ad_data_in_1[6] ;
wire \u12_ad_data_in_1[5] ;
wire \u12_ad_data_in_1[4] ;
wire \u12_ad_data_in_1[3] ;
wire \u12_ad_data_in_1[2] ;
wire \u12_ad_data_in_1[1] ;
wire \u12_ad_data_in_1[0] ;
wire \u12_ad_data_in_2[11] ;
wire \u12_ad_data_in_2[10] ;
wire \u12_ad_data_in_2[9] ;
wire \u12_ad_data_in_2[8] ;
wire \u12_ad_data_in_2[7] ;
wire \u12_ad_data_in_2[6] ;
wire \u12_ad_data_in_2[5] ;
wire \u12_ad_data_in_2[4] ;
wire \u12_ad_data_in_2[3] ;
wire \u12_ad_data_in_2[2] ;
wire \u12_ad_data_in_2[1] ;
wire \u12_ad_data_in_2[0] ;
wire \clk_in_ad_1[0] ;
wire clk;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i(\clk_in_ad_1[0] ),
    .trig1_i(clk),
    .data_i({\u12_ad_data_in_1[11] ,\u12_ad_data_in_1[10] ,\u12_ad_data_in_1[9] ,\u12_ad_data_in_1[8] ,\u12_ad_data_in_1[7] ,\u12_ad_data_in_1[6] ,\u12_ad_data_in_1[5] ,\u12_ad_data_in_1[4] ,\u12_ad_data_in_1[3] ,\u12_ad_data_in_1[2] ,\u12_ad_data_in_1[1] ,\u12_ad_data_in_1[0] ,\u12_ad_data_in_2[11] ,\u12_ad_data_in_2[10] ,\u12_ad_data_in_2[9] ,\u12_ad_data_in_2[8] ,\u12_ad_data_in_2[7] ,\u12_ad_data_in_2[6] ,\u12_ad_data_in_2[5] ,\u12_ad_data_in_2[4] ,\u12_ad_data_in_2[3] ,\u12_ad_data_in_2[2] ,\u12_ad_data_in_2[1] ,\u12_ad_data_in_2[0] }),
    .clk_i(\clk_in_ad_1[0] )
);

endmodule
