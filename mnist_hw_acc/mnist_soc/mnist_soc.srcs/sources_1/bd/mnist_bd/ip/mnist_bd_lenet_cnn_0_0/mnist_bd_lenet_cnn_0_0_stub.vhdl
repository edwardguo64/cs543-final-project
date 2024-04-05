-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Apr  3 22:15:50 2024
-- Host        : Edward-Desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mnist_bd_lenet_cnn_0_0 -prefix
--               mnist_bd_lenet_cnn_0_0_ mnist_bd_lenet_cnn_0_0_stub.vhdl
-- Design      : mnist_bd_lenet_cnn_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mnist_bd_lenet_cnn_0_0 is
  Port ( 
    s_axi_CTL_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTL_AWVALID : in STD_LOGIC;
    s_axi_CTL_AWREADY : out STD_LOGIC;
    s_axi_CTL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTL_WVALID : in STD_LOGIC;
    s_axi_CTL_WREADY : out STD_LOGIC;
    s_axi_CTL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTL_BVALID : out STD_LOGIC;
    s_axi_CTL_BREADY : in STD_LOGIC;
    s_axi_CTL_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTL_ARVALID : in STD_LOGIC;
    s_axi_CTL_ARREADY : out STD_LOGIC;
    s_axi_CTL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTL_RVALID : out STD_LOGIC;
    s_axi_CTL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_DATA_IMAGE_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_IMAGE_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_IMAGE_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_IMAGE_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_IMAGE_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_IMAGE_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_IMAGE_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_IMAGE_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_IMAGE_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_IMAGE_AWVALID : out STD_LOGIC;
    m_axi_DATA_IMAGE_AWREADY : in STD_LOGIC;
    m_axi_DATA_IMAGE_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_IMAGE_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_IMAGE_WLAST : out STD_LOGIC;
    m_axi_DATA_IMAGE_WVALID : out STD_LOGIC;
    m_axi_DATA_IMAGE_WREADY : in STD_LOGIC;
    m_axi_DATA_IMAGE_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_IMAGE_BVALID : in STD_LOGIC;
    m_axi_DATA_IMAGE_BREADY : out STD_LOGIC;
    m_axi_DATA_IMAGE_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_IMAGE_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_IMAGE_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_IMAGE_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_IMAGE_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_IMAGE_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_IMAGE_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_IMAGE_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_IMAGE_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_IMAGE_ARVALID : out STD_LOGIC;
    m_axi_DATA_IMAGE_ARREADY : in STD_LOGIC;
    m_axi_DATA_IMAGE_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_IMAGE_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_IMAGE_RLAST : in STD_LOGIC;
    m_axi_DATA_IMAGE_RVALID : in STD_LOGIC;
    m_axi_DATA_IMAGE_RREADY : out STD_LOGIC;
    m_axi_DATA_PARAMETERS_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_PARAMETERS_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_PARAMETERS_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_PARAMETERS_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_PARAMETERS_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_PARAMETERS_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_PARAMETERS_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_PARAMETERS_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_PARAMETERS_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_PARAMETERS_AWVALID : out STD_LOGIC;
    m_axi_DATA_PARAMETERS_AWREADY : in STD_LOGIC;
    m_axi_DATA_PARAMETERS_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_PARAMETERS_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_PARAMETERS_WLAST : out STD_LOGIC;
    m_axi_DATA_PARAMETERS_WVALID : out STD_LOGIC;
    m_axi_DATA_PARAMETERS_WREADY : in STD_LOGIC;
    m_axi_DATA_PARAMETERS_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_PARAMETERS_BVALID : in STD_LOGIC;
    m_axi_DATA_PARAMETERS_BREADY : out STD_LOGIC;
    m_axi_DATA_PARAMETERS_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_PARAMETERS_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_PARAMETERS_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_PARAMETERS_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_PARAMETERS_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_PARAMETERS_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_PARAMETERS_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_PARAMETERS_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_PARAMETERS_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_PARAMETERS_ARVALID : out STD_LOGIC;
    m_axi_DATA_PARAMETERS_ARREADY : in STD_LOGIC;
    m_axi_DATA_PARAMETERS_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_PARAMETERS_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_PARAMETERS_RLAST : in STD_LOGIC;
    m_axi_DATA_PARAMETERS_RVALID : in STD_LOGIC;
    m_axi_DATA_PARAMETERS_RREADY : out STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_FC6_OUTPUT_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_FC6_OUTPUT_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_FC6_OUTPUT_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_FC6_OUTPUT_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_FC6_OUTPUT_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_FC6_OUTPUT_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_FC6_OUTPUT_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_FC6_OUTPUT_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_FC6_OUTPUT_AWVALID : out STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_AWREADY : in STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_FC6_OUTPUT_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_FC6_OUTPUT_WLAST : out STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_WVALID : out STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_WREADY : in STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_FC6_OUTPUT_BVALID : in STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_BREADY : out STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_FC6_OUTPUT_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_FC6_OUTPUT_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_FC6_OUTPUT_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_FC6_OUTPUT_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_FC6_OUTPUT_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_FC6_OUTPUT_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_FC6_OUTPUT_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_FC6_OUTPUT_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_FC6_OUTPUT_ARVALID : out STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_ARREADY : in STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_FC6_OUTPUT_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_FC6_OUTPUT_RLAST : in STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_RVALID : in STD_LOGIC;
    m_axi_DATA_FC6_OUTPUT_RREADY : out STD_LOGIC
  );

end mnist_bd_lenet_cnn_0_0;

architecture stub of mnist_bd_lenet_cnn_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTL_AWADDR[5:0],s_axi_CTL_AWVALID,s_axi_CTL_AWREADY,s_axi_CTL_WDATA[31:0],s_axi_CTL_WSTRB[3:0],s_axi_CTL_WVALID,s_axi_CTL_WREADY,s_axi_CTL_BRESP[1:0],s_axi_CTL_BVALID,s_axi_CTL_BREADY,s_axi_CTL_ARADDR[5:0],s_axi_CTL_ARVALID,s_axi_CTL_ARREADY,s_axi_CTL_RDATA[31:0],s_axi_CTL_RRESP[1:0],s_axi_CTL_RVALID,s_axi_CTL_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_DATA_IMAGE_AWADDR[31:0],m_axi_DATA_IMAGE_AWLEN[7:0],m_axi_DATA_IMAGE_AWSIZE[2:0],m_axi_DATA_IMAGE_AWBURST[1:0],m_axi_DATA_IMAGE_AWLOCK[1:0],m_axi_DATA_IMAGE_AWREGION[3:0],m_axi_DATA_IMAGE_AWCACHE[3:0],m_axi_DATA_IMAGE_AWPROT[2:0],m_axi_DATA_IMAGE_AWQOS[3:0],m_axi_DATA_IMAGE_AWVALID,m_axi_DATA_IMAGE_AWREADY,m_axi_DATA_IMAGE_WDATA[31:0],m_axi_DATA_IMAGE_WSTRB[3:0],m_axi_DATA_IMAGE_WLAST,m_axi_DATA_IMAGE_WVALID,m_axi_DATA_IMAGE_WREADY,m_axi_DATA_IMAGE_BRESP[1:0],m_axi_DATA_IMAGE_BVALID,m_axi_DATA_IMAGE_BREADY,m_axi_DATA_IMAGE_ARADDR[31:0],m_axi_DATA_IMAGE_ARLEN[7:0],m_axi_DATA_IMAGE_ARSIZE[2:0],m_axi_DATA_IMAGE_ARBURST[1:0],m_axi_DATA_IMAGE_ARLOCK[1:0],m_axi_DATA_IMAGE_ARREGION[3:0],m_axi_DATA_IMAGE_ARCACHE[3:0],m_axi_DATA_IMAGE_ARPROT[2:0],m_axi_DATA_IMAGE_ARQOS[3:0],m_axi_DATA_IMAGE_ARVALID,m_axi_DATA_IMAGE_ARREADY,m_axi_DATA_IMAGE_RDATA[31:0],m_axi_DATA_IMAGE_RRESP[1:0],m_axi_DATA_IMAGE_RLAST,m_axi_DATA_IMAGE_RVALID,m_axi_DATA_IMAGE_RREADY,m_axi_DATA_PARAMETERS_AWADDR[31:0],m_axi_DATA_PARAMETERS_AWLEN[7:0],m_axi_DATA_PARAMETERS_AWSIZE[2:0],m_axi_DATA_PARAMETERS_AWBURST[1:0],m_axi_DATA_PARAMETERS_AWLOCK[1:0],m_axi_DATA_PARAMETERS_AWREGION[3:0],m_axi_DATA_PARAMETERS_AWCACHE[3:0],m_axi_DATA_PARAMETERS_AWPROT[2:0],m_axi_DATA_PARAMETERS_AWQOS[3:0],m_axi_DATA_PARAMETERS_AWVALID,m_axi_DATA_PARAMETERS_AWREADY,m_axi_DATA_PARAMETERS_WDATA[31:0],m_axi_DATA_PARAMETERS_WSTRB[3:0],m_axi_DATA_PARAMETERS_WLAST,m_axi_DATA_PARAMETERS_WVALID,m_axi_DATA_PARAMETERS_WREADY,m_axi_DATA_PARAMETERS_BRESP[1:0],m_axi_DATA_PARAMETERS_BVALID,m_axi_DATA_PARAMETERS_BREADY,m_axi_DATA_PARAMETERS_ARADDR[31:0],m_axi_DATA_PARAMETERS_ARLEN[7:0],m_axi_DATA_PARAMETERS_ARSIZE[2:0],m_axi_DATA_PARAMETERS_ARBURST[1:0],m_axi_DATA_PARAMETERS_ARLOCK[1:0],m_axi_DATA_PARAMETERS_ARREGION[3:0],m_axi_DATA_PARAMETERS_ARCACHE[3:0],m_axi_DATA_PARAMETERS_ARPROT[2:0],m_axi_DATA_PARAMETERS_ARQOS[3:0],m_axi_DATA_PARAMETERS_ARVALID,m_axi_DATA_PARAMETERS_ARREADY,m_axi_DATA_PARAMETERS_RDATA[31:0],m_axi_DATA_PARAMETERS_RRESP[1:0],m_axi_DATA_PARAMETERS_RLAST,m_axi_DATA_PARAMETERS_RVALID,m_axi_DATA_PARAMETERS_RREADY,m_axi_DATA_FC6_OUTPUT_AWADDR[31:0],m_axi_DATA_FC6_OUTPUT_AWLEN[7:0],m_axi_DATA_FC6_OUTPUT_AWSIZE[2:0],m_axi_DATA_FC6_OUTPUT_AWBURST[1:0],m_axi_DATA_FC6_OUTPUT_AWLOCK[1:0],m_axi_DATA_FC6_OUTPUT_AWREGION[3:0],m_axi_DATA_FC6_OUTPUT_AWCACHE[3:0],m_axi_DATA_FC6_OUTPUT_AWPROT[2:0],m_axi_DATA_FC6_OUTPUT_AWQOS[3:0],m_axi_DATA_FC6_OUTPUT_AWVALID,m_axi_DATA_FC6_OUTPUT_AWREADY,m_axi_DATA_FC6_OUTPUT_WDATA[31:0],m_axi_DATA_FC6_OUTPUT_WSTRB[3:0],m_axi_DATA_FC6_OUTPUT_WLAST,m_axi_DATA_FC6_OUTPUT_WVALID,m_axi_DATA_FC6_OUTPUT_WREADY,m_axi_DATA_FC6_OUTPUT_BRESP[1:0],m_axi_DATA_FC6_OUTPUT_BVALID,m_axi_DATA_FC6_OUTPUT_BREADY,m_axi_DATA_FC6_OUTPUT_ARADDR[31:0],m_axi_DATA_FC6_OUTPUT_ARLEN[7:0],m_axi_DATA_FC6_OUTPUT_ARSIZE[2:0],m_axi_DATA_FC6_OUTPUT_ARBURST[1:0],m_axi_DATA_FC6_OUTPUT_ARLOCK[1:0],m_axi_DATA_FC6_OUTPUT_ARREGION[3:0],m_axi_DATA_FC6_OUTPUT_ARCACHE[3:0],m_axi_DATA_FC6_OUTPUT_ARPROT[2:0],m_axi_DATA_FC6_OUTPUT_ARQOS[3:0],m_axi_DATA_FC6_OUTPUT_ARVALID,m_axi_DATA_FC6_OUTPUT_ARREADY,m_axi_DATA_FC6_OUTPUT_RDATA[31:0],m_axi_DATA_FC6_OUTPUT_RRESP[1:0],m_axi_DATA_FC6_OUTPUT_RLAST,m_axi_DATA_FC6_OUTPUT_RVALID,m_axi_DATA_FC6_OUTPUT_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "lenet_cnn,Vivado 2019.1";
begin
end;
