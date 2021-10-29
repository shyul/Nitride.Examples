/*******************************************************************************/

/***************************** Include Files **********************************/


#include "dmac.h"

void SetRxDmacRegs(u8 offset, u32 data)
{
	UINTPTR address = 0x80000000 + (offset << 2);
	Xil_Out32(address, data);
}

u32 GetRxDmacRegs(u8 offset)
{
	UINTPTR  address = 0x80000000 + (offset << 2);
	return Xil_In32(address);
}

void SetRxDataTrigger()
{
	Xil_Out32(0x80000004, 0x1);
	while((Xil_In32(0x80000004) & 0x1) == 0x0) { usleep(10);}
	Xil_Out32(0x80000004, 0x0);
}

void SetPacketTick()
{
	Xil_Out32(0x80000004, 0x2);
	while(((Xil_In32(0x80000004) >> 1 )& 0x1) == 0x0) { usleep(10); }
	Xil_Out32(0x80000004, 0x0);
}

void SetRxBaseAddress(u64 address)
{
	SetRxDmacRegs(0x6, (u32)(address & 0xFFFFFFFF));
	SetRxDmacRegs(0x7, (u32)((u64)(address >> 32) & 0xFFFFFFFF));// set base address 0x800000000
}

u64 GetRxBaseAddress()
{
	u32 laddr = GetRxDmacRegs(0x6);
	u32 haddr = GetRxDmacRegs(0x7);

	return (u64)laddr + (((u64)haddr) << 32);
}

void SetRxLength(u32 length)
{
	SetRxDmacRegs(0x8, length);
}

u32 GetRxLength()
{
	return GetRxDmacRegs(0x8);
}

void SetRxBurstCount(u32 count)
{
	SetRxDmacRegs(0xE, count);
}

u32 GetRxBurstCount()
{
	return GetRxDmacRegs(0xE);
}

u32 GetRxBurstLength()
{
	return GetRxDmacRegs(0xD);
}

void SetRxSampleCount(u32 count)
{
	SetRxDmacRegs(0x4, count);
}

u32 GetRxSampleCount()
{
	return GetRxDmacRegs(0x4);
}

void SetRxPacketLength(u32 length)
{
	SetRxDmacRegs(0xC, length);
}

u32 GetRxPacketLength()
{
	return GetRxDmacRegs(0xC);
}

void SetRxSingleTransfer()
{
	SetRxDmacRegs(0x3, 0x1);
}

void SetRxLoopTransfer()
{
	SetRxDmacRegs(0x3, 0x0);
}

u32 GetRxTransferSetting()
{
	return GetRxDmacRegs(0x3);
}

void SetRxStartTransfer()
{
	SetRxDmacRegs(0x2, 0x0);
	usleep(10);
	SetRxDmacRegs(0x2, 0x2);
	usleep(10);
	SetRxDmacRegs(0x2, 0x3);
	usleep(10);
}

void SetRxStopTransfer()
{
	SetRxDmacRegs(0x2, 0x0);
	usleep(30);
}

u32 GetRxTransferStatus()
{
	return GetRxDmacRegs(0x2);
}


u32 GetRxBufferOccupation()
{
	return GetRxDmacRegs(0x9);
}



u8 GetRxStatus()
{
	return ((GetRxDmacRegs(0x2) >> 1) & 0x1) == 1 && GetRxBufferOccupation() < GetRxDmacRegs(0x8) ? 0 : 1;
}



void SetTxBaseAddress(u64 address)
{
	//SetTxDmacRegs(0x2, (u32)(address & 0xFFFFFFFF));
	//SetTxDmacRegs(0x7, (u32)((u64)(address >> 32) & 0xFFFFFFFF));// set base address 0x800000000
}

/*
 * //u64 baseAddress = 0x800000000U; // = (u64)((u64)GetRxDmacRegs(0x7) << 32) + (u64)GetRxDmacRegs(0x6);

void WaitForTransferEnd()
{
	while(((GetRxDmacRegs(0x2) >> 1) & 0x1) == 1 && GetBufferOccupation() < GetRxDmacRegs(0x8)) { usleep(100); }
	//while(((GetRxDmacRegs(0x2) >> 1) & 0x1) == 1) { usleep(100); }
	SetRxDmacRegs(0x2, 0x0);

	xil_printf("baseAddress = 0x%llx, occupation = 0x%x \r\n", baseAddress, GetBufferOccupation());
	Xil_DCacheInvalidateRange(baseAddress, 0x2000000);

	while (GetBufferOccupation() > 0)//(GetRxDmacRegs(0x8) - 2 * 65536))
	{
		usleep(100);
	}

	baseAddress = 0x800000000U;
}
 *
 * */
