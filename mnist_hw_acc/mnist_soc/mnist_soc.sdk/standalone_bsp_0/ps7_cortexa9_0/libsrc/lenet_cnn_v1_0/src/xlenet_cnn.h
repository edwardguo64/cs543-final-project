// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLENET_CNN_H
#define XLENET_CNN_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xlenet_cnn_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctl_BaseAddress;
} XLenet_cnn_Config;
#endif

typedef struct {
    u32 Ctl_BaseAddress;
    u32 IsReady;
} XLenet_cnn;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLenet_cnn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLenet_cnn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLenet_cnn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLenet_cnn_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XLenet_cnn_Initialize(XLenet_cnn *InstancePtr, u16 DeviceId);
XLenet_cnn_Config* XLenet_cnn_LookupConfig(u16 DeviceId);
int XLenet_cnn_CfgInitialize(XLenet_cnn *InstancePtr, XLenet_cnn_Config *ConfigPtr);
#else
int XLenet_cnn_Initialize(XLenet_cnn *InstancePtr, const char* InstanceName);
int XLenet_cnn_Release(XLenet_cnn *InstancePtr);
#endif

void XLenet_cnn_Start(XLenet_cnn *InstancePtr);
u32 XLenet_cnn_IsDone(XLenet_cnn *InstancePtr);
u32 XLenet_cnn_IsIdle(XLenet_cnn *InstancePtr);
u32 XLenet_cnn_IsReady(XLenet_cnn *InstancePtr);
void XLenet_cnn_EnableAutoRestart(XLenet_cnn *InstancePtr);
void XLenet_cnn_DisableAutoRestart(XLenet_cnn *InstancePtr);

void XLenet_cnn_Set_image_r(XLenet_cnn *InstancePtr, u32 Data);
u32 XLenet_cnn_Get_image_r(XLenet_cnn *InstancePtr);
void XLenet_cnn_Set_parameters(XLenet_cnn *InstancePtr, u32 Data);
u32 XLenet_cnn_Get_parameters(XLenet_cnn *InstancePtr);
void XLenet_cnn_Set_fc6_output(XLenet_cnn *InstancePtr, u32 Data);
u32 XLenet_cnn_Get_fc6_output(XLenet_cnn *InstancePtr);

void XLenet_cnn_InterruptGlobalEnable(XLenet_cnn *InstancePtr);
void XLenet_cnn_InterruptGlobalDisable(XLenet_cnn *InstancePtr);
void XLenet_cnn_InterruptEnable(XLenet_cnn *InstancePtr, u32 Mask);
void XLenet_cnn_InterruptDisable(XLenet_cnn *InstancePtr, u32 Mask);
void XLenet_cnn_InterruptClear(XLenet_cnn *InstancePtr, u32 Mask);
u32 XLenet_cnn_InterruptGetEnabled(XLenet_cnn *InstancePtr);
u32 XLenet_cnn_InterruptGetStatus(XLenet_cnn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
