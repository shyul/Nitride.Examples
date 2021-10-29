/******************************************************************************
* Copyright (C) 2010 - 2021 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/******************************************************************************/
/**
* @file xspips_selftest_example.c
*
* This file contains an example for using the SPI Hardware, it does a simple
* hardware connection check.
*
* @note
*
* None
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who    Date     Changes
* ----- ------ -------- -----------------------------------------------
* 1.00  drg/jz 01/25/10 First release.
* </pre>
*
*******************************************************************************/


// https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/968785932/USB+Device+for+PL+Data+Acquisition+on+Zynq+UltraScale+MPSoC


/***************************** Include Files **********************************/
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_io.h"

#include "xstatus.h"
#include "xplatform_info.h"
#include <sleep.h>

#include "usb.h"
#include "usb_setup.h"

#include "xil_exception.h"
#include "xscugic.h"


#include "gpio.h"
#include "spi.h"
#include "AD9544.h"
#include "AD9643.h"
#include "AD9142.h"
#include "dmac.h"

/************************** Constant Definitions ******************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

#define STREAM_COMMAND_SET_SINGLE_READ		0x1000
#define STREAM_COMMAND_SET_LOOP_READ		0x1001
#define STREAM_COMMAND_SET_READ_BASEADDR 	0x2000
#define STREAM_COMMAND_GET_READ_BASEADDR 	0x2001
#define STREAM_COMMAND_SET_READ_LENGTH		0x2002
#define STREAM_COMMAND_SET_READ_PACKET_LEN	0x2003
#define STREAM_COMMAND_START_READ			0x3000
#define STREAM_COMMAND_STOP_READ			0x4000
#define STREAM_COMMAND_READ_STATUS			0x5000
#define STREAM_COMMAND_READ_START_DMA		0x6000
#define STREAM_COMMAND_READ_TIGGER_DMA		0x6001
#define STREAM_COMMAND_READ_STOP_DMA		0x6002
#define STREAM_COMMAND_READ_DMA_STATUS		0x6010
#define STREAM_COMMAND_READ_BUF_OCCUP		0x6011

#define STREAM_COMMAND_SET_SINGLE_WRITE		0xA000
#define STREAM_COMMAND_SET_LOOP_WRITE		0xA001
#define STREAM_COMMAND_SET_WRITE_BASEADDR 	0xB000
#define STREAM_COMMAND_GET_WRITE_BASEADDR 	0xB001
#define STREAM_COMMAND_START_WRITE			0xC000
#define STREAM_COMMAND_STOP_WRITE			0xD000
#define STREAM_COMMAND_WRITE_STATUS			0xE000

#define STREAM_STATUS_ACK					0x600D

#define STREAM_STATE_IDLE		0x0
#define STREAM_STATE_SINGLE		0x1
#define STREAM_STATE_LOOP		0x2

/**************************** Type Definitions ********************************/

/***************** Macros (Inline Functions) Definitions **********************/

/************************** Function Prototypes *******************************/

void TxStreamBulkOutHandler(void *CallBackRef, u32 RequestedBytes, u32 BytesTxed);
void RxStreamBulkInHandler(void *CallBackRef, u32 RequestedBytes, u32 BytesTxed);
void InterruptInHandler(void *CallBackRef, u32 RequestedBytes, u32 BytesTxed);
void SendStatus(u16 command); // ACK + COMMAND + RESULT
void SendStatusU8(u16 command, u8 value);
void SendStatusU16(u16 command, u16 value);
void SendStatusU32(u16 command, u32 value);
void InterruptOutHandler(void *CallBackRef, u32 RequestedBytes, u32 BytesTxed);
int Init_USB();

/************************** Variable Definitions ******************************/

Usb_Config				*UsbConfigPtr;
struct Usb_DevData		UsbInstance;
struct XUsbPsu			PrivateData;

XScuGic					InterruptController;	/* Interrupt controller instance */

static USBCH9_DATA storage_data = {
		.ch9_func = {
				/* Set the chapter9 hooks */
				.Usb_Ch9SetupDevDescReply = Usb_Ch9SetupDevDescReply,
				.Usb_Ch9SetupCfgDescReply = Usb_Ch9SetupCfgDescReply,
				.Usb_Ch9SetupBosDescReply = Usb_Ch9SetupBosDescReply,
				.Usb_Ch9SetupStrDescReply = Usb_Ch9SetupStrDescReply,
				.Usb_SetConfiguration = Usb_SetConfiguration,
				.Usb_SetConfigurationApp = Usb_SetConfigurationApp,

				.Usb_SetInterfaceHandler = NULL,

				.Usb_ClassReq = NULL, //ClassReq,
				.Usb_GetDescReply = NULL,
		},
		.data_ptr = (void *)NULL,
};

u64 stream_read_buffer_address = 0x800000000;
u32	stream_read_buffer_length = 0x2000000;
u32 stream_read_packet_size = 65536;
u8	stream_read_is_loop = 0;
u8	stream_read_state = STREAM_STATE_IDLE;
u64 stream_read_current_address = 0;
u32 stream_read_count = 0;

u8 BulkInHandlerTriggered = 0;
u32 LastBulkInRequestedBytes = 0;
u32 LastBulkInBytesTxed = 0;



u64 stream_write_buffer_address	= 0x840000000;
u32	stream_write_buffer_length = 0x2000000;
u32 stream_write_packet_size = 65536;
u8	stream_write_is_loop = 0;
u8	stream_write_state = STREAM_STATE_IDLE;
u64 stream_write_current_address = 0;
u32 stream_write_count = 0;

u8 BulkOutHandlerTriggered = 0;
u32 LastBulkOutRequestedBytes = 0;
u32 LastBulkOutBytesTxed = 0;



u8 InterruptInHandlerTriggered = 0;
u32 LastInterruptInRequestedBytes = 0;
u32 LastInterruptInBytesTxed = 0;


volatile u8 Status_Buffer[USB_INT_EP_MAX_PACKET_SIZE] = { 0 };


// PC/Host to device
u8 InterruptOutHandlerTriggered = 0;
u32 LastInterruptOutRequestedBytes = 0;
u32 LastInterruptOutBytesTxed = 0;
volatile u8 InterruptOut_Buffer[USB_INT_EP_MAX_PACKET_SIZE] = { 0 };



int main(void)
{
	init_platform();

	//Xil_DCacheDisable();

	xil_printf("T500 USB Stream Test.\r\n");

	init_gpio();
	init_spi();


	/*
	 * Call the example , specify the device ID that is generated in
	 * xparameters.h
	 */

	SetEmioOutput(92, 1);
	SetEmioOutput(91, 1);
	SetEmioOutput(90, 1);
	SetEmioOutput(89, 1);
	SetEmioOutput(88, 1);
	SetEmioOutput(87, 1);


	SetEmio(90, 0);
	SetEmio(91, 1);
	SetEmio(92, 1);

	SetEmio(87, 1);
	SetEmio(88, 0);
	SetEmio(89, 1);

	init_AD9544();
	init_AD9643();
	init_AD9142();

	SetRxBaseAddress(0x800000000);

	ReadbackDACSPI();

	Init_USB();

	u32 led_counter = 0;

	while(1)
	{
		usleep(5e3);

		InterruptOutHandler(&UsbInstance, 64, 0);

		if(BulkInHandlerTriggered != 0)
		{
			BulkInHandlerTriggered = 0;
			printf("BulkIn: Count = %d | RequestedBytes = %d | BytesTxed = %d | Next Address = 0x%lx\n\r", stream_read_count, LastBulkInRequestedBytes, LastBulkInBytesTxed, stream_read_current_address);
		}


		if(BulkOutHandlerTriggered != 0)
		{
			BulkOutHandlerTriggered = 0;
			printf("BulkOut: Count = %d | RequestedBytes = %d | BytesTxed = %d | Next Address = 0x%lx\n\r", stream_write_count, LastBulkOutRequestedBytes, LastBulkOutBytesTxed, stream_write_current_address);;
		}

		if(InterruptInHandlerTriggered != 0)
		{
			InterruptInHandlerTriggered = 0;
			printf("InterruptIn: RequestedBytes = %d | BytesTxed = %d\n\r", LastInterruptInRequestedBytes, LastInterruptInBytesTxed);
		}



		if(led_counter % 1000 > 500)
			led_2(LED_OFF);
		else
			led_2(LED_ON);

		/*
		ReadbackDACSPI();
		//ReadbackAD9544Status();
		usleep(100000);

		xil_printf("read start.\r\n");

		for(u8 i =0; i <= 15; i++)
		{
			xil_printf("readout = 0x%x\n\r", GetRxDmacRegs(i));
		}

		xil_printf("read end.\r\n");


		xil_printf("read end 1 = 0x%x\r\n", baseAddress);
		xil_printf("readout = 0x%x\n\r", GetRxDmacRegs(0x2));
		usleep(100);
		SetRxDataTrigger();
		//usleep(10);
		//SetRxDmacRegs(0x0, 0x1);
		xil_printf("Triggered.\r\n"); //usleep(1);
		//while(GetRxDmacRegs(0) == 0);
		//SetRxDmacRegs(0x0, 0x0);
		//xil_printf("read end 3.\r\n");

		led_2(LED_OFF); // XGpioPs_WritePin(&Gpio, 19, 0x1);
		usleep(100000);
		led_1(LED_ON); // XGpioPs_WritePin(&Gpio, 20, 0x0);
		led_2(LED_ON); // XGpioPs_WritePin(&Gpio, 19, 0x0);
		usleep(100000);
		led_2(LED_OFF); // XGpioPs_WritePin(&Gpio, 19, 0x1);
		usleep(100000);
		led_0(LED_ON); // XGpioPs_WritePin(&Gpio, 17, 0x0);
		led_1(LED_OFF); // XGpioPs_WritePin(&Gpio, 20, 0x1);
		led_2(LED_ON); // XGpioPs_WritePin(&Gpio, 19, 0x0);
		usleep(100000);
		led_2(LED_OFF); // XGpioPs_WritePin(&Gpio, 19, 0x1);
		usleep(100000);
		led_1(LED_ON); // XGpioPs_WritePin(&Gpio, 20, 0x0);
		led_2(LED_ON); // XGpioPs_WritePin(&Gpio, 19, 0x0);
		usleep(100000);
		led_2(LED_OFF); // XGpioPs_WritePin(&Gpio, 19, 0x1);
		usleep(100000);
		led_0(LED_OFF); // XGpioPs_WritePin(&Gpio, 17, 0x1);
		led_1(LED_OFF); // XGpioPs_WritePin(&Gpio, 20, 0x1);
		led_2(LED_ON); // XGpioPs_WritePin(&Gpio, 19, 0x0);

		//WaitForTransferEnd();

		xil_printf("read end 4.\r\n");*/

		led_counter++;
	}

    cleanup_platform();
	return XST_SUCCESS;
}


void InterruptOutHandler(void *CallBackRef, u32 RequestedBytes, u32 BytesTxed)
{
	if(BytesTxed != 0)
	{
		LastInterruptOutRequestedBytes = RequestedBytes;
		LastInterruptOutBytesTxed = BytesTxed;
		InterruptOutHandlerTriggered = 1;
	}

	struct Usb_DevData *InstancePtr = (struct Usb_DevData *)CallBackRef;

	if(EpBufferBulkOrIntRecv(InstancePtr->PrivateData, 4, (u8 *)InterruptOut_Buffer, USB_INT_EP_MAX_PACKET_SIZE) == XST_SUCCESS)
	{
		u16 command = InterruptOut_Buffer[0] + (InterruptOut_Buffer[1] << 8);

		switch (command)
		{
			case STREAM_COMMAND_SET_SINGLE_READ:
				SetRxSingleTransfer();
				stream_read_is_loop = 0;
				SendStatus(STREAM_COMMAND_SET_SINGLE_READ);
				printf("Set Single Read: %d\n\r", GetRxTransferSetting());
				break;

			case STREAM_COMMAND_SET_LOOP_READ:
				SetRxLoopTransfer();
				stream_read_is_loop = 1;
				SendStatus(STREAM_COMMAND_SET_LOOP_READ);
				printf("Set Loop Read: %d\n\r", GetRxTransferSetting());
				break;

			case STREAM_COMMAND_SET_READ_BASEADDR:
				stream_read_buffer_address = (u64)InterruptOut_Buffer[2] + ((u64)InterruptOut_Buffer[3] << 8) + ((u64)InterruptOut_Buffer[4] << 16) + ((u64)InterruptOut_Buffer[5] << 24) + ((u64)InterruptOut_Buffer[6] << 32) + ((u64)InterruptOut_Buffer[7] << 40) + ((u64)InterruptOut_Buffer[8] << 48) + ((u64)InterruptOut_Buffer[9] << 56);
				SetRxBaseAddress(stream_read_buffer_address);
				for(int i = 0; i < 8; i++)
				{
					Status_Buffer[4 + i] = InterruptOut_Buffer[2 + i];
				}
				SendStatus(STREAM_COMMAND_SET_READ_BASEADDR);
				printf("Set read base address = 0x%lx\n\r", GetRxBaseAddress()); //stream_read_buffer_address);
				break;

			case STREAM_COMMAND_SET_READ_LENGTH:
				stream_read_buffer_length = (u32)InterruptOut_Buffer[2] + ((u32)InterruptOut_Buffer[3] << 8) + ((u32)InterruptOut_Buffer[4] << 16) + ((u32)InterruptOut_Buffer[5] << 24);
				SetRxLength(stream_read_buffer_length);
				SetRxBurstCount(stream_read_buffer_length / GetRxBurstLength() / 16);
				SetRxSampleCount((GetRxBurstCount() * GetRxBurstLength() * 16 / 4) + 1024);
				SendStatusU32(STREAM_COMMAND_SET_READ_LENGTH, stream_read_buffer_length);
				printf("RX | Buffer Size = 0x%x | Burst Count = %d  | Burst Length = %d | SampleCount = 0x%x\n\r", GetRxLength(), GetRxBurstCount(), GetRxBurstLength(), GetRxSampleCount()); //stream_read_buffer_length);
				break;

			case STREAM_COMMAND_SET_READ_PACKET_LEN:
				stream_read_packet_size = (u32)InterruptOut_Buffer[2] + ((u32)InterruptOut_Buffer[3] << 8) + ((u32)InterruptOut_Buffer[4] << 16) + ((u32)InterruptOut_Buffer[5] << 24);
				SetRxPacketLength(stream_read_packet_size);
				SendStatusU32(STREAM_COMMAND_SET_READ_PACKET_LEN, stream_read_packet_size);
				printf("RX | USB Package Size: %d\n\r", GetRxPacketLength());
				break;

			case STREAM_COMMAND_READ_BUF_OCCUP:
				SendStatusU32(STREAM_COMMAND_READ_BUF_OCCUP, GetRxBufferOccupation());
				printf("RX | Buffer Occupation = 0x%x | Transfer Left = %d\n\r", GetRxBufferOccupation(), GetRxBufferOccupation() / stream_read_packet_size);
				break;

			case STREAM_COMMAND_START_READ:
				Xil_DCacheFlushRange(stream_read_buffer_address, stream_read_buffer_length);
				Xil_DCacheInvalidateRange(stream_read_buffer_address, stream_read_buffer_length);
				stream_read_current_address = stream_read_buffer_address;
				stream_read_count = 0;
				stream_read_state = (stream_read_is_loop == 0) ? STREAM_STATE_SINGLE : STREAM_STATE_LOOP;
				EpClearStall(&UsbInstance, 1, XUSBPSU_EP_DIR_IN);
				while(IsEpStalled(&UsbInstance, 1, XUSBPSU_EP_DIR_IN) == 1);
				RxStreamBulkInHandler(&UsbInstance, stream_read_packet_size, 0);
				SendStatus(STREAM_COMMAND_START_READ);
				print("Start Read\n\r");
				break;

			case STREAM_COMMAND_STOP_READ:
				Xil_DCacheFlushRange(stream_read_buffer_address, stream_read_buffer_length);
				Xil_DCacheInvalidateRange(stream_read_buffer_address, stream_read_buffer_length);
				stream_read_state = STREAM_STATE_IDLE;
				XUsbPsu_StopTransfer(UsbInstance.PrivateData, 1, XUSBPSU_EP_DIR_IN, (u8)TRUE);
				EpSetStall(&UsbInstance, 1, XUSBPSU_EP_DIR_IN);
				while(IsEpStalled(&UsbInstance, 1, XUSBPSU_EP_DIR_IN) == 0);
				SendStatus(STREAM_COMMAND_STOP_READ);
				print("Stop Read\n\r");
				break;

			case STREAM_COMMAND_READ_STATUS:
				// Send in status;
				SendStatusU8(STREAM_COMMAND_READ_STATUS, stream_read_state);
				printf("Read Status = %d\n\r", stream_read_state);
				break;

			case STREAM_COMMAND_READ_START_DMA:
				Xil_DCacheFlushRange(stream_read_buffer_address, stream_read_buffer_length);
				Xil_DCacheInvalidateRange(stream_read_buffer_address, stream_read_buffer_length);
				SetRxStartTransfer();
				SendStatusU8(STREAM_COMMAND_READ_START_DMA, GetRxTransferStatus());
				printf("Start DMA Status = %d\n\r", GetRxTransferStatus());
				break;

			case STREAM_COMMAND_READ_TIGGER_DMA:
				Xil_DCacheFlushRange(stream_read_buffer_address, stream_read_buffer_length);
				Xil_DCacheInvalidateRange(stream_read_buffer_address, stream_read_buffer_length);
				SetRxDataTrigger();
				SendStatus(STREAM_COMMAND_READ_TIGGER_DMA);
				print("Read/RX DMA Triggered\n\r");
				break;

			case STREAM_COMMAND_READ_STOP_DMA:
				SetRxStopTransfer();
				Xil_DCacheFlushRange(stream_read_buffer_address, stream_read_buffer_length);
				Xil_DCacheInvalidateRange(stream_read_buffer_address, stream_read_buffer_length);
				SendStatusU8(STREAM_COMMAND_READ_STOP_DMA, GetRxTransferStatus());
				printf("Stop DMA Status = %d\n\r", GetRxTransferStatus());
				break;

			case STREAM_COMMAND_READ_DMA_STATUS:
				SendStatusU8(STREAM_COMMAND_READ_DMA_STATUS, GetRxTransferStatus());
				printf("DMA Status = %d\n\r", GetRxTransferStatus());
				break;

			case STREAM_COMMAND_SET_SINGLE_WRITE:
				stream_write_is_loop = 0;

				SendStatus(STREAM_COMMAND_SET_SINGLE_WRITE);
				print("Set Single Write\n\r");
				break;

			case STREAM_COMMAND_SET_LOOP_WRITE:
				stream_write_is_loop = 1;

				SendStatus(STREAM_COMMAND_SET_LOOP_WRITE);
				print("Set Loop Write\n\r");
				break;

			case STREAM_COMMAND_SET_WRITE_BASEADDR:
				stream_write_buffer_address = (u64)InterruptOut_Buffer[2] + ((u64)InterruptOut_Buffer[3] << 8) + ((u64)InterruptOut_Buffer[4] << 16) + ((u64)InterruptOut_Buffer[5] << 24) + ((u64)InterruptOut_Buffer[6] << 32) + ((u64)InterruptOut_Buffer[7] << 40) + ((u64)InterruptOut_Buffer[8] << 48) + ((u64)InterruptOut_Buffer[9] << 56);
				SetTxBaseAddress(stream_write_buffer_address);
				for(int i = 0; i < 8; i++)
				{
					Status_Buffer[4 + i] = InterruptOut_Buffer[2 + i];
				}
				SendStatus(STREAM_COMMAND_SET_WRITE_BASEADDR);
				printf("Set write base address = 0x%lx\n\r", stream_write_buffer_address);
				break;

			case STREAM_COMMAND_START_WRITE:
				stream_write_current_address = stream_write_buffer_address;
				stream_write_count = 0;
				stream_write_state = (stream_write_is_loop == 0) ? STREAM_STATE_SINGLE : STREAM_STATE_LOOP;
				EpClearStall(&UsbInstance, 2, XUSBPSU_EP_DIR_OUT);
				while(IsEpStalled(&UsbInstance, 2, XUSBPSU_EP_DIR_OUT) == 1);
				TxStreamBulkOutHandler(&UsbInstance, stream_write_packet_size, 0);
				SendStatus(STREAM_COMMAND_START_WRITE);
				print("Start Write\n\r");
				break;

			case STREAM_COMMAND_STOP_WRITE:
				stream_write_state = STREAM_STATE_IDLE;
				XUsbPsu_StopTransfer(UsbInstance.PrivateData, 2, XUSBPSU_EP_DIR_OUT, (u8)TRUE);
				EpSetStall(&UsbInstance, 2, XUSBPSU_EP_DIR_OUT);
				while(IsEpStalled(&UsbInstance, 2, XUSBPSU_EP_DIR_OUT) == 0);
				SendStatus(STREAM_COMMAND_STOP_WRITE);
				print("Stop Write\n\r");
				break;

			case STREAM_COMMAND_WRITE_STATUS:
				// Send in status;
				SendStatusU8(STREAM_COMMAND_WRITE_STATUS, stream_write_state);
				printf("Write Status = %d\n\r", stream_write_state);
				break;


			default:
				print("Unknown Command!\n\r");
				//SendStatus(0);
				for(s32 i = 0; i < USB_INT_EP_MAX_PACKET_SIZE; i++)
				{
					//printf("%d ", Xil_In8(SAMPLE_BASE_ADDRESS + i ));
					printf("%d ", InterruptOut_Buffer[i]);
				}

				break;

		}
	}
}

// PC/Host to device
void TxStreamBulkOutHandler(void *CallBackRef, u32 RequestedBytes, u32 BytesTxed)
{
	if(BytesTxed != 0)
	{
		LastBulkOutRequestedBytes = RequestedBytes;
		LastBulkOutBytesTxed = BytesTxed;
		BulkOutHandlerTriggered = 1;
	}

	if(stream_write_state != STREAM_STATE_IDLE)
	{
		struct Usb_DevData *InstancePtr = (struct Usb_DevData *)CallBackRef;

		if (EpBufferBulkOrIntRecv(InstancePtr->PrivateData, 2, (u8 *)stream_write_current_address, stream_write_packet_size) == XST_SUCCESS) //EpBufferRecv(InstancePtr->PrivateData, 2, (u8 *)stream_write_current_address, RequestedBytes);
		{
			// SetPacketTick();
			stream_write_current_address += stream_write_packet_size;
			stream_write_count++;

			if(stream_write_current_address >= stream_write_buffer_address + stream_write_buffer_length)
			{
				stream_write_current_address = stream_write_buffer_address;

				if(stream_write_is_loop == 0)
				{
					stream_write_state = STREAM_STATE_IDLE;
				}
			}
		}

	}
}


/*
void BulkInHandler(void *CallBackRef, u32 RequestedBytes, u32 BytesTxed)
{
	EpBufferSend(UsbInstance.PrivateData, 1, (u8 *)baseAddress, 64 * 1024);

	if(GetBufferOccupation() > 0)
	{
		baseAddress += 64 * 1024;
		SetPacketTick();
	}
	else
	{
		baseAddress = 0x800000000U;
	}
}*/
// Device to PC/Host
void RxStreamBulkInHandler(void *CallBackRef, u32 RequestedBytes, u32 BytesTxed)
{
	if(BytesTxed != 0)
	{
		LastBulkInRequestedBytes = RequestedBytes;
		LastBulkInBytesTxed = BytesTxed;
		BulkInHandlerTriggered = 1;
	}

	if(stream_read_state != STREAM_STATE_IDLE)
	{
		struct Usb_DevData *InstancePtr = (struct Usb_DevData *)CallBackRef;

		EpBufferSend(InstancePtr->PrivateData, 1, (u8 *)stream_read_current_address, stream_read_packet_size);

		SetPacketTick();
		stream_read_current_address += stream_read_packet_size;
		stream_read_count++;


		if(stream_read_current_address >= stream_read_buffer_address + stream_read_buffer_length)
		{
			stream_read_current_address = stream_read_buffer_address;

			if(stream_read_is_loop == 0)
			{
				stream_read_state = STREAM_STATE_IDLE;
			}
		}

		/*
		if(GetBufferOccupation() > 0)
		{
			baseAddress += 64 * 1024;
			SetPacketTick();
		}
		else
		{
			baseAddress = 0x800000000U;
		}*/


	}

}

// Device to PC/Host
void InterruptInHandler(void *CallBackRef, u32 RequestedBytes, u32 BytesTxed)
{
	if(BytesTxed != 0)
	{
		LastInterruptInRequestedBytes = RequestedBytes;
		LastInterruptInBytesTxed = BytesTxed;
		InterruptInHandlerTriggered = 1;
	}

	//struct Usb_DevData *InstancePtr = (struct Usb_DevData *)CallBackRef;
	//u8 str[64] = "Hello It is a status.";
	//EpBufferSend(InstancePtr->PrivateData, 3, (u8 *)str, 64);

}

void SendStatus(u16 command)
{
	Status_Buffer[0] = 0x0D;
	Status_Buffer[1] = 0x60;
	Status_Buffer[2] = (u8)(command & 0xFF);
	Status_Buffer[3] = (u8)((command >> 8) & 0xFF);
	EpBufferSend(UsbInstance.PrivateData, 3, (u8 *)Status_Buffer, USB_INT_EP_MAX_PACKET_SIZE);
}

void SendStatusU8(u16 command, u8 value)
{
	Status_Buffer[0] = 0x0D;
	Status_Buffer[1] = 0x60;
	Status_Buffer[2] = (u8)(command & 0xFF);
	Status_Buffer[3] = (u8)((command >> 8) & 0xFF);
	Status_Buffer[4] = value;
	EpBufferSend(UsbInstance.PrivateData, 3, (u8 *)Status_Buffer, USB_INT_EP_MAX_PACKET_SIZE);
}

void SendStatusU16(u16 command, u16 value)
{
	Status_Buffer[0] = 0x0D;
	Status_Buffer[1] = 0x60;
	Status_Buffer[2] = (u8)(command & 0xFF);
	Status_Buffer[3] = (u8)((command >> 8) & 0xFF);
	Status_Buffer[4] = (u8)(value & 0xFF);
	Status_Buffer[5] = (u8)((value >> 8) & 0xFF);
	EpBufferSend(UsbInstance.PrivateData, 3, (u8 *)Status_Buffer, USB_INT_EP_MAX_PACKET_SIZE);
}

void SendStatusU32(u16 command, u32 value)
{
	Status_Buffer[0] = 0x0D;
	Status_Buffer[1] = 0x60;
	Status_Buffer[2] = (u8)(command & 0xFF);
	Status_Buffer[3] = (u8)((command >> 8) & 0xFF);
	Status_Buffer[4] = (u8)(value & 0xFF);
	Status_Buffer[5] = (u8)((value >> 8) & 0xFF);
	Status_Buffer[6] = (u8)((value >> 16) & 0xFF);
	Status_Buffer[7] = (u8)((value >> 24) & 0xFF);
	EpBufferSend(UsbInstance.PrivateData, 3, (u8 *)Status_Buffer, USB_INT_EP_MAX_PACKET_SIZE);
}
/*
void SendStatus(u16 command, u64 value)
{
	Status_Buffer[0] = 0x0D;
	Status_Buffer[1] = 0x60;
	Status_Buffer[2] = (u8)(command & 0xFF);
	Status_Buffer[3] = (u8)((command >> 8) & 0xFF);
	Status_Buffer[4] = (u8)(value & 0xFF);
	Status_Buffer[5] = (u8)((value >> 8) & 0xFF);
	Status_Buffer[6] = (u8)((value >> 16) & 0xFF);
	Status_Buffer[7] = (u8)((value >> 24) & 0xFF);
	EpBufferSend(UsbInstance.PrivateData, 3, (u8 *)Status_Buffer, USB_INT_EP_MAX_PACKET_SIZE);
}
*/
int Init_USB()
{
	int Status = 0;
	UsbConfigPtr = XUsbPsu_LookupConfig(XPAR_PSU_USB_XHCI_1_DEVICE_ID);

		if (UsbConfigPtr == NULL)
			return XST_FAILURE;

		PrivateData.AppData = &UsbInstance;
		UsbInstance.PrivateData = (void *)&PrivateData;
		Status = XUsbPsu_CfgInitialize((struct XUsbPsu *)UsbInstance.PrivateData, UsbConfigPtr, UsbConfigPtr->BaseAddress);

		if (Status != XST_SUCCESS)
		{
			print("**** USB Configuration Failed.\n\r");
			return XST_FAILURE;
		}

		// Done with concerns about how I have trimmed the code... may over deleted a few things.
		PrivateData.Chapter9 = Ch9_Handler;

		PrivateData.data_ptr = &storage_data;

		SetEpHandler(UsbInstance.PrivateData, 1, XUSBPSU_EP_DIR_IN, RxStreamBulkInHandler);
		SetEpHandler(UsbInstance.PrivateData, 2, XUSBPSU_EP_DIR_OUT, TxStreamBulkOutHandler);
		SetEpHandler(UsbInstance.PrivateData, 3, XUSBPSU_EP_DIR_IN, InterruptInHandler);
		SetEpHandler(UsbInstance.PrivateData, 4, XUSBPSU_EP_DIR_OUT, InterruptOutHandler);

		// Pretty much done here...
		Status = SetupInterruptSystem((struct XUsbPsu *)UsbInstance.PrivateData, (void *)&InterruptController);

		if (Status != XST_SUCCESS)
		{
			print("**** USB Configuration Failed.\n\r");
			return XST_FAILURE;
		}

		Status = XUsbPsu_Start(&PrivateData);

		if (Status != XST_SUCCESS)
		{
			print("**** USB Configuration Failed 2.\n\r");
			return XST_FAILURE;
		}

		int data = 0;
		for(u64 address = stream_read_buffer_address; address < stream_read_buffer_address + stream_read_buffer_length; address+=4)
		{
			Xil_Out32(address, data);
			data++;
		}

		while(!GetConfigDone(UsbInstance.PrivateData))
		{
			printf(".");
			usleep(100);
		}

		//RxStreamBulkInHandler(&UsbInstance, 64 * 1024, 0);
		//InterruptInHandler(&UsbInstance, 64, 0);

		printf("\n\r\n\rusb hooked!\n\r");

	    print("Job done!\n\r********************************************\n\r\n\r\n\r");

	    return Status;
}

