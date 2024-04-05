// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Apr  3 22:15:50 2024
// Host        : Edward-Desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mnist_bd_lenet_cnn_0_0 -prefix
//               mnist_bd_lenet_cnn_0_0_ mnist_bd_lenet_cnn_0_0_stub.v
// Design      : mnist_bd_lenet_cnn_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "lenet_cnn,Vivado 2019.1" *)
module mnist_bd_lenet_cnn_0_0(s_axi_CTL_AWADDR, s_axi_CTL_AWVALID, 
  s_axi_CTL_AWREADY, s_axi_CTL_WDATA, s_axi_CTL_WSTRB, s_axi_CTL_WVALID, s_axi_CTL_WREADY, 
  s_axi_CTL_BRESP, s_axi_CTL_BVALID, s_axi_CTL_BREADY, s_axi_CTL_ARADDR, s_axi_CTL_ARVALID, 
  s_axi_CTL_ARREADY, s_axi_CTL_RDATA, s_axi_CTL_RRESP, s_axi_CTL_RVALID, s_axi_CTL_RREADY, 
  ap_clk, ap_rst_n, interrupt, m_axi_DATA_IMAGE_AWADDR, m_axi_DATA_IMAGE_AWLEN, 
  m_axi_DATA_IMAGE_AWSIZE, m_axi_DATA_IMAGE_AWBURST, m_axi_DATA_IMAGE_AWLOCK, 
  m_axi_DATA_IMAGE_AWREGION, m_axi_DATA_IMAGE_AWCACHE, m_axi_DATA_IMAGE_AWPROT, 
  m_axi_DATA_IMAGE_AWQOS, m_axi_DATA_IMAGE_AWVALID, m_axi_DATA_IMAGE_AWREADY, 
  m_axi_DATA_IMAGE_WDATA, m_axi_DATA_IMAGE_WSTRB, m_axi_DATA_IMAGE_WLAST, 
  m_axi_DATA_IMAGE_WVALID, m_axi_DATA_IMAGE_WREADY, m_axi_DATA_IMAGE_BRESP, 
  m_axi_DATA_IMAGE_BVALID, m_axi_DATA_IMAGE_BREADY, m_axi_DATA_IMAGE_ARADDR, 
  m_axi_DATA_IMAGE_ARLEN, m_axi_DATA_IMAGE_ARSIZE, m_axi_DATA_IMAGE_ARBURST, 
  m_axi_DATA_IMAGE_ARLOCK, m_axi_DATA_IMAGE_ARREGION, m_axi_DATA_IMAGE_ARCACHE, 
  m_axi_DATA_IMAGE_ARPROT, m_axi_DATA_IMAGE_ARQOS, m_axi_DATA_IMAGE_ARVALID, 
  m_axi_DATA_IMAGE_ARREADY, m_axi_DATA_IMAGE_RDATA, m_axi_DATA_IMAGE_RRESP, 
  m_axi_DATA_IMAGE_RLAST, m_axi_DATA_IMAGE_RVALID, m_axi_DATA_IMAGE_RREADY, 
  m_axi_DATA_PARAMETERS_AWADDR, m_axi_DATA_PARAMETERS_AWLEN, 
  m_axi_DATA_PARAMETERS_AWSIZE, m_axi_DATA_PARAMETERS_AWBURST, 
  m_axi_DATA_PARAMETERS_AWLOCK, m_axi_DATA_PARAMETERS_AWREGION, 
  m_axi_DATA_PARAMETERS_AWCACHE, m_axi_DATA_PARAMETERS_AWPROT, 
  m_axi_DATA_PARAMETERS_AWQOS, m_axi_DATA_PARAMETERS_AWVALID, 
  m_axi_DATA_PARAMETERS_AWREADY, m_axi_DATA_PARAMETERS_WDATA, 
  m_axi_DATA_PARAMETERS_WSTRB, m_axi_DATA_PARAMETERS_WLAST, 
  m_axi_DATA_PARAMETERS_WVALID, m_axi_DATA_PARAMETERS_WREADY, 
  m_axi_DATA_PARAMETERS_BRESP, m_axi_DATA_PARAMETERS_BVALID, 
  m_axi_DATA_PARAMETERS_BREADY, m_axi_DATA_PARAMETERS_ARADDR, 
  m_axi_DATA_PARAMETERS_ARLEN, m_axi_DATA_PARAMETERS_ARSIZE, 
  m_axi_DATA_PARAMETERS_ARBURST, m_axi_DATA_PARAMETERS_ARLOCK, 
  m_axi_DATA_PARAMETERS_ARREGION, m_axi_DATA_PARAMETERS_ARCACHE, 
  m_axi_DATA_PARAMETERS_ARPROT, m_axi_DATA_PARAMETERS_ARQOS, 
  m_axi_DATA_PARAMETERS_ARVALID, m_axi_DATA_PARAMETERS_ARREADY, 
  m_axi_DATA_PARAMETERS_RDATA, m_axi_DATA_PARAMETERS_RRESP, 
  m_axi_DATA_PARAMETERS_RLAST, m_axi_DATA_PARAMETERS_RVALID, 
  m_axi_DATA_PARAMETERS_RREADY, m_axi_DATA_FC6_OUTPUT_AWADDR, 
  m_axi_DATA_FC6_OUTPUT_AWLEN, m_axi_DATA_FC6_OUTPUT_AWSIZE, 
  m_axi_DATA_FC6_OUTPUT_AWBURST, m_axi_DATA_FC6_OUTPUT_AWLOCK, 
  m_axi_DATA_FC6_OUTPUT_AWREGION, m_axi_DATA_FC6_OUTPUT_AWCACHE, 
  m_axi_DATA_FC6_OUTPUT_AWPROT, m_axi_DATA_FC6_OUTPUT_AWQOS, 
  m_axi_DATA_FC6_OUTPUT_AWVALID, m_axi_DATA_FC6_OUTPUT_AWREADY, 
  m_axi_DATA_FC6_OUTPUT_WDATA, m_axi_DATA_FC6_OUTPUT_WSTRB, 
  m_axi_DATA_FC6_OUTPUT_WLAST, m_axi_DATA_FC6_OUTPUT_WVALID, 
  m_axi_DATA_FC6_OUTPUT_WREADY, m_axi_DATA_FC6_OUTPUT_BRESP, 
  m_axi_DATA_FC6_OUTPUT_BVALID, m_axi_DATA_FC6_OUTPUT_BREADY, 
  m_axi_DATA_FC6_OUTPUT_ARADDR, m_axi_DATA_FC6_OUTPUT_ARLEN, 
  m_axi_DATA_FC6_OUTPUT_ARSIZE, m_axi_DATA_FC6_OUTPUT_ARBURST, 
  m_axi_DATA_FC6_OUTPUT_ARLOCK, m_axi_DATA_FC6_OUTPUT_ARREGION, 
  m_axi_DATA_FC6_OUTPUT_ARCACHE, m_axi_DATA_FC6_OUTPUT_ARPROT, 
  m_axi_DATA_FC6_OUTPUT_ARQOS, m_axi_DATA_FC6_OUTPUT_ARVALID, 
  m_axi_DATA_FC6_OUTPUT_ARREADY, m_axi_DATA_FC6_OUTPUT_RDATA, 
  m_axi_DATA_FC6_OUTPUT_RRESP, m_axi_DATA_FC6_OUTPUT_RLAST, 
  m_axi_DATA_FC6_OUTPUT_RVALID, m_axi_DATA_FC6_OUTPUT_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTL_AWADDR[5:0],s_axi_CTL_AWVALID,s_axi_CTL_AWREADY,s_axi_CTL_WDATA[31:0],s_axi_CTL_WSTRB[3:0],s_axi_CTL_WVALID,s_axi_CTL_WREADY,s_axi_CTL_BRESP[1:0],s_axi_CTL_BVALID,s_axi_CTL_BREADY,s_axi_CTL_ARADDR[5:0],s_axi_CTL_ARVALID,s_axi_CTL_ARREADY,s_axi_CTL_RDATA[31:0],s_axi_CTL_RRESP[1:0],s_axi_CTL_RVALID,s_axi_CTL_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_DATA_IMAGE_AWADDR[31:0],m_axi_DATA_IMAGE_AWLEN[7:0],m_axi_DATA_IMAGE_AWSIZE[2:0],m_axi_DATA_IMAGE_AWBURST[1:0],m_axi_DATA_IMAGE_AWLOCK[1:0],m_axi_DATA_IMAGE_AWREGION[3:0],m_axi_DATA_IMAGE_AWCACHE[3:0],m_axi_DATA_IMAGE_AWPROT[2:0],m_axi_DATA_IMAGE_AWQOS[3:0],m_axi_DATA_IMAGE_AWVALID,m_axi_DATA_IMAGE_AWREADY,m_axi_DATA_IMAGE_WDATA[31:0],m_axi_DATA_IMAGE_WSTRB[3:0],m_axi_DATA_IMAGE_WLAST,m_axi_DATA_IMAGE_WVALID,m_axi_DATA_IMAGE_WREADY,m_axi_DATA_IMAGE_BRESP[1:0],m_axi_DATA_IMAGE_BVALID,m_axi_DATA_IMAGE_BREADY,m_axi_DATA_IMAGE_ARADDR[31:0],m_axi_DATA_IMAGE_ARLEN[7:0],m_axi_DATA_IMAGE_ARSIZE[2:0],m_axi_DATA_IMAGE_ARBURST[1:0],m_axi_DATA_IMAGE_ARLOCK[1:0],m_axi_DATA_IMAGE_ARREGION[3:0],m_axi_DATA_IMAGE_ARCACHE[3:0],m_axi_DATA_IMAGE_ARPROT[2:0],m_axi_DATA_IMAGE_ARQOS[3:0],m_axi_DATA_IMAGE_ARVALID,m_axi_DATA_IMAGE_ARREADY,m_axi_DATA_IMAGE_RDATA[31:0],m_axi_DATA_IMAGE_RRESP[1:0],m_axi_DATA_IMAGE_RLAST,m_axi_DATA_IMAGE_RVALID,m_axi_DATA_IMAGE_RREADY,m_axi_DATA_PARAMETERS_AWADDR[31:0],m_axi_DATA_PARAMETERS_AWLEN[7:0],m_axi_DATA_PARAMETERS_AWSIZE[2:0],m_axi_DATA_PARAMETERS_AWBURST[1:0],m_axi_DATA_PARAMETERS_AWLOCK[1:0],m_axi_DATA_PARAMETERS_AWREGION[3:0],m_axi_DATA_PARAMETERS_AWCACHE[3:0],m_axi_DATA_PARAMETERS_AWPROT[2:0],m_axi_DATA_PARAMETERS_AWQOS[3:0],m_axi_DATA_PARAMETERS_AWVALID,m_axi_DATA_PARAMETERS_AWREADY,m_axi_DATA_PARAMETERS_WDATA[31:0],m_axi_DATA_PARAMETERS_WSTRB[3:0],m_axi_DATA_PARAMETERS_WLAST,m_axi_DATA_PARAMETERS_WVALID,m_axi_DATA_PARAMETERS_WREADY,m_axi_DATA_PARAMETERS_BRESP[1:0],m_axi_DATA_PARAMETERS_BVALID,m_axi_DATA_PARAMETERS_BREADY,m_axi_DATA_PARAMETERS_ARADDR[31:0],m_axi_DATA_PARAMETERS_ARLEN[7:0],m_axi_DATA_PARAMETERS_ARSIZE[2:0],m_axi_DATA_PARAMETERS_ARBURST[1:0],m_axi_DATA_PARAMETERS_ARLOCK[1:0],m_axi_DATA_PARAMETERS_ARREGION[3:0],m_axi_DATA_PARAMETERS_ARCACHE[3:0],m_axi_DATA_PARAMETERS_ARPROT[2:0],m_axi_DATA_PARAMETERS_ARQOS[3:0],m_axi_DATA_PARAMETERS_ARVALID,m_axi_DATA_PARAMETERS_ARREADY,m_axi_DATA_PARAMETERS_RDATA[31:0],m_axi_DATA_PARAMETERS_RRESP[1:0],m_axi_DATA_PARAMETERS_RLAST,m_axi_DATA_PARAMETERS_RVALID,m_axi_DATA_PARAMETERS_RREADY,m_axi_DATA_FC6_OUTPUT_AWADDR[31:0],m_axi_DATA_FC6_OUTPUT_AWLEN[7:0],m_axi_DATA_FC6_OUTPUT_AWSIZE[2:0],m_axi_DATA_FC6_OUTPUT_AWBURST[1:0],m_axi_DATA_FC6_OUTPUT_AWLOCK[1:0],m_axi_DATA_FC6_OUTPUT_AWREGION[3:0],m_axi_DATA_FC6_OUTPUT_AWCACHE[3:0],m_axi_DATA_FC6_OUTPUT_AWPROT[2:0],m_axi_DATA_FC6_OUTPUT_AWQOS[3:0],m_axi_DATA_FC6_OUTPUT_AWVALID,m_axi_DATA_FC6_OUTPUT_AWREADY,m_axi_DATA_FC6_OUTPUT_WDATA[31:0],m_axi_DATA_FC6_OUTPUT_WSTRB[3:0],m_axi_DATA_FC6_OUTPUT_WLAST,m_axi_DATA_FC6_OUTPUT_WVALID,m_axi_DATA_FC6_OUTPUT_WREADY,m_axi_DATA_FC6_OUTPUT_BRESP[1:0],m_axi_DATA_FC6_OUTPUT_BVALID,m_axi_DATA_FC6_OUTPUT_BREADY,m_axi_DATA_FC6_OUTPUT_ARADDR[31:0],m_axi_DATA_FC6_OUTPUT_ARLEN[7:0],m_axi_DATA_FC6_OUTPUT_ARSIZE[2:0],m_axi_DATA_FC6_OUTPUT_ARBURST[1:0],m_axi_DATA_FC6_OUTPUT_ARLOCK[1:0],m_axi_DATA_FC6_OUTPUT_ARREGION[3:0],m_axi_DATA_FC6_OUTPUT_ARCACHE[3:0],m_axi_DATA_FC6_OUTPUT_ARPROT[2:0],m_axi_DATA_FC6_OUTPUT_ARQOS[3:0],m_axi_DATA_FC6_OUTPUT_ARVALID,m_axi_DATA_FC6_OUTPUT_ARREADY,m_axi_DATA_FC6_OUTPUT_RDATA[31:0],m_axi_DATA_FC6_OUTPUT_RRESP[1:0],m_axi_DATA_FC6_OUTPUT_RLAST,m_axi_DATA_FC6_OUTPUT_RVALID,m_axi_DATA_FC6_OUTPUT_RREADY" */;
  input [5:0]s_axi_CTL_AWADDR;
  input s_axi_CTL_AWVALID;
  output s_axi_CTL_AWREADY;
  input [31:0]s_axi_CTL_WDATA;
  input [3:0]s_axi_CTL_WSTRB;
  input s_axi_CTL_WVALID;
  output s_axi_CTL_WREADY;
  output [1:0]s_axi_CTL_BRESP;
  output s_axi_CTL_BVALID;
  input s_axi_CTL_BREADY;
  input [5:0]s_axi_CTL_ARADDR;
  input s_axi_CTL_ARVALID;
  output s_axi_CTL_ARREADY;
  output [31:0]s_axi_CTL_RDATA;
  output [1:0]s_axi_CTL_RRESP;
  output s_axi_CTL_RVALID;
  input s_axi_CTL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_DATA_IMAGE_AWADDR;
  output [7:0]m_axi_DATA_IMAGE_AWLEN;
  output [2:0]m_axi_DATA_IMAGE_AWSIZE;
  output [1:0]m_axi_DATA_IMAGE_AWBURST;
  output [1:0]m_axi_DATA_IMAGE_AWLOCK;
  output [3:0]m_axi_DATA_IMAGE_AWREGION;
  output [3:0]m_axi_DATA_IMAGE_AWCACHE;
  output [2:0]m_axi_DATA_IMAGE_AWPROT;
  output [3:0]m_axi_DATA_IMAGE_AWQOS;
  output m_axi_DATA_IMAGE_AWVALID;
  input m_axi_DATA_IMAGE_AWREADY;
  output [31:0]m_axi_DATA_IMAGE_WDATA;
  output [3:0]m_axi_DATA_IMAGE_WSTRB;
  output m_axi_DATA_IMAGE_WLAST;
  output m_axi_DATA_IMAGE_WVALID;
  input m_axi_DATA_IMAGE_WREADY;
  input [1:0]m_axi_DATA_IMAGE_BRESP;
  input m_axi_DATA_IMAGE_BVALID;
  output m_axi_DATA_IMAGE_BREADY;
  output [31:0]m_axi_DATA_IMAGE_ARADDR;
  output [7:0]m_axi_DATA_IMAGE_ARLEN;
  output [2:0]m_axi_DATA_IMAGE_ARSIZE;
  output [1:0]m_axi_DATA_IMAGE_ARBURST;
  output [1:0]m_axi_DATA_IMAGE_ARLOCK;
  output [3:0]m_axi_DATA_IMAGE_ARREGION;
  output [3:0]m_axi_DATA_IMAGE_ARCACHE;
  output [2:0]m_axi_DATA_IMAGE_ARPROT;
  output [3:0]m_axi_DATA_IMAGE_ARQOS;
  output m_axi_DATA_IMAGE_ARVALID;
  input m_axi_DATA_IMAGE_ARREADY;
  input [31:0]m_axi_DATA_IMAGE_RDATA;
  input [1:0]m_axi_DATA_IMAGE_RRESP;
  input m_axi_DATA_IMAGE_RLAST;
  input m_axi_DATA_IMAGE_RVALID;
  output m_axi_DATA_IMAGE_RREADY;
  output [31:0]m_axi_DATA_PARAMETERS_AWADDR;
  output [7:0]m_axi_DATA_PARAMETERS_AWLEN;
  output [2:0]m_axi_DATA_PARAMETERS_AWSIZE;
  output [1:0]m_axi_DATA_PARAMETERS_AWBURST;
  output [1:0]m_axi_DATA_PARAMETERS_AWLOCK;
  output [3:0]m_axi_DATA_PARAMETERS_AWREGION;
  output [3:0]m_axi_DATA_PARAMETERS_AWCACHE;
  output [2:0]m_axi_DATA_PARAMETERS_AWPROT;
  output [3:0]m_axi_DATA_PARAMETERS_AWQOS;
  output m_axi_DATA_PARAMETERS_AWVALID;
  input m_axi_DATA_PARAMETERS_AWREADY;
  output [31:0]m_axi_DATA_PARAMETERS_WDATA;
  output [3:0]m_axi_DATA_PARAMETERS_WSTRB;
  output m_axi_DATA_PARAMETERS_WLAST;
  output m_axi_DATA_PARAMETERS_WVALID;
  input m_axi_DATA_PARAMETERS_WREADY;
  input [1:0]m_axi_DATA_PARAMETERS_BRESP;
  input m_axi_DATA_PARAMETERS_BVALID;
  output m_axi_DATA_PARAMETERS_BREADY;
  output [31:0]m_axi_DATA_PARAMETERS_ARADDR;
  output [7:0]m_axi_DATA_PARAMETERS_ARLEN;
  output [2:0]m_axi_DATA_PARAMETERS_ARSIZE;
  output [1:0]m_axi_DATA_PARAMETERS_ARBURST;
  output [1:0]m_axi_DATA_PARAMETERS_ARLOCK;
  output [3:0]m_axi_DATA_PARAMETERS_ARREGION;
  output [3:0]m_axi_DATA_PARAMETERS_ARCACHE;
  output [2:0]m_axi_DATA_PARAMETERS_ARPROT;
  output [3:0]m_axi_DATA_PARAMETERS_ARQOS;
  output m_axi_DATA_PARAMETERS_ARVALID;
  input m_axi_DATA_PARAMETERS_ARREADY;
  input [31:0]m_axi_DATA_PARAMETERS_RDATA;
  input [1:0]m_axi_DATA_PARAMETERS_RRESP;
  input m_axi_DATA_PARAMETERS_RLAST;
  input m_axi_DATA_PARAMETERS_RVALID;
  output m_axi_DATA_PARAMETERS_RREADY;
  output [31:0]m_axi_DATA_FC6_OUTPUT_AWADDR;
  output [7:0]m_axi_DATA_FC6_OUTPUT_AWLEN;
  output [2:0]m_axi_DATA_FC6_OUTPUT_AWSIZE;
  output [1:0]m_axi_DATA_FC6_OUTPUT_AWBURST;
  output [1:0]m_axi_DATA_FC6_OUTPUT_AWLOCK;
  output [3:0]m_axi_DATA_FC6_OUTPUT_AWREGION;
  output [3:0]m_axi_DATA_FC6_OUTPUT_AWCACHE;
  output [2:0]m_axi_DATA_FC6_OUTPUT_AWPROT;
  output [3:0]m_axi_DATA_FC6_OUTPUT_AWQOS;
  output m_axi_DATA_FC6_OUTPUT_AWVALID;
  input m_axi_DATA_FC6_OUTPUT_AWREADY;
  output [31:0]m_axi_DATA_FC6_OUTPUT_WDATA;
  output [3:0]m_axi_DATA_FC6_OUTPUT_WSTRB;
  output m_axi_DATA_FC6_OUTPUT_WLAST;
  output m_axi_DATA_FC6_OUTPUT_WVALID;
  input m_axi_DATA_FC6_OUTPUT_WREADY;
  input [1:0]m_axi_DATA_FC6_OUTPUT_BRESP;
  input m_axi_DATA_FC6_OUTPUT_BVALID;
  output m_axi_DATA_FC6_OUTPUT_BREADY;
  output [31:0]m_axi_DATA_FC6_OUTPUT_ARADDR;
  output [7:0]m_axi_DATA_FC6_OUTPUT_ARLEN;
  output [2:0]m_axi_DATA_FC6_OUTPUT_ARSIZE;
  output [1:0]m_axi_DATA_FC6_OUTPUT_ARBURST;
  output [1:0]m_axi_DATA_FC6_OUTPUT_ARLOCK;
  output [3:0]m_axi_DATA_FC6_OUTPUT_ARREGION;
  output [3:0]m_axi_DATA_FC6_OUTPUT_ARCACHE;
  output [2:0]m_axi_DATA_FC6_OUTPUT_ARPROT;
  output [3:0]m_axi_DATA_FC6_OUTPUT_ARQOS;
  output m_axi_DATA_FC6_OUTPUT_ARVALID;
  input m_axi_DATA_FC6_OUTPUT_ARREADY;
  input [31:0]m_axi_DATA_FC6_OUTPUT_RDATA;
  input [1:0]m_axi_DATA_FC6_OUTPUT_RRESP;
  input m_axi_DATA_FC6_OUTPUT_RLAST;
  input m_axi_DATA_FC6_OUTPUT_RVALID;
  output m_axi_DATA_FC6_OUTPUT_RREADY;
endmodule
