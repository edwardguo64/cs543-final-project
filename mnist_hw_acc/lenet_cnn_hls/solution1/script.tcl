############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lenet_cnn_hls
set_top lenet_cnn
add_files lenet_cnn_hls/lenet_cnn.cpp
add_files lenet_cnn_hls/lenet_cnn.h
add_files -tb lenet_cnn_hls/lenet_cnn_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_sdx -optimization_level none -target none
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2
set_clock_uncertainty 12.5%
#source "./lenet_cnn_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
