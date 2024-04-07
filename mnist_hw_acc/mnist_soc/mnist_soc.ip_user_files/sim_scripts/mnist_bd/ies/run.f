-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_processing_system7_0_0/sim/mnist_bd_processing_system7_0_0.v" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/sim/bd_bd60.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_6 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_bd60_one_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_bd60_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_bd60_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_bd60_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_bd60_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_bd60_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_bd60_sarn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_bd60_srn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_bd60_sawn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_bd60_swn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_bd60_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_bd60_m00s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_bd60_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/sim/mnist_bd_smartconnect_0_0.v" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/sim/bd_7da1.v" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_0/sim/bd_7da1_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_7da1_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_2/sim/bd_7da1_s00mmu_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_3/sim/bd_7da1_s00tr_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_4/sim/bd_7da1_s00sic_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_5/sim/bd_7da1_s00a2s_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_6/sim/bd_7da1_sarn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_7/sim/bd_7da1_srn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_8/sim/bd_7da1_sawn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_9/sim/bd_7da1_swn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_10/sim/bd_7da1_sbn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_11/sim/bd_7da1_m00s2a_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_12/sim/bd_7da1_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/sim/mnist_bd_smartconnect_0_1.v" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/sim/bd_7d31.v" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_0/sim/bd_7d31_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_1/sim/bd_7d31_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_2/sim/bd_7d31_s00mmu_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_3/sim/bd_7d31_s00tr_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_4/sim/bd_7d31_s00sic_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_5/sim/bd_7d31_s00a2s_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_6/sim/bd_7d31_sarn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_7/sim/bd_7d31_srn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_8/sim/bd_7d31_sawn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_9/sim/bd_7d31_swn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_10/sim/bd_7d31_sbn_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_11/sim/bd_7d31_m00s2a_0.sv" \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_12/sim/bd_7d31_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/sim/mnist_bd_smartconnect_1_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_timer_v2_0_21 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/a788/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_axi_timer_0_0/sim/mnist_bd_axi_timer_0_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_19 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_18 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_20 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_xbar_0/sim/mnist_bd_xbar_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_proc_sys_reset_0_0/sim/mnist_bd_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_10 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_6 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_6 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_6 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_15 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/floating_point_v7_1_8 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/convolution1.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/convolution3.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/convolution5.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_conv1_bg8j.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_conv1_oncg.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_conv1_wfYi.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_conv3_bibs.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_conv3_opcA.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_conv3_whbi.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_conv5_bkbM.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_conv5_wjbC.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_CTL_s_axi.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_DATA_FC6_OUTPUT_m_axi.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_DATA_IMAGE_m_axi.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_DATA_PARAMETERS_m_axi.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_fadd_32bkb.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_fc6_bias.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_fc6_weilbW.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_fcmp_32dEe.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_fmul_32cud.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_mul_muleOg.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_output_mb6.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_pool2_oocq.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_pool4_oqcK.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn_urem_5nsc4.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/max_pooling2.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/max_pooling4.v" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/verilog/lenet_cnn.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/ip/lenet_cnn_ap_fadd_3_full_dsp_32.vhd" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/ip/lenet_cnn_ap_fcmp_0_no_dsp_32.vhd" \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d1cd/hdl/ip/lenet_cnn_ap_fmul_2_max_dsp_32.vhd" \
  "../../../bd/mnist_bd/ip/mnist_bd_lenet_cnn_0_0/sim/mnist_bd_lenet_cnn_0_0.vhd" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_19 \
  "../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/mnist_bd/ip/mnist_bd_auto_pc_0/sim/mnist_bd_auto_pc_0.v" \
  "../../../bd/mnist_bd/sim/mnist_bd.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

