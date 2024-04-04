set moduleName lenet_cnn
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {lenet_cnn}
set C_modelType { void 0 }
set C_modelArgList {
	{ DATA_IMAGE float 32 regular {axi_master 0}  }
	{ DATA_PARAMETERS float 32 regular {axi_master 0}  }
	{ DATA_FC6_OUTPUT float 32 regular {axi_master 1}  }
	{ image_r int 32 regular {axi_slave 0}  }
	{ parameters int 32 regular {axi_slave 0}  }
	{ fc6_output int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DATA_IMAGE", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "image","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "image_r","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 31,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "DATA_PARAMETERS", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "parameters","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "parameters","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 51901,"step" : 1}]}]}]} , 
 	{ "Name" : "DATA_FC6_OUTPUT", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fc6_output","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "fc6_output","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "image_r", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "parameters", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "fc6_output", "interface" : "axi_slave", "bundle":"CTL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_DATA_IMAGE_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_IMAGE_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IMAGE_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_IMAGE_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_IMAGE_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_IMAGE_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_IMAGE_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IMAGE_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_IMAGE_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IMAGE_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IMAGE_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IMAGE_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_IMAGE_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IMAGE_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IMAGE_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IMAGE_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_IMAGE_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IMAGE_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_IMAGE_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_IMAGE_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_IMAGE_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_IMAGE_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IMAGE_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_IMAGE_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IMAGE_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_IMAGE_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_IMAGE_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_DATA_IMAGE_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_IMAGE_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_IMAGE_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_IMAGE_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_IMAGE_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_IMAGE_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_IMAGE_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_PARAMETERS_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_PARAMETERS_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_PARAMETERS_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_PARAMETERS_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_DATA_PARAMETERS_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_DATA_PARAMETERS_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_PARAMETERS_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_DATA_PARAMETERS_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_PARAMETERS_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_DATA_FC6_OUTPUT_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_DATA_FC6_OUTPUT_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_CTL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTL", "role": "AWADDR" },"address":[{"name":"lenet_cnn","role":"start","value":"0","valid_bit":"0"},{"name":"lenet_cnn","role":"continue","value":"0","valid_bit":"4"},{"name":"lenet_cnn","role":"auto_start","value":"0","valid_bit":"7"},{"name":"image_r","role":"data","value":"16"},{"name":"parameters","role":"data","value":"24"},{"name":"fc6_output","role":"data","value":"32"}] },
	{ "name": "s_axi_CTL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "AWVALID" } },
	{ "name": "s_axi_CTL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "AWREADY" } },
	{ "name": "s_axi_CTL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "WVALID" } },
	{ "name": "s_axi_CTL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "WREADY" } },
	{ "name": "s_axi_CTL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTL", "role": "WDATA" } },
	{ "name": "s_axi_CTL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTL", "role": "WSTRB" } },
	{ "name": "s_axi_CTL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTL", "role": "ARADDR" },"address":[{"name":"lenet_cnn","role":"start","value":"0","valid_bit":"0"},{"name":"lenet_cnn","role":"done","value":"0","valid_bit":"1"},{"name":"lenet_cnn","role":"idle","value":"0","valid_bit":"2"},{"name":"lenet_cnn","role":"ready","value":"0","valid_bit":"3"},{"name":"lenet_cnn","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "ARVALID" } },
	{ "name": "s_axi_CTL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "ARREADY" } },
	{ "name": "s_axi_CTL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "RVALID" } },
	{ "name": "s_axi_CTL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "RREADY" } },
	{ "name": "s_axi_CTL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTL", "role": "RDATA" } },
	{ "name": "s_axi_CTL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTL", "role": "RRESP" } },
	{ "name": "s_axi_CTL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "BVALID" } },
	{ "name": "s_axi_CTL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "BREADY" } },
	{ "name": "s_axi_CTL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_IMAGE_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_IMAGE_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_IMAGE_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_IMAGE_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_IMAGE_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_IMAGE_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_IMAGE_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_IMAGE_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_IMAGE_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_IMAGE_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_IMAGE_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_IMAGE_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_IMAGE_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_IMAGE_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_IMAGE_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_IMAGE_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_IMAGE", "role": "BUSER" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_PARAMETERS_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_PARAMETERS", "role": "BUSER" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_FC6_OUTPUT_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_FC6_OUTPUT", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "26", "30", "34", "36", "38", "39", "40"],
		"CDFG" : "lenet_cnn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "549064", "EstimateLatencyMax" : "550264",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution3_fu_764"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution5_fu_772"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution1_fu_780"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_max_pooling2_fu_790"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_max_pooling4_fu_796"}],
		"Port" : [
			{"Name" : "DATA_IMAGE", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_convolution1_fu_780", "Port" : "input_r"}]},
			{"Name" : "DATA_PARAMETERS", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "DATA_PARAMETERS_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "DATA_PARAMETERS_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "DATA_FC6_OUTPUT", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DATA_FC6_OUTPUT_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "DATA_FC6_OUTPUT_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "DATA_FC6_OUTPUT_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "image_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "parameters", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc6_output", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet_cnn_CTL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet_cnn_DATA_IMAGE_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet_cnn_DATA_PARAMETERS_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet_cnn_DATA_FC6_OUTPUT_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_weights_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_bias_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3_weights_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3_bias_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv5_weights_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv5_bias_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc6_weights_0_0_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc6_bias_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_assign_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_output_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool2_output_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv3_output_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool4_output_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv5_output_0_0_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution3_fu_764", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25"],
		"CDFG" : "convolution3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120690", "EstimateLatencyMax" : "120690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution3_fu_764.lenet_cnn_fadd_32bkb_U15", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution3_fu_764.lenet_cnn_fadd_32bkb_U16", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution3_fu_764.lenet_cnn_fmul_32cud_U17", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution3_fu_764.lenet_cnn_fmul_32cud_U18", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution3_fu_764.lenet_cnn_fcmp_32dEe_U19", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution3_fu_764.lenet_cnn_mul_muleOg_U20", "Parent" : "19"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution5_fu_772", "Parent" : "0", "Child" : ["27", "28", "29"],
		"CDFG" : "convolution5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "244801", "EstimateLatencyMax" : "246001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_0_0", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution5_fu_772.lenet_cnn_fadd_32bkb_U29", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution5_fu_772.lenet_cnn_fmul_32cud_U30", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution5_fu_772.lenet_cnn_fcmp_32dEe_U31", "Parent" : "26"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fu_780", "Parent" : "0", "Child" : ["31", "32", "33"],
		"CDFG" : "convolution1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "117721", "EstimateLatencyMax" : "117721",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "input_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "input_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fu_780.lenet_cnn_fadd_32bkb_U1", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fu_780.lenet_cnn_fmul_32cud_U2", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fu_780.lenet_cnn_fcmp_32dEe_U3", "Parent" : "30"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_max_pooling2_fu_790", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "max_pooling2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9416", "EstimateLatencyMax" : "9416",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_max_pooling2_fu_790.lenet_cnn_fcmp_32dEe_U12", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_max_pooling4_fu_796", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "max_pooling4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3208", "EstimateLatencyMax" : "3208",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_max_pooling4_fu_796.lenet_cnn_fcmp_32dEe_U26", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet_cnn_fadd_32bkb_U36", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet_cnn_fmul_32cud_U37", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet_cnn_urem_5nsc4_U38", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lenet_cnn {
		DATA_IMAGE {Type I LastRead 33 FirstWrite -1}
		DATA_PARAMETERS {Type I LastRead 72 FirstWrite -1}
		DATA_FC6_OUTPUT {Type O LastRead 85 FirstWrite 86}
		image_r {Type I LastRead 0 FirstWrite -1}
		parameters {Type I LastRead 0 FirstWrite -1}
		fc6_output {Type I LastRead 0 FirstWrite -1}}
	convolution3 {
		input_r {Type I LastRead 77 FirstWrite -1}
		weights {Type I LastRead 77 FirstWrite -1}
		bias {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 764}}
	convolution5 {
		input_r {Type I LastRead 397 FirstWrite -1}
		weights {Type I LastRead 397 FirstWrite -1}
		bias {Type I LastRead 6 FirstWrite -1}
		output_0_0 {Type O LastRead -1 FirstWrite 410}}
	convolution1 {
		input_r {Type I LastRead 33 FirstWrite -1}
		input_offset {Type I LastRead 0 FirstWrite -1}
		weights_0 {Type I LastRead 15 FirstWrite -1}
		bias {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 145}}
	max_pooling2 {
		input_r {Type I LastRead 3 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 9}}
	max_pooling4 {
		input_r {Type I LastRead 3 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "549064", "Max" : "550264"}
	, {"Name" : "Interval", "Min" : "549065", "Max" : "550265"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
	{"Pipeline" : "9", "EnableSignal" : "ap_enable_pp9"}
]}

set Spec2ImplPortList { 
	DATA_IMAGE { m_axi {  { m_axi_DATA_IMAGE_AWVALID VALID 1 1 }  { m_axi_DATA_IMAGE_AWREADY READY 0 1 }  { m_axi_DATA_IMAGE_AWADDR ADDR 1 32 }  { m_axi_DATA_IMAGE_AWID ID 1 1 }  { m_axi_DATA_IMAGE_AWLEN LEN 1 8 }  { m_axi_DATA_IMAGE_AWSIZE SIZE 1 3 }  { m_axi_DATA_IMAGE_AWBURST BURST 1 2 }  { m_axi_DATA_IMAGE_AWLOCK LOCK 1 2 }  { m_axi_DATA_IMAGE_AWCACHE CACHE 1 4 }  { m_axi_DATA_IMAGE_AWPROT PROT 1 3 }  { m_axi_DATA_IMAGE_AWQOS QOS 1 4 }  { m_axi_DATA_IMAGE_AWREGION REGION 1 4 }  { m_axi_DATA_IMAGE_AWUSER USER 1 1 }  { m_axi_DATA_IMAGE_WVALID VALID 1 1 }  { m_axi_DATA_IMAGE_WREADY READY 0 1 }  { m_axi_DATA_IMAGE_WDATA DATA 1 32 }  { m_axi_DATA_IMAGE_WSTRB STRB 1 4 }  { m_axi_DATA_IMAGE_WLAST LAST 1 1 }  { m_axi_DATA_IMAGE_WID ID 1 1 }  { m_axi_DATA_IMAGE_WUSER USER 1 1 }  { m_axi_DATA_IMAGE_ARVALID VALID 1 1 }  { m_axi_DATA_IMAGE_ARREADY READY 0 1 }  { m_axi_DATA_IMAGE_ARADDR ADDR 1 32 }  { m_axi_DATA_IMAGE_ARID ID 1 1 }  { m_axi_DATA_IMAGE_ARLEN LEN 1 8 }  { m_axi_DATA_IMAGE_ARSIZE SIZE 1 3 }  { m_axi_DATA_IMAGE_ARBURST BURST 1 2 }  { m_axi_DATA_IMAGE_ARLOCK LOCK 1 2 }  { m_axi_DATA_IMAGE_ARCACHE CACHE 1 4 }  { m_axi_DATA_IMAGE_ARPROT PROT 1 3 }  { m_axi_DATA_IMAGE_ARQOS QOS 1 4 }  { m_axi_DATA_IMAGE_ARREGION REGION 1 4 }  { m_axi_DATA_IMAGE_ARUSER USER 1 1 }  { m_axi_DATA_IMAGE_RVALID VALID 0 1 }  { m_axi_DATA_IMAGE_RREADY READY 1 1 }  { m_axi_DATA_IMAGE_RDATA DATA 0 32 }  { m_axi_DATA_IMAGE_RLAST LAST 0 1 }  { m_axi_DATA_IMAGE_RID ID 0 1 }  { m_axi_DATA_IMAGE_RUSER USER 0 1 }  { m_axi_DATA_IMAGE_RRESP RESP 0 2 }  { m_axi_DATA_IMAGE_BVALID VALID 0 1 }  { m_axi_DATA_IMAGE_BREADY READY 1 1 }  { m_axi_DATA_IMAGE_BRESP RESP 0 2 }  { m_axi_DATA_IMAGE_BID ID 0 1 }  { m_axi_DATA_IMAGE_BUSER USER 0 1 } } }
	DATA_PARAMETERS { m_axi {  { m_axi_DATA_PARAMETERS_AWVALID VALID 1 1 }  { m_axi_DATA_PARAMETERS_AWREADY READY 0 1 }  { m_axi_DATA_PARAMETERS_AWADDR ADDR 1 32 }  { m_axi_DATA_PARAMETERS_AWID ID 1 1 }  { m_axi_DATA_PARAMETERS_AWLEN LEN 1 8 }  { m_axi_DATA_PARAMETERS_AWSIZE SIZE 1 3 }  { m_axi_DATA_PARAMETERS_AWBURST BURST 1 2 }  { m_axi_DATA_PARAMETERS_AWLOCK LOCK 1 2 }  { m_axi_DATA_PARAMETERS_AWCACHE CACHE 1 4 }  { m_axi_DATA_PARAMETERS_AWPROT PROT 1 3 }  { m_axi_DATA_PARAMETERS_AWQOS QOS 1 4 }  { m_axi_DATA_PARAMETERS_AWREGION REGION 1 4 }  { m_axi_DATA_PARAMETERS_AWUSER USER 1 1 }  { m_axi_DATA_PARAMETERS_WVALID VALID 1 1 }  { m_axi_DATA_PARAMETERS_WREADY READY 0 1 }  { m_axi_DATA_PARAMETERS_WDATA DATA 1 32 }  { m_axi_DATA_PARAMETERS_WSTRB STRB 1 4 }  { m_axi_DATA_PARAMETERS_WLAST LAST 1 1 }  { m_axi_DATA_PARAMETERS_WID ID 1 1 }  { m_axi_DATA_PARAMETERS_WUSER USER 1 1 }  { m_axi_DATA_PARAMETERS_ARVALID VALID 1 1 }  { m_axi_DATA_PARAMETERS_ARREADY READY 0 1 }  { m_axi_DATA_PARAMETERS_ARADDR ADDR 1 32 }  { m_axi_DATA_PARAMETERS_ARID ID 1 1 }  { m_axi_DATA_PARAMETERS_ARLEN LEN 1 8 }  { m_axi_DATA_PARAMETERS_ARSIZE SIZE 1 3 }  { m_axi_DATA_PARAMETERS_ARBURST BURST 1 2 }  { m_axi_DATA_PARAMETERS_ARLOCK LOCK 1 2 }  { m_axi_DATA_PARAMETERS_ARCACHE CACHE 1 4 }  { m_axi_DATA_PARAMETERS_ARPROT PROT 1 3 }  { m_axi_DATA_PARAMETERS_ARQOS QOS 1 4 }  { m_axi_DATA_PARAMETERS_ARREGION REGION 1 4 }  { m_axi_DATA_PARAMETERS_ARUSER USER 1 1 }  { m_axi_DATA_PARAMETERS_RVALID VALID 0 1 }  { m_axi_DATA_PARAMETERS_RREADY READY 1 1 }  { m_axi_DATA_PARAMETERS_RDATA DATA 0 32 }  { m_axi_DATA_PARAMETERS_RLAST LAST 0 1 }  { m_axi_DATA_PARAMETERS_RID ID 0 1 }  { m_axi_DATA_PARAMETERS_RUSER USER 0 1 }  { m_axi_DATA_PARAMETERS_RRESP RESP 0 2 }  { m_axi_DATA_PARAMETERS_BVALID VALID 0 1 }  { m_axi_DATA_PARAMETERS_BREADY READY 1 1 }  { m_axi_DATA_PARAMETERS_BRESP RESP 0 2 }  { m_axi_DATA_PARAMETERS_BID ID 0 1 }  { m_axi_DATA_PARAMETERS_BUSER USER 0 1 } } }
	DATA_FC6_OUTPUT { m_axi {  { m_axi_DATA_FC6_OUTPUT_AWVALID VALID 1 1 }  { m_axi_DATA_FC6_OUTPUT_AWREADY READY 0 1 }  { m_axi_DATA_FC6_OUTPUT_AWADDR ADDR 1 32 }  { m_axi_DATA_FC6_OUTPUT_AWID ID 1 1 }  { m_axi_DATA_FC6_OUTPUT_AWLEN LEN 1 8 }  { m_axi_DATA_FC6_OUTPUT_AWSIZE SIZE 1 3 }  { m_axi_DATA_FC6_OUTPUT_AWBURST BURST 1 2 }  { m_axi_DATA_FC6_OUTPUT_AWLOCK LOCK 1 2 }  { m_axi_DATA_FC6_OUTPUT_AWCACHE CACHE 1 4 }  { m_axi_DATA_FC6_OUTPUT_AWPROT PROT 1 3 }  { m_axi_DATA_FC6_OUTPUT_AWQOS QOS 1 4 }  { m_axi_DATA_FC6_OUTPUT_AWREGION REGION 1 4 }  { m_axi_DATA_FC6_OUTPUT_AWUSER USER 1 1 }  { m_axi_DATA_FC6_OUTPUT_WVALID VALID 1 1 }  { m_axi_DATA_FC6_OUTPUT_WREADY READY 0 1 }  { m_axi_DATA_FC6_OUTPUT_WDATA DATA 1 32 }  { m_axi_DATA_FC6_OUTPUT_WSTRB STRB 1 4 }  { m_axi_DATA_FC6_OUTPUT_WLAST LAST 1 1 }  { m_axi_DATA_FC6_OUTPUT_WID ID 1 1 }  { m_axi_DATA_FC6_OUTPUT_WUSER USER 1 1 }  { m_axi_DATA_FC6_OUTPUT_ARVALID VALID 1 1 }  { m_axi_DATA_FC6_OUTPUT_ARREADY READY 0 1 }  { m_axi_DATA_FC6_OUTPUT_ARADDR ADDR 1 32 }  { m_axi_DATA_FC6_OUTPUT_ARID ID 1 1 }  { m_axi_DATA_FC6_OUTPUT_ARLEN LEN 1 8 }  { m_axi_DATA_FC6_OUTPUT_ARSIZE SIZE 1 3 }  { m_axi_DATA_FC6_OUTPUT_ARBURST BURST 1 2 }  { m_axi_DATA_FC6_OUTPUT_ARLOCK LOCK 1 2 }  { m_axi_DATA_FC6_OUTPUT_ARCACHE CACHE 1 4 }  { m_axi_DATA_FC6_OUTPUT_ARPROT PROT 1 3 }  { m_axi_DATA_FC6_OUTPUT_ARQOS QOS 1 4 }  { m_axi_DATA_FC6_OUTPUT_ARREGION REGION 1 4 }  { m_axi_DATA_FC6_OUTPUT_ARUSER USER 1 1 }  { m_axi_DATA_FC6_OUTPUT_RVALID VALID 0 1 }  { m_axi_DATA_FC6_OUTPUT_RREADY READY 1 1 }  { m_axi_DATA_FC6_OUTPUT_RDATA DATA 0 32 }  { m_axi_DATA_FC6_OUTPUT_RLAST LAST 0 1 }  { m_axi_DATA_FC6_OUTPUT_RID ID 0 1 }  { m_axi_DATA_FC6_OUTPUT_RUSER USER 0 1 }  { m_axi_DATA_FC6_OUTPUT_RRESP RESP 0 2 }  { m_axi_DATA_FC6_OUTPUT_BVALID VALID 0 1 }  { m_axi_DATA_FC6_OUTPUT_BREADY READY 1 1 }  { m_axi_DATA_FC6_OUTPUT_BRESP RESP 0 2 }  { m_axi_DATA_FC6_OUTPUT_BID ID 0 1 }  { m_axi_DATA_FC6_OUTPUT_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ DATA_IMAGE { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ DATA_PARAMETERS { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ DATA_FC6_OUTPUT { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ DATA_IMAGE 1 }
	{ DATA_PARAMETERS 1 }
	{ DATA_FC6_OUTPUT 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ DATA_IMAGE 1 }
	{ DATA_PARAMETERS 1 }
	{ DATA_FC6_OUTPUT 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
