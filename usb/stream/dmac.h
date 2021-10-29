#ifndef __DMAC_H_
#define __DMAC_H_

#include <stdio.h>
#include <sleep.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_io.h"

void SetRxDataTrigger();
void SetPacketTick();
void SetRxBaseAddress(u64 address);
u64 GetRxBaseAddress();

void SetRxLength(u32 length);
u32 GetRxLength();
void SetRxBurstCount(u32 count);
u32 GetRxBurstCount();
u32 GetRxBurstLength();
void SetRxSampleCount(u32 count);
u32 GetRxSampleCount();

void SetRxPacketLength(u32 length);
u32 GetRxPacketLength();

void SetRxSingleTransfer();
void SetRxLoopTransfer();
u32 GetRxTransferSetting();
void SetRxStartTransfer();
void SetRxStopTransfer();
u32 GetRxTransferStatus();
u32 GetRxBufferOccupation();
u8 GetRxStatus();


void SetTxBaseAddress(u64 address);

#endif
