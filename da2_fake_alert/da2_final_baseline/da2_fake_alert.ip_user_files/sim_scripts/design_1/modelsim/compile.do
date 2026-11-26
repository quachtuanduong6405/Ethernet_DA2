vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_22
vlib modelsim_lib/msim/processing_system7_vip_v1_0_24
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/gmii_to_rgmii_v4_1_21
vlib modelsim_lib/msim/util_vector_logic_v2_0_5
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_37
vlib modelsim_lib/msim/xlconstant_v1_1_10
vlib modelsim_lib/msim/proc_sys_reset_v5_0_17
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_36

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 modelsim_lib/msim/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 modelsim_lib/msim/processing_system7_vip_v1_0_24
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap gmii_to_rgmii_v4_1_21 modelsim_lib/msim/gmii_to_rgmii_v4_1_21
vmap util_vector_logic_v2_0_5 modelsim_lib/msim/util_vector_logic_v2_0_5
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 modelsim_lib/msim/axi_gpio_v2_0_37
vmap xlconstant_v1_1_10 modelsim_lib/msim/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 modelsim_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_36 modelsim_lib/msim/axi_register_slice_v2_1_36

vlog -work xilinx_vip  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"D:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_24  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_clocking.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_resets.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_support.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_reset_sync.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_block.vhd" \

vcom -work xil_defaultlib  -2008  \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/design_1_gmii_to_rgmii_0_0/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_1_21  -93  \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/bb57/hdl/gmii_to_rgmii_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0.vhd" \

vlog -work util_vector_logic_v2_0_5  -incr -mfcu  "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/e056/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37  -93  \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xlconstant_v1_1_10  -incr -mfcu  "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_m00e_0.sv" \

vcom -work smartconnect_v1_0  -93  \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_36  -incr -mfcu  "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/9a25/hdl" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../da2_fake_alert.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+D:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.sv" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

