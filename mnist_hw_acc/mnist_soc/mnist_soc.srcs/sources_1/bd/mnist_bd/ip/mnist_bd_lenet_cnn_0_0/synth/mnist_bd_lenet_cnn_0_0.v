// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:lenet_cnn:1.0
// IP Revision: 2113499623

(* X_CORE_INFO = "lenet_cnn,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "mnist_bd_lenet_cnn_0_0,lenet_cnn,{}" *)
(* CORE_GENERATION_INFO = "mnist_bd_lenet_cnn_0_0,lenet_cnn,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=lenet_cnn,x_ipVersion=1.0,x_ipCoreRevision=2113499623,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CTL_ADDR_WIDTH=6,C_S_AXI_CTL_DATA_WIDTH=32,C_M_AXI_DATA_IMAGE_ID_WIDTH=1,C_M_AXI_DATA_IMAGE_ADDR_WIDTH=32,C_M_AXI_DATA_IMAGE_DATA_WIDTH=32,C_M_AXI_DATA_IMAGE_AWUSER_WIDTH=1,C_M_AXI_DATA_IMAGE_ARUSER_WIDTH=1,C_M_AXI_DATA_IMAGE_WUSER_WIDTH=1,C_M_AXI_DATA_IMAGE_RUSER_WIDTH=1,C_M_AXI_DATA_IM\
AGE_BUSER_WIDTH=1,C_M_AXI_DATA_IMAGE_USER_VALUE=0x00000000,C_M_AXI_DATA_IMAGE_PROT_VALUE=000,C_M_AXI_DATA_IMAGE_CACHE_VALUE=0011,C_M_AXI_DATA_PARAMETERS_ID_WIDTH=1,C_M_AXI_DATA_PARAMETERS_ADDR_WIDTH=32,C_M_AXI_DATA_PARAMETERS_DATA_WIDTH=32,C_M_AXI_DATA_PARAMETERS_AWUSER_WIDTH=1,C_M_AXI_DATA_PARAMETERS_ARUSER_WIDTH=1,C_M_AXI_DATA_PARAMETERS_WUSER_WIDTH=1,C_M_AXI_DATA_PARAMETERS_RUSER_WIDTH=1,C_M_AXI_DATA_PARAMETERS_BUSER_WIDTH=1,C_M_AXI_DATA_PARAMETERS_USER_VALUE=0x00000000,C_M_AXI_DATA_PARAMETER\
S_PROT_VALUE=000,C_M_AXI_DATA_PARAMETERS_CACHE_VALUE=0011,C_M_AXI_DATA_FC6_OUTPUT_ID_WIDTH=1,C_M_AXI_DATA_FC6_OUTPUT_ADDR_WIDTH=32,C_M_AXI_DATA_FC6_OUTPUT_DATA_WIDTH=32,C_M_AXI_DATA_FC6_OUTPUT_AWUSER_WIDTH=1,C_M_AXI_DATA_FC6_OUTPUT_ARUSER_WIDTH=1,C_M_AXI_DATA_FC6_OUTPUT_WUSER_WIDTH=1,C_M_AXI_DATA_FC6_OUTPUT_RUSER_WIDTH=1,C_M_AXI_DATA_FC6_OUTPUT_BUSER_WIDTH=1,C_M_AXI_DATA_FC6_OUTPUT_USER_VALUE=0x00000000,C_M_AXI_DATA_FC6_OUTPUT_PROT_VALUE=000,C_M_AXI_DATA_FC6_OUTPUT_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mnist_bd_lenet_cnn_0_0 (
  s_axi_CTL_AWADDR,
  s_axi_CTL_AWVALID,
  s_axi_CTL_AWREADY,
  s_axi_CTL_WDATA,
  s_axi_CTL_WSTRB,
  s_axi_CTL_WVALID,
  s_axi_CTL_WREADY,
  s_axi_CTL_BRESP,
  s_axi_CTL_BVALID,
  s_axi_CTL_BREADY,
  s_axi_CTL_ARADDR,
  s_axi_CTL_ARVALID,
  s_axi_CTL_ARREADY,
  s_axi_CTL_RDATA,
  s_axi_CTL_RRESP,
  s_axi_CTL_RVALID,
  s_axi_CTL_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_DATA_IMAGE_AWADDR,
  m_axi_DATA_IMAGE_AWLEN,
  m_axi_DATA_IMAGE_AWSIZE,
  m_axi_DATA_IMAGE_AWBURST,
  m_axi_DATA_IMAGE_AWLOCK,
  m_axi_DATA_IMAGE_AWREGION,
  m_axi_DATA_IMAGE_AWCACHE,
  m_axi_DATA_IMAGE_AWPROT,
  m_axi_DATA_IMAGE_AWQOS,
  m_axi_DATA_IMAGE_AWVALID,
  m_axi_DATA_IMAGE_AWREADY,
  m_axi_DATA_IMAGE_WDATA,
  m_axi_DATA_IMAGE_WSTRB,
  m_axi_DATA_IMAGE_WLAST,
  m_axi_DATA_IMAGE_WVALID,
  m_axi_DATA_IMAGE_WREADY,
  m_axi_DATA_IMAGE_BRESP,
  m_axi_DATA_IMAGE_BVALID,
  m_axi_DATA_IMAGE_BREADY,
  m_axi_DATA_IMAGE_ARADDR,
  m_axi_DATA_IMAGE_ARLEN,
  m_axi_DATA_IMAGE_ARSIZE,
  m_axi_DATA_IMAGE_ARBURST,
  m_axi_DATA_IMAGE_ARLOCK,
  m_axi_DATA_IMAGE_ARREGION,
  m_axi_DATA_IMAGE_ARCACHE,
  m_axi_DATA_IMAGE_ARPROT,
  m_axi_DATA_IMAGE_ARQOS,
  m_axi_DATA_IMAGE_ARVALID,
  m_axi_DATA_IMAGE_ARREADY,
  m_axi_DATA_IMAGE_RDATA,
  m_axi_DATA_IMAGE_RRESP,
  m_axi_DATA_IMAGE_RLAST,
  m_axi_DATA_IMAGE_RVALID,
  m_axi_DATA_IMAGE_RREADY,
  m_axi_DATA_PARAMETERS_AWADDR,
  m_axi_DATA_PARAMETERS_AWLEN,
  m_axi_DATA_PARAMETERS_AWSIZE,
  m_axi_DATA_PARAMETERS_AWBURST,
  m_axi_DATA_PARAMETERS_AWLOCK,
  m_axi_DATA_PARAMETERS_AWREGION,
  m_axi_DATA_PARAMETERS_AWCACHE,
  m_axi_DATA_PARAMETERS_AWPROT,
  m_axi_DATA_PARAMETERS_AWQOS,
  m_axi_DATA_PARAMETERS_AWVALID,
  m_axi_DATA_PARAMETERS_AWREADY,
  m_axi_DATA_PARAMETERS_WDATA,
  m_axi_DATA_PARAMETERS_WSTRB,
  m_axi_DATA_PARAMETERS_WLAST,
  m_axi_DATA_PARAMETERS_WVALID,
  m_axi_DATA_PARAMETERS_WREADY,
  m_axi_DATA_PARAMETERS_BRESP,
  m_axi_DATA_PARAMETERS_BVALID,
  m_axi_DATA_PARAMETERS_BREADY,
  m_axi_DATA_PARAMETERS_ARADDR,
  m_axi_DATA_PARAMETERS_ARLEN,
  m_axi_DATA_PARAMETERS_ARSIZE,
  m_axi_DATA_PARAMETERS_ARBURST,
  m_axi_DATA_PARAMETERS_ARLOCK,
  m_axi_DATA_PARAMETERS_ARREGION,
  m_axi_DATA_PARAMETERS_ARCACHE,
  m_axi_DATA_PARAMETERS_ARPROT,
  m_axi_DATA_PARAMETERS_ARQOS,
  m_axi_DATA_PARAMETERS_ARVALID,
  m_axi_DATA_PARAMETERS_ARREADY,
  m_axi_DATA_PARAMETERS_RDATA,
  m_axi_DATA_PARAMETERS_RRESP,
  m_axi_DATA_PARAMETERS_RLAST,
  m_axi_DATA_PARAMETERS_RVALID,
  m_axi_DATA_PARAMETERS_RREADY,
  m_axi_DATA_FC6_OUTPUT_AWADDR,
  m_axi_DATA_FC6_OUTPUT_AWLEN,
  m_axi_DATA_FC6_OUTPUT_AWSIZE,
  m_axi_DATA_FC6_OUTPUT_AWBURST,
  m_axi_DATA_FC6_OUTPUT_AWLOCK,
  m_axi_DATA_FC6_OUTPUT_AWREGION,
  m_axi_DATA_FC6_OUTPUT_AWCACHE,
  m_axi_DATA_FC6_OUTPUT_AWPROT,
  m_axi_DATA_FC6_OUTPUT_AWQOS,
  m_axi_DATA_FC6_OUTPUT_AWVALID,
  m_axi_DATA_FC6_OUTPUT_AWREADY,
  m_axi_DATA_FC6_OUTPUT_WDATA,
  m_axi_DATA_FC6_OUTPUT_WSTRB,
  m_axi_DATA_FC6_OUTPUT_WLAST,
  m_axi_DATA_FC6_OUTPUT_WVALID,
  m_axi_DATA_FC6_OUTPUT_WREADY,
  m_axi_DATA_FC6_OUTPUT_BRESP,
  m_axi_DATA_FC6_OUTPUT_BVALID,
  m_axi_DATA_FC6_OUTPUT_BREADY,
  m_axi_DATA_FC6_OUTPUT_ARADDR,
  m_axi_DATA_FC6_OUTPUT_ARLEN,
  m_axi_DATA_FC6_OUTPUT_ARSIZE,
  m_axi_DATA_FC6_OUTPUT_ARBURST,
  m_axi_DATA_FC6_OUTPUT_ARLOCK,
  m_axi_DATA_FC6_OUTPUT_ARREGION,
  m_axi_DATA_FC6_OUTPUT_ARCACHE,
  m_axi_DATA_FC6_OUTPUT_ARPROT,
  m_axi_DATA_FC6_OUTPUT_ARQOS,
  m_axi_DATA_FC6_OUTPUT_ARVALID,
  m_axi_DATA_FC6_OUTPUT_ARREADY,
  m_axi_DATA_FC6_OUTPUT_RDATA,
  m_axi_DATA_FC6_OUTPUT_RRESP,
  m_axi_DATA_FC6_OUTPUT_RLAST,
  m_axi_DATA_FC6_OUTPUT_RVALID,
  m_axi_DATA_FC6_OUTPUT_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL AWADDR" *)
input wire [5 : 0] s_axi_CTL_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL AWVALID" *)
input wire s_axi_CTL_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL AWREADY" *)
output wire s_axi_CTL_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL WDATA" *)
input wire [31 : 0] s_axi_CTL_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL WSTRB" *)
input wire [3 : 0] s_axi_CTL_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL WVALID" *)
input wire s_axi_CTL_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL WREADY" *)
output wire s_axi_CTL_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL BRESP" *)
output wire [1 : 0] s_axi_CTL_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL BVALID" *)
output wire s_axi_CTL_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL BREADY" *)
input wire s_axi_CTL_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL ARADDR" *)
input wire [5 : 0] s_axi_CTL_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL ARVALID" *)
input wire s_axi_CTL_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL ARREADY" *)
output wire s_axi_CTL_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL RDATA" *)
output wire [31 : 0] s_axi_CTL_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL RRESP" *)
output wire [1 : 0] s_axi_CTL_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL RVALID" *)
output wire s_axi_CTL_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTL, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN mnist_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THR\
EADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTL RREADY" *)
input wire s_axi_CTL_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTL:m_axi_DATA_IMAGE:m_axi_DATA_PARAMETERS:m_axi_DATA_FC6_OUTPUT, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mnist_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWADDR" *)
output wire [31 : 0] m_axi_DATA_IMAGE_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWLEN" *)
output wire [7 : 0] m_axi_DATA_IMAGE_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWSIZE" *)
output wire [2 : 0] m_axi_DATA_IMAGE_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWBURST" *)
output wire [1 : 0] m_axi_DATA_IMAGE_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWLOCK" *)
output wire [1 : 0] m_axi_DATA_IMAGE_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWREGION" *)
output wire [3 : 0] m_axi_DATA_IMAGE_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWCACHE" *)
output wire [3 : 0] m_axi_DATA_IMAGE_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWPROT" *)
output wire [2 : 0] m_axi_DATA_IMAGE_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWQOS" *)
output wire [3 : 0] m_axi_DATA_IMAGE_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWVALID" *)
output wire m_axi_DATA_IMAGE_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE AWREADY" *)
input wire m_axi_DATA_IMAGE_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE WDATA" *)
output wire [31 : 0] m_axi_DATA_IMAGE_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE WSTRB" *)
output wire [3 : 0] m_axi_DATA_IMAGE_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE WLAST" *)
output wire m_axi_DATA_IMAGE_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE WVALID" *)
output wire m_axi_DATA_IMAGE_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE WREADY" *)
input wire m_axi_DATA_IMAGE_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE BRESP" *)
input wire [1 : 0] m_axi_DATA_IMAGE_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE BVALID" *)
input wire m_axi_DATA_IMAGE_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE BREADY" *)
output wire m_axi_DATA_IMAGE_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARADDR" *)
output wire [31 : 0] m_axi_DATA_IMAGE_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARLEN" *)
output wire [7 : 0] m_axi_DATA_IMAGE_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARSIZE" *)
output wire [2 : 0] m_axi_DATA_IMAGE_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARBURST" *)
output wire [1 : 0] m_axi_DATA_IMAGE_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARLOCK" *)
output wire [1 : 0] m_axi_DATA_IMAGE_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARREGION" *)
output wire [3 : 0] m_axi_DATA_IMAGE_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARCACHE" *)
output wire [3 : 0] m_axi_DATA_IMAGE_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARPROT" *)
output wire [2 : 0] m_axi_DATA_IMAGE_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARQOS" *)
output wire [3 : 0] m_axi_DATA_IMAGE_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARVALID" *)
output wire m_axi_DATA_IMAGE_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE ARREADY" *)
input wire m_axi_DATA_IMAGE_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE RDATA" *)
input wire [31 : 0] m_axi_DATA_IMAGE_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE RRESP" *)
input wire [1 : 0] m_axi_DATA_IMAGE_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE RLAST" *)
input wire m_axi_DATA_IMAGE_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE RVALID" *)
input wire m_axi_DATA_IMAGE_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_IMAGE, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_D\
OMAIN mnist_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_IMAGE RREADY" *)
output wire m_axi_DATA_IMAGE_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWADDR" *)
output wire [31 : 0] m_axi_DATA_PARAMETERS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWLEN" *)
output wire [7 : 0] m_axi_DATA_PARAMETERS_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWSIZE" *)
output wire [2 : 0] m_axi_DATA_PARAMETERS_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWBURST" *)
output wire [1 : 0] m_axi_DATA_PARAMETERS_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWLOCK" *)
output wire [1 : 0] m_axi_DATA_PARAMETERS_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWREGION" *)
output wire [3 : 0] m_axi_DATA_PARAMETERS_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWCACHE" *)
output wire [3 : 0] m_axi_DATA_PARAMETERS_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWPROT" *)
output wire [2 : 0] m_axi_DATA_PARAMETERS_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWQOS" *)
output wire [3 : 0] m_axi_DATA_PARAMETERS_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWVALID" *)
output wire m_axi_DATA_PARAMETERS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS AWREADY" *)
input wire m_axi_DATA_PARAMETERS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS WDATA" *)
output wire [31 : 0] m_axi_DATA_PARAMETERS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS WSTRB" *)
output wire [3 : 0] m_axi_DATA_PARAMETERS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS WLAST" *)
output wire m_axi_DATA_PARAMETERS_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS WVALID" *)
output wire m_axi_DATA_PARAMETERS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS WREADY" *)
input wire m_axi_DATA_PARAMETERS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS BRESP" *)
input wire [1 : 0] m_axi_DATA_PARAMETERS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS BVALID" *)
input wire m_axi_DATA_PARAMETERS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS BREADY" *)
output wire m_axi_DATA_PARAMETERS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARADDR" *)
output wire [31 : 0] m_axi_DATA_PARAMETERS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARLEN" *)
output wire [7 : 0] m_axi_DATA_PARAMETERS_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARSIZE" *)
output wire [2 : 0] m_axi_DATA_PARAMETERS_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARBURST" *)
output wire [1 : 0] m_axi_DATA_PARAMETERS_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARLOCK" *)
output wire [1 : 0] m_axi_DATA_PARAMETERS_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARREGION" *)
output wire [3 : 0] m_axi_DATA_PARAMETERS_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARCACHE" *)
output wire [3 : 0] m_axi_DATA_PARAMETERS_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARPROT" *)
output wire [2 : 0] m_axi_DATA_PARAMETERS_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARQOS" *)
output wire [3 : 0] m_axi_DATA_PARAMETERS_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARVALID" *)
output wire m_axi_DATA_PARAMETERS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS ARREADY" *)
input wire m_axi_DATA_PARAMETERS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS RDATA" *)
input wire [31 : 0] m_axi_DATA_PARAMETERS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS RRESP" *)
input wire [1 : 0] m_axi_DATA_PARAMETERS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS RLAST" *)
input wire m_axi_DATA_PARAMETERS_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS RVALID" *)
input wire m_axi_DATA_PARAMETERS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_PARAMETERS, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, \
CLK_DOMAIN mnist_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_PARAMETERS RREADY" *)
output wire m_axi_DATA_PARAMETERS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWADDR" *)
output wire [31 : 0] m_axi_DATA_FC6_OUTPUT_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWLEN" *)
output wire [7 : 0] m_axi_DATA_FC6_OUTPUT_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWSIZE" *)
output wire [2 : 0] m_axi_DATA_FC6_OUTPUT_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWBURST" *)
output wire [1 : 0] m_axi_DATA_FC6_OUTPUT_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWLOCK" *)
output wire [1 : 0] m_axi_DATA_FC6_OUTPUT_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWREGION" *)
output wire [3 : 0] m_axi_DATA_FC6_OUTPUT_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWCACHE" *)
output wire [3 : 0] m_axi_DATA_FC6_OUTPUT_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWPROT" *)
output wire [2 : 0] m_axi_DATA_FC6_OUTPUT_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWQOS" *)
output wire [3 : 0] m_axi_DATA_FC6_OUTPUT_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWVALID" *)
output wire m_axi_DATA_FC6_OUTPUT_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT AWREADY" *)
input wire m_axi_DATA_FC6_OUTPUT_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT WDATA" *)
output wire [31 : 0] m_axi_DATA_FC6_OUTPUT_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT WSTRB" *)
output wire [3 : 0] m_axi_DATA_FC6_OUTPUT_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT WLAST" *)
output wire m_axi_DATA_FC6_OUTPUT_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT WVALID" *)
output wire m_axi_DATA_FC6_OUTPUT_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT WREADY" *)
input wire m_axi_DATA_FC6_OUTPUT_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT BRESP" *)
input wire [1 : 0] m_axi_DATA_FC6_OUTPUT_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT BVALID" *)
input wire m_axi_DATA_FC6_OUTPUT_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT BREADY" *)
output wire m_axi_DATA_FC6_OUTPUT_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARADDR" *)
output wire [31 : 0] m_axi_DATA_FC6_OUTPUT_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARLEN" *)
output wire [7 : 0] m_axi_DATA_FC6_OUTPUT_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARSIZE" *)
output wire [2 : 0] m_axi_DATA_FC6_OUTPUT_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARBURST" *)
output wire [1 : 0] m_axi_DATA_FC6_OUTPUT_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARLOCK" *)
output wire [1 : 0] m_axi_DATA_FC6_OUTPUT_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARREGION" *)
output wire [3 : 0] m_axi_DATA_FC6_OUTPUT_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARCACHE" *)
output wire [3 : 0] m_axi_DATA_FC6_OUTPUT_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARPROT" *)
output wire [2 : 0] m_axi_DATA_FC6_OUTPUT_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARQOS" *)
output wire [3 : 0] m_axi_DATA_FC6_OUTPUT_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARVALID" *)
output wire m_axi_DATA_FC6_OUTPUT_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT ARREADY" *)
input wire m_axi_DATA_FC6_OUTPUT_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT RDATA" *)
input wire [31 : 0] m_axi_DATA_FC6_OUTPUT_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT RRESP" *)
input wire [1 : 0] m_axi_DATA_FC6_OUTPUT_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT RLAST" *)
input wire m_axi_DATA_FC6_OUTPUT_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT RVALID" *)
input wire m_axi_DATA_FC6_OUTPUT_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_DATA_FC6_OUTPUT, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, \
CLK_DOMAIN mnist_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_DATA_FC6_OUTPUT RREADY" *)
output wire m_axi_DATA_FC6_OUTPUT_RREADY;

  lenet_cnn #(
    .C_S_AXI_CTL_ADDR_WIDTH(6),
    .C_S_AXI_CTL_DATA_WIDTH(32),
    .C_M_AXI_DATA_IMAGE_ID_WIDTH(1),
    .C_M_AXI_DATA_IMAGE_ADDR_WIDTH(32),
    .C_M_AXI_DATA_IMAGE_DATA_WIDTH(32),
    .C_M_AXI_DATA_IMAGE_AWUSER_WIDTH(1),
    .C_M_AXI_DATA_IMAGE_ARUSER_WIDTH(1),
    .C_M_AXI_DATA_IMAGE_WUSER_WIDTH(1),
    .C_M_AXI_DATA_IMAGE_RUSER_WIDTH(1),
    .C_M_AXI_DATA_IMAGE_BUSER_WIDTH(1),
    .C_M_AXI_DATA_IMAGE_USER_VALUE('H00000000),
    .C_M_AXI_DATA_IMAGE_PROT_VALUE('B000),
    .C_M_AXI_DATA_IMAGE_CACHE_VALUE('B0011),
    .C_M_AXI_DATA_PARAMETERS_ID_WIDTH(1),
    .C_M_AXI_DATA_PARAMETERS_ADDR_WIDTH(32),
    .C_M_AXI_DATA_PARAMETERS_DATA_WIDTH(32),
    .C_M_AXI_DATA_PARAMETERS_AWUSER_WIDTH(1),
    .C_M_AXI_DATA_PARAMETERS_ARUSER_WIDTH(1),
    .C_M_AXI_DATA_PARAMETERS_WUSER_WIDTH(1),
    .C_M_AXI_DATA_PARAMETERS_RUSER_WIDTH(1),
    .C_M_AXI_DATA_PARAMETERS_BUSER_WIDTH(1),
    .C_M_AXI_DATA_PARAMETERS_USER_VALUE('H00000000),
    .C_M_AXI_DATA_PARAMETERS_PROT_VALUE('B000),
    .C_M_AXI_DATA_PARAMETERS_CACHE_VALUE('B0011),
    .C_M_AXI_DATA_FC6_OUTPUT_ID_WIDTH(1),
    .C_M_AXI_DATA_FC6_OUTPUT_ADDR_WIDTH(32),
    .C_M_AXI_DATA_FC6_OUTPUT_DATA_WIDTH(32),
    .C_M_AXI_DATA_FC6_OUTPUT_AWUSER_WIDTH(1),
    .C_M_AXI_DATA_FC6_OUTPUT_ARUSER_WIDTH(1),
    .C_M_AXI_DATA_FC6_OUTPUT_WUSER_WIDTH(1),
    .C_M_AXI_DATA_FC6_OUTPUT_RUSER_WIDTH(1),
    .C_M_AXI_DATA_FC6_OUTPUT_BUSER_WIDTH(1),
    .C_M_AXI_DATA_FC6_OUTPUT_USER_VALUE('H00000000),
    .C_M_AXI_DATA_FC6_OUTPUT_PROT_VALUE('B000),
    .C_M_AXI_DATA_FC6_OUTPUT_CACHE_VALUE('B0011)
  ) inst (
    .s_axi_CTL_AWADDR(s_axi_CTL_AWADDR),
    .s_axi_CTL_AWVALID(s_axi_CTL_AWVALID),
    .s_axi_CTL_AWREADY(s_axi_CTL_AWREADY),
    .s_axi_CTL_WDATA(s_axi_CTL_WDATA),
    .s_axi_CTL_WSTRB(s_axi_CTL_WSTRB),
    .s_axi_CTL_WVALID(s_axi_CTL_WVALID),
    .s_axi_CTL_WREADY(s_axi_CTL_WREADY),
    .s_axi_CTL_BRESP(s_axi_CTL_BRESP),
    .s_axi_CTL_BVALID(s_axi_CTL_BVALID),
    .s_axi_CTL_BREADY(s_axi_CTL_BREADY),
    .s_axi_CTL_ARADDR(s_axi_CTL_ARADDR),
    .s_axi_CTL_ARVALID(s_axi_CTL_ARVALID),
    .s_axi_CTL_ARREADY(s_axi_CTL_ARREADY),
    .s_axi_CTL_RDATA(s_axi_CTL_RDATA),
    .s_axi_CTL_RRESP(s_axi_CTL_RRESP),
    .s_axi_CTL_RVALID(s_axi_CTL_RVALID),
    .s_axi_CTL_RREADY(s_axi_CTL_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_DATA_IMAGE_AWID(),
    .m_axi_DATA_IMAGE_AWADDR(m_axi_DATA_IMAGE_AWADDR),
    .m_axi_DATA_IMAGE_AWLEN(m_axi_DATA_IMAGE_AWLEN),
    .m_axi_DATA_IMAGE_AWSIZE(m_axi_DATA_IMAGE_AWSIZE),
    .m_axi_DATA_IMAGE_AWBURST(m_axi_DATA_IMAGE_AWBURST),
    .m_axi_DATA_IMAGE_AWLOCK(m_axi_DATA_IMAGE_AWLOCK),
    .m_axi_DATA_IMAGE_AWREGION(m_axi_DATA_IMAGE_AWREGION),
    .m_axi_DATA_IMAGE_AWCACHE(m_axi_DATA_IMAGE_AWCACHE),
    .m_axi_DATA_IMAGE_AWPROT(m_axi_DATA_IMAGE_AWPROT),
    .m_axi_DATA_IMAGE_AWQOS(m_axi_DATA_IMAGE_AWQOS),
    .m_axi_DATA_IMAGE_AWUSER(),
    .m_axi_DATA_IMAGE_AWVALID(m_axi_DATA_IMAGE_AWVALID),
    .m_axi_DATA_IMAGE_AWREADY(m_axi_DATA_IMAGE_AWREADY),
    .m_axi_DATA_IMAGE_WID(),
    .m_axi_DATA_IMAGE_WDATA(m_axi_DATA_IMAGE_WDATA),
    .m_axi_DATA_IMAGE_WSTRB(m_axi_DATA_IMAGE_WSTRB),
    .m_axi_DATA_IMAGE_WLAST(m_axi_DATA_IMAGE_WLAST),
    .m_axi_DATA_IMAGE_WUSER(),
    .m_axi_DATA_IMAGE_WVALID(m_axi_DATA_IMAGE_WVALID),
    .m_axi_DATA_IMAGE_WREADY(m_axi_DATA_IMAGE_WREADY),
    .m_axi_DATA_IMAGE_BID(1'B0),
    .m_axi_DATA_IMAGE_BRESP(m_axi_DATA_IMAGE_BRESP),
    .m_axi_DATA_IMAGE_BUSER(1'B0),
    .m_axi_DATA_IMAGE_BVALID(m_axi_DATA_IMAGE_BVALID),
    .m_axi_DATA_IMAGE_BREADY(m_axi_DATA_IMAGE_BREADY),
    .m_axi_DATA_IMAGE_ARID(),
    .m_axi_DATA_IMAGE_ARADDR(m_axi_DATA_IMAGE_ARADDR),
    .m_axi_DATA_IMAGE_ARLEN(m_axi_DATA_IMAGE_ARLEN),
    .m_axi_DATA_IMAGE_ARSIZE(m_axi_DATA_IMAGE_ARSIZE),
    .m_axi_DATA_IMAGE_ARBURST(m_axi_DATA_IMAGE_ARBURST),
    .m_axi_DATA_IMAGE_ARLOCK(m_axi_DATA_IMAGE_ARLOCK),
    .m_axi_DATA_IMAGE_ARREGION(m_axi_DATA_IMAGE_ARREGION),
    .m_axi_DATA_IMAGE_ARCACHE(m_axi_DATA_IMAGE_ARCACHE),
    .m_axi_DATA_IMAGE_ARPROT(m_axi_DATA_IMAGE_ARPROT),
    .m_axi_DATA_IMAGE_ARQOS(m_axi_DATA_IMAGE_ARQOS),
    .m_axi_DATA_IMAGE_ARUSER(),
    .m_axi_DATA_IMAGE_ARVALID(m_axi_DATA_IMAGE_ARVALID),
    .m_axi_DATA_IMAGE_ARREADY(m_axi_DATA_IMAGE_ARREADY),
    .m_axi_DATA_IMAGE_RID(1'B0),
    .m_axi_DATA_IMAGE_RDATA(m_axi_DATA_IMAGE_RDATA),
    .m_axi_DATA_IMAGE_RRESP(m_axi_DATA_IMAGE_RRESP),
    .m_axi_DATA_IMAGE_RLAST(m_axi_DATA_IMAGE_RLAST),
    .m_axi_DATA_IMAGE_RUSER(1'B0),
    .m_axi_DATA_IMAGE_RVALID(m_axi_DATA_IMAGE_RVALID),
    .m_axi_DATA_IMAGE_RREADY(m_axi_DATA_IMAGE_RREADY),
    .m_axi_DATA_PARAMETERS_AWID(),
    .m_axi_DATA_PARAMETERS_AWADDR(m_axi_DATA_PARAMETERS_AWADDR),
    .m_axi_DATA_PARAMETERS_AWLEN(m_axi_DATA_PARAMETERS_AWLEN),
    .m_axi_DATA_PARAMETERS_AWSIZE(m_axi_DATA_PARAMETERS_AWSIZE),
    .m_axi_DATA_PARAMETERS_AWBURST(m_axi_DATA_PARAMETERS_AWBURST),
    .m_axi_DATA_PARAMETERS_AWLOCK(m_axi_DATA_PARAMETERS_AWLOCK),
    .m_axi_DATA_PARAMETERS_AWREGION(m_axi_DATA_PARAMETERS_AWREGION),
    .m_axi_DATA_PARAMETERS_AWCACHE(m_axi_DATA_PARAMETERS_AWCACHE),
    .m_axi_DATA_PARAMETERS_AWPROT(m_axi_DATA_PARAMETERS_AWPROT),
    .m_axi_DATA_PARAMETERS_AWQOS(m_axi_DATA_PARAMETERS_AWQOS),
    .m_axi_DATA_PARAMETERS_AWUSER(),
    .m_axi_DATA_PARAMETERS_AWVALID(m_axi_DATA_PARAMETERS_AWVALID),
    .m_axi_DATA_PARAMETERS_AWREADY(m_axi_DATA_PARAMETERS_AWREADY),
    .m_axi_DATA_PARAMETERS_WID(),
    .m_axi_DATA_PARAMETERS_WDATA(m_axi_DATA_PARAMETERS_WDATA),
    .m_axi_DATA_PARAMETERS_WSTRB(m_axi_DATA_PARAMETERS_WSTRB),
    .m_axi_DATA_PARAMETERS_WLAST(m_axi_DATA_PARAMETERS_WLAST),
    .m_axi_DATA_PARAMETERS_WUSER(),
    .m_axi_DATA_PARAMETERS_WVALID(m_axi_DATA_PARAMETERS_WVALID),
    .m_axi_DATA_PARAMETERS_WREADY(m_axi_DATA_PARAMETERS_WREADY),
    .m_axi_DATA_PARAMETERS_BID(1'B0),
    .m_axi_DATA_PARAMETERS_BRESP(m_axi_DATA_PARAMETERS_BRESP),
    .m_axi_DATA_PARAMETERS_BUSER(1'B0),
    .m_axi_DATA_PARAMETERS_BVALID(m_axi_DATA_PARAMETERS_BVALID),
    .m_axi_DATA_PARAMETERS_BREADY(m_axi_DATA_PARAMETERS_BREADY),
    .m_axi_DATA_PARAMETERS_ARID(),
    .m_axi_DATA_PARAMETERS_ARADDR(m_axi_DATA_PARAMETERS_ARADDR),
    .m_axi_DATA_PARAMETERS_ARLEN(m_axi_DATA_PARAMETERS_ARLEN),
    .m_axi_DATA_PARAMETERS_ARSIZE(m_axi_DATA_PARAMETERS_ARSIZE),
    .m_axi_DATA_PARAMETERS_ARBURST(m_axi_DATA_PARAMETERS_ARBURST),
    .m_axi_DATA_PARAMETERS_ARLOCK(m_axi_DATA_PARAMETERS_ARLOCK),
    .m_axi_DATA_PARAMETERS_ARREGION(m_axi_DATA_PARAMETERS_ARREGION),
    .m_axi_DATA_PARAMETERS_ARCACHE(m_axi_DATA_PARAMETERS_ARCACHE),
    .m_axi_DATA_PARAMETERS_ARPROT(m_axi_DATA_PARAMETERS_ARPROT),
    .m_axi_DATA_PARAMETERS_ARQOS(m_axi_DATA_PARAMETERS_ARQOS),
    .m_axi_DATA_PARAMETERS_ARUSER(),
    .m_axi_DATA_PARAMETERS_ARVALID(m_axi_DATA_PARAMETERS_ARVALID),
    .m_axi_DATA_PARAMETERS_ARREADY(m_axi_DATA_PARAMETERS_ARREADY),
    .m_axi_DATA_PARAMETERS_RID(1'B0),
    .m_axi_DATA_PARAMETERS_RDATA(m_axi_DATA_PARAMETERS_RDATA),
    .m_axi_DATA_PARAMETERS_RRESP(m_axi_DATA_PARAMETERS_RRESP),
    .m_axi_DATA_PARAMETERS_RLAST(m_axi_DATA_PARAMETERS_RLAST),
    .m_axi_DATA_PARAMETERS_RUSER(1'B0),
    .m_axi_DATA_PARAMETERS_RVALID(m_axi_DATA_PARAMETERS_RVALID),
    .m_axi_DATA_PARAMETERS_RREADY(m_axi_DATA_PARAMETERS_RREADY),
    .m_axi_DATA_FC6_OUTPUT_AWID(),
    .m_axi_DATA_FC6_OUTPUT_AWADDR(m_axi_DATA_FC6_OUTPUT_AWADDR),
    .m_axi_DATA_FC6_OUTPUT_AWLEN(m_axi_DATA_FC6_OUTPUT_AWLEN),
    .m_axi_DATA_FC6_OUTPUT_AWSIZE(m_axi_DATA_FC6_OUTPUT_AWSIZE),
    .m_axi_DATA_FC6_OUTPUT_AWBURST(m_axi_DATA_FC6_OUTPUT_AWBURST),
    .m_axi_DATA_FC6_OUTPUT_AWLOCK(m_axi_DATA_FC6_OUTPUT_AWLOCK),
    .m_axi_DATA_FC6_OUTPUT_AWREGION(m_axi_DATA_FC6_OUTPUT_AWREGION),
    .m_axi_DATA_FC6_OUTPUT_AWCACHE(m_axi_DATA_FC6_OUTPUT_AWCACHE),
    .m_axi_DATA_FC6_OUTPUT_AWPROT(m_axi_DATA_FC6_OUTPUT_AWPROT),
    .m_axi_DATA_FC6_OUTPUT_AWQOS(m_axi_DATA_FC6_OUTPUT_AWQOS),
    .m_axi_DATA_FC6_OUTPUT_AWUSER(),
    .m_axi_DATA_FC6_OUTPUT_AWVALID(m_axi_DATA_FC6_OUTPUT_AWVALID),
    .m_axi_DATA_FC6_OUTPUT_AWREADY(m_axi_DATA_FC6_OUTPUT_AWREADY),
    .m_axi_DATA_FC6_OUTPUT_WID(),
    .m_axi_DATA_FC6_OUTPUT_WDATA(m_axi_DATA_FC6_OUTPUT_WDATA),
    .m_axi_DATA_FC6_OUTPUT_WSTRB(m_axi_DATA_FC6_OUTPUT_WSTRB),
    .m_axi_DATA_FC6_OUTPUT_WLAST(m_axi_DATA_FC6_OUTPUT_WLAST),
    .m_axi_DATA_FC6_OUTPUT_WUSER(),
    .m_axi_DATA_FC6_OUTPUT_WVALID(m_axi_DATA_FC6_OUTPUT_WVALID),
    .m_axi_DATA_FC6_OUTPUT_WREADY(m_axi_DATA_FC6_OUTPUT_WREADY),
    .m_axi_DATA_FC6_OUTPUT_BID(1'B0),
    .m_axi_DATA_FC6_OUTPUT_BRESP(m_axi_DATA_FC6_OUTPUT_BRESP),
    .m_axi_DATA_FC6_OUTPUT_BUSER(1'B0),
    .m_axi_DATA_FC6_OUTPUT_BVALID(m_axi_DATA_FC6_OUTPUT_BVALID),
    .m_axi_DATA_FC6_OUTPUT_BREADY(m_axi_DATA_FC6_OUTPUT_BREADY),
    .m_axi_DATA_FC6_OUTPUT_ARID(),
    .m_axi_DATA_FC6_OUTPUT_ARADDR(m_axi_DATA_FC6_OUTPUT_ARADDR),
    .m_axi_DATA_FC6_OUTPUT_ARLEN(m_axi_DATA_FC6_OUTPUT_ARLEN),
    .m_axi_DATA_FC6_OUTPUT_ARSIZE(m_axi_DATA_FC6_OUTPUT_ARSIZE),
    .m_axi_DATA_FC6_OUTPUT_ARBURST(m_axi_DATA_FC6_OUTPUT_ARBURST),
    .m_axi_DATA_FC6_OUTPUT_ARLOCK(m_axi_DATA_FC6_OUTPUT_ARLOCK),
    .m_axi_DATA_FC6_OUTPUT_ARREGION(m_axi_DATA_FC6_OUTPUT_ARREGION),
    .m_axi_DATA_FC6_OUTPUT_ARCACHE(m_axi_DATA_FC6_OUTPUT_ARCACHE),
    .m_axi_DATA_FC6_OUTPUT_ARPROT(m_axi_DATA_FC6_OUTPUT_ARPROT),
    .m_axi_DATA_FC6_OUTPUT_ARQOS(m_axi_DATA_FC6_OUTPUT_ARQOS),
    .m_axi_DATA_FC6_OUTPUT_ARUSER(),
    .m_axi_DATA_FC6_OUTPUT_ARVALID(m_axi_DATA_FC6_OUTPUT_ARVALID),
    .m_axi_DATA_FC6_OUTPUT_ARREADY(m_axi_DATA_FC6_OUTPUT_ARREADY),
    .m_axi_DATA_FC6_OUTPUT_RID(1'B0),
    .m_axi_DATA_FC6_OUTPUT_RDATA(m_axi_DATA_FC6_OUTPUT_RDATA),
    .m_axi_DATA_FC6_OUTPUT_RRESP(m_axi_DATA_FC6_OUTPUT_RRESP),
    .m_axi_DATA_FC6_OUTPUT_RLAST(m_axi_DATA_FC6_OUTPUT_RLAST),
    .m_axi_DATA_FC6_OUTPUT_RUSER(1'B0),
    .m_axi_DATA_FC6_OUTPUT_RVALID(m_axi_DATA_FC6_OUTPUT_RVALID),
    .m_axi_DATA_FC6_OUTPUT_RREADY(m_axi_DATA_FC6_OUTPUT_RREADY)
  );
endmodule
