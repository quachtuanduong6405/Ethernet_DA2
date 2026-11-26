// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Oct  9 14:37:31 2026
// Host        : LAPTOP-H65A9UPI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_gmii_to_rgmii_0_0_sim_netlist.v
// Design      : design_1_gmii_to_rgmii_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "gmii_to_rgmii_v4_1_21,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_support U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_block
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gmii_to_rgmii_v4_1_21 design_1_gmii_to_rgmii_0_0_core
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_clocking
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_reset_sync
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_resets
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_reset_sync idelayctrl_reset_gen
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_support
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_clocking i_design_1_gmii_to_rgmii_0_0_clocking
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_resets i_design_1_gmii_to_rgmii_0_0_resets
       (.clkin_out(ref_clk_out),
        .idelayctrl_reset(idelayctrl_reset_i),
        .rx_reset(rx_reset),
        .tx_reset(tx_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_gmii_to_rgmii_0_0_block i_gmii_to_rgmii_block
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 137648)
`pragma protect data_block
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
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
