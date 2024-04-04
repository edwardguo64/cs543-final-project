// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlenet_cnn.h"

extern XLenet_cnn_Config XLenet_cnn_ConfigTable[];

XLenet_cnn_Config *XLenet_cnn_LookupConfig(u16 DeviceId) {
	XLenet_cnn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLENET_CNN_NUM_INSTANCES; Index++) {
		if (XLenet_cnn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLenet_cnn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLenet_cnn_Initialize(XLenet_cnn *InstancePtr, u16 DeviceId) {
	XLenet_cnn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLenet_cnn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLenet_cnn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

