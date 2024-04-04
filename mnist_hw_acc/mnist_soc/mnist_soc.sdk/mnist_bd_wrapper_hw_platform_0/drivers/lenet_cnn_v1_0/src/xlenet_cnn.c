// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xlenet_cnn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLenet_cnn_CfgInitialize(XLenet_cnn *InstancePtr, XLenet_cnn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctl_BaseAddress = ConfigPtr->Ctl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLenet_cnn_Start(XLenet_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_AP_CTRL) & 0x80;
    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLenet_cnn_IsDone(XLenet_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLenet_cnn_IsIdle(XLenet_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLenet_cnn_IsReady(XLenet_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLenet_cnn_EnableAutoRestart(XLenet_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_AP_CTRL, 0x80);
}

void XLenet_cnn_DisableAutoRestart(XLenet_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_AP_CTRL, 0);
}

void XLenet_cnn_Set_image_r(XLenet_cnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_IMAGE_R_DATA, Data);
}

u32 XLenet_cnn_Get_image_r(XLenet_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_IMAGE_R_DATA);
    return Data;
}

void XLenet_cnn_Set_parameters(XLenet_cnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_PARAMETERS_DATA, Data);
}

u32 XLenet_cnn_Get_parameters(XLenet_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_PARAMETERS_DATA);
    return Data;
}

void XLenet_cnn_Set_fc6_output(XLenet_cnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_FC6_OUTPUT_DATA, Data);
}

u32 XLenet_cnn_Get_fc6_output(XLenet_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_FC6_OUTPUT_DATA);
    return Data;
}

void XLenet_cnn_InterruptGlobalEnable(XLenet_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_GIE, 1);
}

void XLenet_cnn_InterruptGlobalDisable(XLenet_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_GIE, 0);
}

void XLenet_cnn_InterruptEnable(XLenet_cnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_IER);
    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_IER, Register | Mask);
}

void XLenet_cnn_InterruptDisable(XLenet_cnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_IER);
    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_IER, Register & (~Mask));
}

void XLenet_cnn_InterruptClear(XLenet_cnn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLenet_cnn_WriteReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_ISR, Mask);
}

u32 XLenet_cnn_InterruptGetEnabled(XLenet_cnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_IER);
}

u32 XLenet_cnn_InterruptGetStatus(XLenet_cnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLenet_cnn_ReadReg(InstancePtr->Ctl_BaseAddress, XLENET_CNN_CTL_ADDR_ISR);
}

