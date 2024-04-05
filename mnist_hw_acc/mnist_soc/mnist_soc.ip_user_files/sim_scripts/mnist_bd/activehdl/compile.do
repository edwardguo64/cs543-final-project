vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/xlconstant_v1_1_6
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/axi_timer_v2_0_21
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_crossbar_v2_1_20
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_15
vlib activehdl/floating_point_v7_1_8
vlib activehdl/axi_protocol_converter_v2_1_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap xlconstant_v1_1_6 activehdl/xlconstant_v1_1_6
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap axi_timer_v2_0_21 activehdl/axi_timer_v2_0_21
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 activehdl/axi_crossbar_v2_1_20
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 activehdl/mult_gen_v12_0_15
vmap floating_point_v7_1_8 activehdl/floating_point_v7_1_8
vmap axi_protocol_converter_v2_1_19 activehdl/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_processing_system7_0_0/sim/mnist_bd_processing_system7_0_0.v" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/sim/bd_bd60.v" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_bd60_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_bd60_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_bd60_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_bd60_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_bd60_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_bd60_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_bd60_sarn_0.sv" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_bd60_srn_0.sv" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_bd60_sawn_0.sv" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_bd60_swn_0.sv" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_bd60_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_bd60_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_bd60_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_0/sim/mnist_bd_smartconnect_0_0.v" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/sim/bd_7da1.v" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_0/sim/bd_7da1_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_7da1_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
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

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_0_1/sim/mnist_bd_smartconnect_0_1.v" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/sim/bd_7d31.v" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_0/sim/bd_7d31_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/bd_0/ip/ip_1/sim/bd_7d31_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
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

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_smartconnect_1_0/sim/mnist_bd_smartconnect_1_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_21 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/a788/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mnist_bd/ip/mnist_bd_axi_timer_0_0/sim/mnist_bd_axi_timer_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_xbar_0/sim/mnist_bd_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/mnist_bd/ip/mnist_bd_proc_sys_reset_0_0/sim/mnist_bd_proc_sys_reset_0_0.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_8 -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/convolution1.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/convolution3.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/convolution5.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_conv1_bg8j.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_conv1_oncg.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_conv1_wfYi.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_conv3_bibs.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_conv3_opcA.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_conv3_whbi.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_conv5_bkbM.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_conv5_wjbC.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_CTL_s_axi.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_DATA_FC6_OUTPUT_m_axi.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_DATA_IMAGE_m_axi.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_DATA_PARAMETERS_m_axi.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_fadd_32bkb.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_fc6_bias.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_fc6_weilbW.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_fcmp_32dEe.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_fmul_32cud.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_mul_muleOg.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_output_mb6.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_pool2_oocq.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_pool4_oqcK.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn_urem_5nsc4.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/max_pooling2.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/max_pooling4.v" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/verilog/lenet_cnn.v" \

vcom -work xil_defaultlib -93 \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/ip/lenet_cnn_ap_fadd_3_full_dsp_32.vhd" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/ip/lenet_cnn_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b513/hdl/ip/lenet_cnn_ap_fmul_2_max_dsp_32.vhd" \
"../../../bd/mnist_bd/ip/mnist_bd_lenet_cnn_0_0/sim/mnist_bd_lenet_cnn_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/ec67/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/8c62/hdl" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/1ddd/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ipshared/b2d0/hdl/verilog" "+incdir+../../../../mnist_soc.srcs/sources_1/bd/mnist_bd/ip/mnist_bd_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/mnist_bd/ip/mnist_bd_auto_pc_0/sim/mnist_bd_auto_pc_0.v" \
"../../../bd/mnist_bd/sim/mnist_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

