// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Oct  9 14:37:32 2026
// Host        : LAPTOP-H65A9UPI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/DUONG/Desktop/da2_fake_alert/da2_emio_eth/da2_fake_alert.gen/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_0_0/design_1_gmii_to_rgmii_0_0_sim_netlist.v
// Design      : design_1_gmii_to_rgmii_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "gmii_to_rgmii_v4_1_21,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_gmii_to_rgmii_0_0
   (tx_reset,
    rx_reset,
    clkin,
    ref_clk_out,
    mmcm_locked_out,
    gmii_clk_125m_out,
    gmii_clk_25m_out,
    gmii_clk_2_5m_out,
    speed_mode,
    gmii_tx_clk,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_mdc,
    mdio_gem_i,
    mdio_gem_o,
    mdio_gem_t,
    link_status,
    clock_speed,
    duplex_status,
    rgmii_txd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_rxd,
    rgmii_rx_ctl,
    rgmii_rxc,
    mdio_phy_mdc,
    mdio_phy_i,
    mdio_phy_o,
    mdio_phy_t);
  input tx_reset;
  input rx_reset;
  input clkin;
  output ref_clk_out;
  output mmcm_locked_out;
  output gmii_clk_125m_out;
  output gmii_clk_25m_out;
  output gmii_clk_2_5m_out;
  output [1:0]speed_mode;
  output gmii_tx_clk;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  input mdio_gem_mdc;
  output mdio_gem_i;
  input mdio_gem_o;
  input mdio_gem_t;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output mdio_phy_mdc;
  input mdio_phy_i;
  output mdio_phy_o;
  output mdio_phy_t;

  wire clkin;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_gem_t;
  wire mdio_phy_i;
  wire mdio_phy_mdc;
  wire mdio_phy_o;
  wire mdio_phy_t;
  wire mmcm_locked_out;
  wire ref_clk_out;
  (* IBUF_LOW_PWR *) wire rgmii_rx_ctl;
  (* IBUF_LOW_PWR *) wire rgmii_rxc;
  (* IBUF_LOW_PWR *) wire [3:0]rgmii_rxd;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire rgmii_tx_ctl;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire rgmii_txc;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire [3:0]rgmii_txd;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;

  design_1_gmii_to_rgmii_0_0_support U0
       (.clkin(clkin),
        .clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_gem_t(mdio_gem_t),
        .mdio_phy_i(mdio_phy_i),
        .mdio_phy_mdc(mdio_phy_mdc),
        .mdio_phy_o(mdio_phy_o),
        .mdio_phy_t(mdio_phy_t),
        .mmcm_locked_out(mmcm_locked_out),
        .ref_clk_out(ref_clk_out),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode),
        .tx_reset(tx_reset));
endmodule

module design_1_gmii_to_rgmii_0_0_block
   (speed_mode,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_i,
    link_status,
    clock_speed,
    duplex_status,
    mdio_phy_mdc,
    mdio_phy_o,
    mdio_phy_t,
    gmii_tx_clk,
    rgmii_txc,
    rgmii_tx_ctl,
    rgmii_txd,
    tx_reset,
    rx_reset,
    ref_clk_out,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    mdio_gem_mdc,
    mdio_gem_o,
    mdio_gem_t,
    mdio_phy_i,
    gmii_clk_2_5m_out,
    gmii_clk_25m_out,
    gmii_clk_125m_out,
    rgmii_rxc,
    rgmii_rx_ctl,
    rgmii_rxd);
  output [1:0]speed_mode;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  output mdio_gem_i;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output mdio_phy_mdc;
  output mdio_phy_o;
  output mdio_phy_t;
  output gmii_tx_clk;
  output rgmii_txc;
  output rgmii_tx_ctl;
  output [3:0]rgmii_txd;
  input tx_reset;
  input rx_reset;
  input ref_clk_out;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  input mdio_gem_mdc;
  input mdio_gem_o;
  input mdio_gem_t;
  input mdio_phy_i;
  input gmii_clk_2_5m_out;
  input gmii_clk_25m_out;
  input gmii_clk_125m_out;
  input rgmii_rxc;
  input rgmii_rx_ctl;
  input [3:0]rgmii_rxd;

  wire I;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_or_2_5m;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_gem_t;
  wire mdio_phy_i;
  wire mdio_phy_mdc;
  wire mdio_phy_o;
  wire mdio_phy_t;
  wire ref_clk_out;
  wire rgmii_rx_ctl;
  wire rgmii_rx_ctl_ibuf;
  wire rgmii_rxc;
  wire rgmii_rxc_ibuf;
  wire [3:0]rgmii_rxd;
  wire [3:0]rgmii_rxd_ibuf;
  wire rgmii_tx_ctl;
  wire rgmii_tx_ctl_obuf;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire [3:0]rgmii_txd_obuf;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;

  (* C_DEVICE_TYPE = "0" *) 
  (* C_IDELAY_DELAY_VAL = "5'b00000" *) 
  (* C_ODELAY_DELAY_VAL = "5'b11111" *) 
  (* C_PHYADDR = "5'b01000" *) 
  (* C_RGMII_TXC_ODELAY_VAL = "0" *) 
  (* C_RGMII_TXC_SKEW_EN = "0" *) 
  (* C_VERSAL_SIM_DEVICE = "UNKNOWN_DEVICE" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_gmii_to_rgmii_0_0_gmii_to_rgmii_v4_1_21 design_1_gmii_to_rgmii_0_0_core
       (.clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_clk_90(1'b0),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .idelay_cntvalue_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .idelay_load_in(1'b1),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_gem_t(mdio_gem_t),
        .mdio_phy_i(mdio_phy_i),
        .mdio_phy_mdc(mdio_phy_mdc),
        .mdio_phy_o(mdio_phy_o),
        .mdio_phy_t(mdio_phy_t),
        .odelay_cntvalue_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .odelay_load_in(1'b1),
        .ref_clk(ref_clk_out),
        .rgmii_rx_ctl(rgmii_rx_ctl_ibuf),
        .rgmii_rxc(rgmii_rxc_ibuf),
        .rgmii_rxd(rgmii_rxd_ibuf),
        .rgmii_tx_ctl(rgmii_tx_ctl_obuf),
        .rgmii_txc(I),
        .rgmii_txd(rgmii_txd_obuf),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode),
        .tx_reset(tx_reset));
  (* XILINX_LEGACY_PRIM = "BUFGMUX" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:CE1,CE0 VCC:S1,S0 GND:IGNORE1,IGNORE0" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .IS_CE0_INVERTED(1'b1),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    i_bufgmux_gmii_clk
       (.CE0(speed_mode[1]),
        .CE1(speed_mode[1]),
        .I0(gmii_clk_25m_or_2_5m),
        .I1(gmii_clk_125m_out),
        .IGNORE0(1'b0),
        .IGNORE1(1'b0),
        .O(gmii_tx_clk),
        .S0(1'b1),
        .S1(1'b1));
  (* XILINX_LEGACY_PRIM = "BUFGMUX" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:CE1,CE0 VCC:S1,S0 GND:IGNORE1,IGNORE0" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .IS_CE0_INVERTED(1'b1),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    i_bufgmux_gmii_clk_25m_2_5m
       (.CE0(speed_mode[0]),
        .CE1(speed_mode[0]),
        .I0(gmii_clk_2_5m_out),
        .I1(gmii_clk_25m_out),
        .IGNORE0(1'b0),
        .IGNORE1(1'b0),
        .O(gmii_clk_25m_or_2_5m),
        .S0(1'b1),
        .S1(1'b1));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[0].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[0]),
        .O(rgmii_rxd_ibuf[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[1].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[1]),
        .O(rgmii_rxd_ibuf[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[2].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[2]),
        .O(rgmii_rxd_ibuf[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[3].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[3]),
        .O(rgmii_rxd_ibuf[3]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[0].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[0]),
        .O(rgmii_txd[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[1].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[1]),
        .O(rgmii_txd[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[2].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[2]),
        .O(rgmii_txd[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[3].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[3]),
        .O(rgmii_txd[3]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_rx_ctl_ibuf_i
       (.I(rgmii_rx_ctl),
        .O(rgmii_rx_ctl_ibuf));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_rxc_ibuf_i
       (.I(rgmii_rxc),
        .O(rgmii_rxc_ibuf));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_tx_ctl_obuf_i
       (.I(rgmii_tx_ctl_obuf),
        .O(rgmii_tx_ctl));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_txc_obuf_i
       (.I(I),
        .O(rgmii_txc));
endmodule

module design_1_gmii_to_rgmii_0_0_clocking
   (tx_reset,
    mmcm_locked_out,
    clkin_out,
    gmii_clk_125m_out,
    gmii_clk_25m_out,
    gmii_clk_2_5m_out,
    mmcm_adv_inst_0,
    clkin);
  output tx_reset;
  output mmcm_locked_out;
  output clkin_out;
  output gmii_clk_125m_out;
  output gmii_clk_25m_out;
  output gmii_clk_2_5m_out;
  input mmcm_adv_inst_0;
  input clkin;

  wire clk_10;
  wire clkfbout;
  wire clkin;
  wire clkin_out;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire mmcm_adv_inst_0;
  wire mmcm_locked_out;
  wire tx_reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("4"),
    .SIM_DEVICE("7SERIES")) 
    clk10_div_buf
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk_10),
        .O(gmii_clk_2_5m_out));
  LUT2 #(
    .INIT(4'hB)) 
    design_1_gmii_to_rgmii_0_0_core_i_1
       (.I0(mmcm_adv_inst_0),
        .I1(mmcm_locked_out),
        .O(tx_reset));
  (* box_type = "PRIMITIVE" *) 
  BUFG i_bufg_clk_in
       (.I(clkin),
        .O(clkin_out));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(5.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(5.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(8.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(40),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(100),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clkin_out),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(gmii_clk_125m_out),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(gmii_clk_25m_out),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(clk_10),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked_out),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(mmcm_adv_inst_0));
endmodule

(* INITIALISE = "2'b11" *) (* dont_touch = "yes" *) 
module design_1_gmii_to_rgmii_0_0_reset_sync
   (reset_in,
    clk,
    reset_out);
  input reset_in;
  input clk;
  output reset_out;

  wire clk;
  wire reset_in;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "NO" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "NO" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset_in),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "NO" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset_in),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "NO" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset_in),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "NO" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset_in),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "NO" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

module design_1_gmii_to_rgmii_0_0_resets
   (idelayctrl_reset,
    tx_reset,
    rx_reset,
    clkin_out);
  output idelayctrl_reset;
  input tx_reset;
  input rx_reset;
  input clkin_out;

  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ;
  wire clkin_out;
  wire idelayctrl_reset;
  wire idelayctrl_reset_i_1_n_0;
  wire idelayctrl_reset_i_2_n_0;
  wire idelayctrl_reset_i_3_n_0;
  wire idelayctrl_reset_sync;
  wire reset;
  wire rx_reset;
  wire tx_reset;

  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_idelay_reset_cnt_reg[0] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ),
        .S(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[10] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[11] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[12] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[13] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[1] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[2] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[3] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[4] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[5] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[6] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[7] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[8] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[9] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ),
        .R(idelayctrl_reset_sync));
  (* DONT_TOUCH *) 
  (* INITIALISE = "2'b11" *) 
  design_1_gmii_to_rgmii_0_0_reset_sync idelayctrl_reset_gen
       (.clk(clkin_out),
        .reset_in(reset),
        .reset_out(idelayctrl_reset_sync));
  LUT2 #(
    .INIT(4'hE)) 
    idelayctrl_reset_gen_i_1
       (.I0(tx_reset),
        .I1(rx_reset),
        .O(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    idelayctrl_reset_i_1
       (.I0(idelayctrl_reset_i_2_n_0),
        .I1(idelayctrl_reset_i_3_n_0),
        .I2(\FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ),
        .I3(\FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ),
        .I4(\FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ),
        .I5(\FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ),
        .O(idelayctrl_reset_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    idelayctrl_reset_i_2
       (.I0(\FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ),
        .I1(\FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ),
        .I2(\FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ),
        .I3(\FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ),
        .I4(\FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ),
        .I5(\FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ),
        .O(idelayctrl_reset_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    idelayctrl_reset_i_3
       (.I0(\FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ),
        .I1(\FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ),
        .I2(\FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ),
        .I3(\FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ),
        .O(idelayctrl_reset_i_3_n_0));
  FDSE idelayctrl_reset_reg
       (.C(clkin_out),
        .CE(1'b1),
        .D(idelayctrl_reset_i_1_n_0),
        .Q(idelayctrl_reset),
        .S(idelayctrl_reset_sync));
endmodule

module design_1_gmii_to_rgmii_0_0_support
   (tx_reset,
    rx_reset,
    clkin,
    ref_clk_out,
    mmcm_locked_out,
    gmii_clk_125m_out,
    gmii_clk_25m_out,
    gmii_clk_2_5m_out,
    speed_mode,
    gmii_tx_clk,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_mdc,
    mdio_gem_i,
    mdio_gem_o,
    mdio_gem_t,
    link_status,
    clock_speed,
    duplex_status,
    rgmii_txd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_rxd,
    rgmii_rx_ctl,
    rgmii_rxc,
    mdio_phy_mdc,
    mdio_phy_i,
    mdio_phy_o,
    mdio_phy_t);
  input tx_reset;
  input rx_reset;
  input clkin;
  output ref_clk_out;
  output mmcm_locked_out;
  output gmii_clk_125m_out;
  output gmii_clk_25m_out;
  output gmii_clk_2_5m_out;
  output [1:0]speed_mode;
  output gmii_tx_clk;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  input mdio_gem_mdc;
  output mdio_gem_i;
  input mdio_gem_o;
  input mdio_gem_t;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output mdio_phy_mdc;
  input mdio_phy_i;
  output mdio_phy_o;
  output mdio_phy_t;

  wire clkin;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire i_design_1_gmii_to_rgmii_0_0_clocking_n_0;
  wire idelayctrl_reset_i;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_gem_t;
  wire mdio_phy_i;
  wire mdio_phy_mdc;
  wire mdio_phy_o;
  wire mdio_phy_t;
  wire mmcm_locked_out;
  wire ref_clk_out;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_rxd;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;
  wire NLW_i_design_1_gmii_to_rgmii_0_0_idelayctrl_RDY_UNCONNECTED;

  design_1_gmii_to_rgmii_0_0_clocking i_design_1_gmii_to_rgmii_0_0_clocking
       (.clkin(clkin),
        .clkin_out(ref_clk_out),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .mmcm_adv_inst_0(tx_reset),
        .mmcm_locked_out(mmcm_locked_out),
        .tx_reset(i_design_1_gmii_to_rgmii_0_0_clocking_n_0));
  (* box_type = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    i_design_1_gmii_to_rgmii_0_0_idelayctrl
       (.RDY(NLW_i_design_1_gmii_to_rgmii_0_0_idelayctrl_RDY_UNCONNECTED),
        .REFCLK(ref_clk_out),
        .RST(idelayctrl_reset_i));
  design_1_gmii_to_rgmii_0_0_resets i_design_1_gmii_to_rgmii_0_0_resets
       (.clkin_out(ref_clk_out),
        .idelayctrl_reset(idelayctrl_reset_i),
        .rx_reset(rx_reset),
        .tx_reset(tx_reset));
  design_1_gmii_to_rgmii_0_0_block i_gmii_to_rgmii_block
       (.clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_gem_t(mdio_gem_t),
        .mdio_phy_i(mdio_phy_i),
        .mdio_phy_mdc(mdio_phy_mdc),
        .mdio_phy_o(mdio_phy_o),
        .mdio_phy_t(mdio_phy_t),
        .ref_clk_out(ref_clk_out),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode),
        .tx_reset(i_design_1_gmii_to_rgmii_0_0_clocking_n_0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DTNXbghTe1ItrdrhWRdLueScrZYX05OX4zu1wHzUmciZ+vZK1zsmOmqDRBF++pf2+TN3gAJwdaMm
vKnMLg+rlaDe+w9MLvCLe9ig3hwWjIky7LbLhOwfzPIvhsW2X06fGnfm4Hp7uBbPTtR/f+35Qohd
au8LHsG7cVd02TSRC+k=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NCHNRpBhToOz+M1D2DuQCtqdFnEb5AvpPpoRwn/XWZo7uLllcHmxrJcFJ/FPsI/Mj+ErrCRpW9DE
SczaqSR1JSHi0HAPq+5B1bJ0b1hPZF7p8B4jZTUxfi+LjpZ7hMScnXRTJ1uwhc8OoeO2j1yarPLo
7wC/YcArRWhXswfel1mc40vtMiTv3+5jOKLAEyyVRe7vzT8bcoHaX6ugH+InfjQ8JoFk3m39XTjI
s31TJM4pVNmWKxMIE3+SmLJGgScUzRtOZOwyGf9WzhE43JJ9ofj0qyVVL95+MKfnw+5b6LLGBcCS
if1a667Fu0LPEvWuxOpNhhbV4BEq/gWyc2Heuw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
afDZZsLFYEsAGGrknr4IcyoYTmO1ZJpkcITsTPyH+rxzmdgH3HEtajQplm3ZNN9HO3BES47SOdPm
7/TAAs59Ud+8CRfvnlcF79MZxuL6X8XeSeSP0gWMNa6ISQATbXewDfA8wIqx2lOQ8P54+GEAGvhU
01GxQ0o8eMAfnr5kWYw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sifYebrCgr3n3CRwLe/VOFBtiCBB4kZwvFhvkVarRxtcZI7a05EjyvADESXbJaYvFVT5SzGJPu93
+G3dLjmp8vU3dzsFXJZOE+kaVsBUspWSXqEFn8vwsipWhuGwHVCnfNhUYTZ74ez6uVv2SA3K3jmF
vQBNy3C3AxPNA5HRPgVR+zzTHs5I7g1IpeN0UqhiR2A5qKNWWzioO0QbV4IuMDCXXgJIEUgM2MxA
Nm+hQT99UZSOAcVIHfCJM5VqKTcyRIfCgZzMjaTQZn2aYW63zKS02Ty4qa3hZEX76bqQB4R7qSV9
MF0QYbJBV6fPtxbuRkpwxrK9xs0G+hc0IhFyEw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ibnpt8hXyjc94Vbk78pTRu1f+Oh8zT2jPC0X8T6kg4i2GLzkHhWxwjk49qpit2MsPc6vp2IrfTxf
yXC4J13edqBryjNAU93xYjNkBriQbgdlxlJ65Bd21jc4f3bLfAD+vAhIV1EggvRiafERS/CeRzEe
7S2MDBNZ0jm17jEsCRxNCqkg55f9TIWAyjiXdEN1aCrSS+0bRS8286KMLaxGwcIzWMDgh9j7gk5a
relcPTD60VxhH3fkm4d57WfGFH02n5JlcGzDt3baVdIqRLbw6PRp2Um2QutVK8C1SBdphnnhYoyc
PJqwnJ8TD/P2+3J5/+2I/JHI6Jhy3tHfvh3aog==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MIkHZr/5seN3MvLlzhiPzR20RiO5jjdaO8UlZYpeBFh965C4bX7kaC1ucA8upwFbpfHzOFFQ+M7a
2NLfmb9BwgR99Eg6Lu7BFbE6hVE1NaQ33trRADoXb5U5myehnUK8hYtptEF4cIMtgEj0KmUPIMqd
31u3q2CkfKNbZado2HeKj0HAbf11FxupQ6YbWtHu0pXk3efhIN7X9+lvY2f6r329KXghRkH0kjmc
u+y77Blt3hQVMpw9BULBy5oingAKerWkN3/QKuP59JDe8AYbt/A6QLaUEyjHD0Sox8CYEEeQcaav
dHjco/mLe7mEfY4of4NFAdnBaHuN4PWIiFJLbg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FFWt2+xNzW86fBO2lZkbumpYlflPg2IRS25Jsze5TZONHOzSvc182HD0kLtOsd8y+lXkk8hcbWiv
BRJmFScuVng3pvEpfu0Oz6vQETTG2+88WTSxtrWTqAdQeOEeLOBwbKvKvgpZXH2JTzJolh/AIP5u
/sb56wIvzU4w58rwl4xN4Se6M2vOmsOvVfkJzjGo1O9BZsCWgqxpDr+iJHQlr99dRvkvR6k/egkA
0mIYfwWUFRht1+PWc9J209lsmwhPyYOVEBSEYermpqwOSJDbdPn093A5XtZ/qPECFkIV/EDVLK+3
0PylHDfqwiqTKg5zGMztRHsSRvJQLNEYjsyh5g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
mKhatW4lzxEwor8ct5OdpyH1pT0tLohxdNTuQaSC6fngcGye3V2fC+6gZV7SYRvtXbz+SYioGATt
/OvmEF8wl5cpdHCsTCrhPiDmAVnlCOrieRC8WGbSS6HhOVgvWBXog/9or1Hu58Ov9HmyX1rZMYY0
hULRGYQQCRGF9L2t36G8Ff479xMT2nQKS1SWEEzLU/8FkRmPfob9L7UxGQQyxn5hcsjQEMbg5zL5
uW05gvoLZ/N+57Rq//yxeqVqgydf4YdRZBRkcqPDbtBGEtYCIZlMrfwEPaCBykT4Mn/9n+HAfZmo
cA8TLl1YhGb/wXkY0H4jUKQHFC/ydtbfltJWb5ZeAYc4zx6nr4x0ZZGWdDd5ZNvdh9HjIT7H6+3c
KOB+ZpM++5ikrb3IKiAShU0RfEWiFD2kQsJvE1u5PPttaz6u8qpTf1guyHfbbZ10djOmRweAnor7
b4zEixnqDXbqweA9J2h0B9hs9IcKie/AdXBRZvwtlwZvk4h8r+XH4u4C

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IaESj39lnS1YYfhvlPW79PvRRV6TbLqQ8n1ZHMNDexFQ+jy7JlxNrsjb/kFaUHGX2nGeu7XbBXA7
oaFfs6hA+wW76AskEpK9vY7od9uVVg0y2x1buiBqYDPrEDB7hC3PVM/rENbPIrV0Z8Dozlg5hZLt
ybyZdRtac+iD91RqtQKDv/UyvaRsWYUrjvssacOhiGq1mpojxlBddBqs5mzPUIbOPlrO6PjgVb3a
2jWGDYA5P6265+IIrt9V/H4M46K4wISfS7B2qdLQaar/TI293ERsT/LIfDg2FzbKQElnpHeZvdQ3
2pQE4gynYLokQcWM5fa4AJ4tLPvYyDolFHdaiw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 137504)
`pragma protect data_block
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
Fr+BoEBLR47H8D0It3bfWkWTqsE=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
