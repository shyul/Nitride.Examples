/*******************************************************************************/

/***************************** Include Files **********************************/

#include <stdio.h>
#include <sleep.h>

#include "usb.h"

s32 EpBufferBulkOrIntRecv(struct XUsbPsu *InstancePtr, u8 UsbEp, u8 *BufferPtr, u32 Length)
{
	u32	cmd;
	u32	Size;
	s32	RetVal;
	struct XUsbPsu_Trb	*TrbPtr;
	struct XUsbPsu_Ep *Ept;
	struct XUsbPsu_EpParams *Params;

	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(UsbEp <= (u8)16U);
	Xil_AssertNonvoid(BufferPtr != NULL);

	u8 PhyEpNum = XUSBPSU_PhysicalEp(UsbEp, XUSBPSU_EP_DIR_OUT);
	Ept = &InstancePtr->eps[PhyEpNum];

	if (Ept->Direction != XUSBPSU_EP_DIR_OUT)
	{
		return (s32)XST_FAILURE;
	}

	Ept->RequestedBytes = Length;
	Size = Length;
	Ept->BytesTxed = 0U;
	Ept->BufferPtr = BufferPtr;

	/*
	 * 8.2.5 - An OUT transfer size (Total TRB buffer allocation)
	 * must be a multiple of MaxPacketSize even if software is expecting a
	 * fixed non-multiple of MaxPacketSize transfer from the Host.
	 */
	if (!IS_ALIGNED(Length, Ept->MaxSize))
	{
		Size = (u32)roundup(Length, (u32)Ept->MaxSize);
		Ept->UnalignedTx = 1U;
	}

	TrbPtr = &Ept->EpTrb[Ept->TrbEnqueue];

	Ept->TrbEnqueue += 1U;
	if (Ept->TrbEnqueue == NO_OF_TRB_PER_EP)
	{
		Ept->TrbEnqueue = 0U;
	}

	TrbPtr->BufferPtrLow  = (UINTPTR)BufferPtr;
	TrbPtr->BufferPtrHigh = ((UINTPTR)BufferPtr >> 16U) >> 16U;
	TrbPtr->Size = Size;
	TrbPtr->Ctrl = (XUSBPSU_TRBCTL_NORMAL | XUSBPSU_TRB_CTRL_LST | XUSBPSU_TRB_CTRL_HWO | XUSBPSU_TRB_CTRL_IOC | XUSBPSU_TRB_CTRL_ISP_IMI);

	if (InstancePtr->ConfigPtr->IsCacheCoherent == (u8)0U)
	{
		//printf("Flush DCache 1\n\r");
		Xil_DCacheFlushRange((INTPTR)TrbPtr, sizeof(struct XUsbPsu_Trb));
		Xil_DCacheInvalidateRange((INTPTR)BufferPtr, Length);
	}

	Params = XUsbPsu_GetEpParams(InstancePtr);
	Xil_AssertNonvoid(Params != NULL);
	Params->Param0 = 0U;
	Params->Param1 = (UINTPTR)TrbPtr;

	if ((Ept->EpStatus & XUSBPSU_EP_BUSY) != (u32)0U)
	{
		cmd = XUSBPSU_DEPCMD_UPDATETRANSFER;
		cmd |= XUSBPSU_DEPCMD_PARAM(Ept->ResourceIndex);
	}
	else
	{
		if (Ept->Type == XUSBPSU_ENDPOINT_XFER_ISOC)
		{
			BufferPtr += Length;
			struct XUsbPsu_Trb	*TrbTempNext;
			TrbTempNext = &Ept->EpTrb[Ept->TrbEnqueue];

			Ept->TrbEnqueue++;
			if (Ept->TrbEnqueue == NO_OF_TRB_PER_EP)
			{
				Ept->TrbEnqueue = 0U;
			}

			TrbTempNext->BufferPtrLow  = (UINTPTR)BufferPtr;
			TrbTempNext->BufferPtrHigh  = ((UINTPTR)BufferPtr >> 16U) >> 16U;
			TrbTempNext->Size = Length & XUSBPSU_TRB_SIZE_MASK;
			TrbTempNext->Ctrl = (XUSBPSU_TRBCTL_ISOCHRONOUS_FIRST
					| XUSBPSU_TRB_CTRL_CSP
					| XUSBPSU_TRB_CTRL_HWO
					| XUSBPSU_TRB_CTRL_IOC
					| XUSBPSU_TRB_CTRL_ISP_IMI);

			if (InstancePtr->ConfigPtr->IsCacheCoherent == (u8)0U)
			{
				printf("Flush DCache 2\n\r");
				Xil_DCacheFlushRange((INTPTR)TrbTempNext, sizeof(struct XUsbPsu_Trb));
				Xil_DCacheFlushRange((INTPTR)BufferPtr, Length);
			}

		}

		cmd = XUSBPSU_DEPCMD_STARTTRANSFER;
		cmd |= XUSBPSU_DEPCMD_PARAM(Ept->CurUf);
	}

	RetVal = XUsbPsu_SendEpCmd(InstancePtr, UsbEp, Ept->Direction, cmd, Params);
	if (RetVal != XST_SUCCESS)
	{
		return (s32)XST_FAILURE;
	}

	if ((Ept->EpStatus & XUSBPSU_EP_BUSY) == (u32)0U)
	{
		Ept->ResourceIndex = (u8)XUsbPsu_EpGetTransferIndex(InstancePtr, Ept->UsbEpNum, Ept->Direction);

		//printf("Ept->ResourceIndex = %d\n\r", Ept->ResourceIndex);

		Ept->EpStatus |= XUSBPSU_EP_BUSY;

		Xil_DCacheFlushRange((INTPTR)BufferPtr, Length);
		Xil_DCacheInvalidateRange((INTPTR)BufferPtr, Length);
	}
	else
	{
		//printf("Nonthing happened?\n\r");
		return (s32)XST_FAILURE;
	}

	return (s32)XST_SUCCESS;
}

void SetEpHandler(void *InstancePtr, u8 Epnum, u8 Dir, void (*Handler)(void *, u32, u32))
{
	XUsbPsu_SetEpHandler((struct XUsbPsu *)InstancePtr, Epnum, Dir, Handler);
}

u8 GetConfigDone(void *InstancePtr)
{
	return (((struct XUsbPsu *)InstancePtr)->IsConfigDone);
}

void *Get_DrvData(void *InstancePtr)
{
	return XUsbPsu_get_drvdata((struct XUsbPsu *)InstancePtr);
}

s32 EpBufferSend(void *InstancePtr, u8 UsbEp, u8 *BufferPtr, u32 BufferLen)
{
	if (UsbEp == 0 && BufferLen == 0)
		return XST_SUCCESS;
	else
		return XUsbPsu_EpBufferSend((struct XUsbPsu *)InstancePtr, UsbEp, BufferPtr, BufferLen);
}

s32 EpBufferRecv(void *InstancePtr, u8 UsbEp, u8 *BufferPtr, u32 Length)
{
	return XUsbPsu_EpBufferRecv((struct XUsbPsu *)InstancePtr, UsbEp, BufferPtr, Length);
}



void EpSetStall(void *InstancePtr, u8 Epnum, u8 Dir)
{
	if (!Epnum)
	{
		XUsbPsu_Ep0StallRestart((struct XUsbPsu *)InstancePtr);
	}
	else
	{
		XUsbPsu_EpSetStall((struct XUsbPsu *)InstancePtr, Epnum, Dir);
	}
}

s32 IsEpStalled(void *InstancePtr, u8 Epnum, u8 Dir)
{
	return XUsbPsu_IsEpStalled((struct XUsbPsu *)InstancePtr, Epnum, Dir);
}

void EpClearStall(void *InstancePtr, u8 Epnum, u8 Dir)
{
	XUsbPsu_EpClearStall((struct XUsbPsu *)InstancePtr, Epnum, Dir);
}

s32 SetDeviceAddress(void *InstancePtr, u16 Addr)
{
	return XUsbPsu_SetDeviceAddress((struct XUsbPsu *)InstancePtr, Addr);
}

void SetBits(void *InstancePtr, u32 TestSel)
{
	(void)InstancePtr;
	(void)TestSel;
}

s32 U1SleepEnable(void *InstancePtr)
{
	return XUsbPsu_U1SleepEnable((struct XUsbPsu *)InstancePtr);
}

s32 U2SleepEnable(void *InstancePtr)
{
	return XUsbPsu_U2SleepEnable((struct XUsbPsu *)InstancePtr);
}

s32 U1SleepDisable(void *InstancePtr)
{
	return XUsbPsu_U1SleepDisable((struct XUsbPsu *)InstancePtr);
}

s32 U2SleepDisable(void *InstancePtr)
{
	return XUsbPsu_U2SleepDisable((struct XUsbPsu *)InstancePtr);
}

s32 SetU1SleepTimeout(void *InstancePtr, u8 Sleep)
{
	return XUsbPsu_SetU1SleepTimeout((struct XUsbPsu *)InstancePtr, Sleep);
}

s32 SetU2SleepTimeout(void *InstancePtr, u8 Sleep)
{
	return XUsbPsu_SetU2SleepTimeout((struct XUsbPsu *)InstancePtr, Sleep);
}

static void Usb_StdDevReq(struct Usb_DevData *InstancePtr, SetupPacket *SetupData)
{
	static u8 Reply[USB_REQ_REPLY_LEN] __attribute__ ((aligned(64)));//ALIGNMENT_CACHELINE;
	static u8 TmpBuffer[10] __attribute__ ((aligned(64))); //ALIGNMENT_CACHELINE;

	s32 Status;
	u8 Error = 0;
	u32 ReplyLen;
	USBCH9_DATA *usb_data = (USBCH9_DATA *)Get_DrvData(InstancePtr->PrivateData);
	u8 EpNum = SetupData->wIndex & USB_ENDPOINT_NUMBER_MASK;
	/*
	 * Direction -- USB_EP_DIR_IN or USB_EP_DIR_OUT
	 */
	u8 Direction = !!(SetupData->wIndex & USB_ENDPOINT_DIR_MASK);

	/* Check that the requested reply length is not bigger than our reply
	 * buffer. This should never happen...
	 */
	if (SetupData->wLength > USB_REQ_REPLY_LEN) {
		return;
	}


	printf("bmRequestType 0x%x\r\n", SetupData->bRequestType);
	printf("bRequest 0x%x\r\n", SetupData->bRequest);
	printf("wValue 0x%x\r\n", SetupData->wValue);
	printf("wIndex 0x%x\r\n", SetupData->wIndex);
	printf("wLength 0x%x\r\n", SetupData->wLength);


	switch (SetupData->bRequest) {

	case USB_REQ_GET_STATUS:

		switch(SetupData->bRequestType & USB_STATUS_MASK) {
		case USB_STATUS_DEVICE:

			printf("GET STATUS DEVICE\r\n");


			/* It seems we do not have to worry about zeroing out
			 * the rest of the reply buffer even though we are only
			 * using the first two bytes.
			 */
			*((u16 *) &Reply[0]) = 0x0100; /* Self powered */
			break;

		case USB_STATUS_INTERFACE:

			printf("GET STATUS INTERFACE\r\n");

			*((u16 *) &Reply[0]) = 0x0;
			break;

		case USB_STATUS_ENDPOINT:

			printf("GET STATUS ENDPOINT\r\n");

			*((u16 *) &Reply[0]) = IsEpStalled(InstancePtr->PrivateData,
					EpNum, Direction);
			break;

		default:

			printf("unknown request for status %x\r\n",
				SetupData->bRequestType);

			break;
		}

		EpBufferSend(InstancePtr->PrivateData, 0, Reply, SetupData->wLength);
		break;

	case USB_REQ_SET_ADDRESS:

		/* With bit 24 set the address value is held in a shadow
		 * register until the status phase is acked. At which point it
		 * address value is written into the address register.
		 */
		SetDeviceAddress(InstancePtr->PrivateData, SetupData->wValue);

		printf("SET ADDRESS: %d\r\n", SetupData->wValue);


		EpBufferSend(InstancePtr->PrivateData, 0, NULL, 0);
		break;

	case USB_REQ_GET_INTERFACE:

		printf("GET INTERFACE %d/%d/%d\r\n",
			SetupData->wIndex, SetupData->wLength, 0);

		break;

	case USB_REQ_GET_DESCRIPTOR:
		/* Get descriptor type. */
		switch ((SetupData->wValue >> 8) & 0xff) {

		case USB_TYPE_DEVICE_DESC:
		case USB_TYPE_DEVICE_QUALIFIER:
			/*
			 * Set up the reply buffer with the device descriptor
			 * data.
			 */
			ReplyLen = usb_data->ch9_func.
					Usb_Ch9SetupDevDescReply(
						InstancePtr, Reply,
						USB_REQ_REPLY_LEN);

			ReplyLen = ReplyLen > SetupData->wLength ?
						SetupData->wLength : ReplyLen;

			printf("GET DEV DESC %d/%d\r\n", ReplyLen, SetupData->wLength);

			if(((SetupData->wValue >> 8) & 0xff) ==
					USB_TYPE_DEVICE_QUALIFIER) {
				Reply[0] = (u8)ReplyLen;
				Reply[1] = (u8)0x6;
				Reply[2] = (u8)0x0;
				Reply[3] = (u8)0x2;
				Reply[4] = (u8)0xFF;
				Reply[5] = (u8)0x00;
				Reply[6] = (u8)0x0;
				Reply[7] = (u8)0x10;
				Reply[8] = (u8)0;
				Reply[9] = (u8)0x0;
			}
			Status = EpBufferSend(InstancePtr->PrivateData, 0,
					Reply, ReplyLen);
			if (XST_SUCCESS != Status) {
				/* Failure case needs to be handled */
				for (;;);
			}
			break;

		case USB_TYPE_CONFIG_DESC:

			/* Set up the reply buffer with the configuration
			 * descriptor data.
			 */
			ReplyLen = usb_data->ch9_func.
					Usb_Ch9SetupCfgDescReply(
						InstancePtr, Reply,
						USB_REQ_REPLY_LEN);


			printf("GET CONFIG DESC %d/%d\r\n", ReplyLen, SetupData->wLength);

			ReplyLen = ReplyLen > SetupData->wLength ? SetupData->wLength : ReplyLen;

			Status = EpBufferSend(InstancePtr->PrivateData, 0,
							Reply, ReplyLen);
			if (XST_SUCCESS != Status) {
				/* Failure case needs to be handled */
				for (;;);
			}
			break;

		case USB_TYPE_STRING_DESC:
            /* Set up the reply buffer with the configuration
			 * descriptor data.
			 */
			ReplyLen = usb_data->ch9_func.
					Usb_Ch9SetupStrDescReply(
						InstancePtr, Reply, 128,
						SetupData->wValue & 0xFF);


		    printf("GET STRING DESC %d/%d\r\n", ReplyLen, SetupData->wLength);

			ReplyLen = ReplyLen > SetupData->wLength ?
						SetupData->wLength : ReplyLen;

			Status = EpBufferSend(InstancePtr->PrivateData, 0,
							Reply, ReplyLen);
			if (XST_SUCCESS != Status) {
				/* Failure case needs to be handled */
				for (;;);
			}

			break;

		case USB_TYPE_BOS_DESC:
            /* Set up the reply buffer with the BOS descriptor
			 * data.
			 */
			ReplyLen = usb_data->ch9_func.
					Usb_Ch9SetupBosDescReply(Reply,
							USB_REQ_REPLY_LEN);


			printf("GET BOS DESC %d/%d\r\n", ReplyLen, SetupData->wLength);


			ReplyLen = ReplyLen > SetupData->wLength ?
						SetupData->wLength : ReplyLen;

			Status = EpBufferSend(InstancePtr->PrivateData, 0,
							Reply, ReplyLen);
			if (XST_SUCCESS != Status) {
				/* Failure case needs to be handled */
				for (;;);
			}
			break;

		default:
			if (usb_data->ch9_func.Usb_GetDescReply) {
				/* send any class dependent descriptors */
				ReplyLen = usb_data->ch9_func.Usb_GetDescReply(InstancePtr,
									SetupData, Reply);
				if ( ReplyLen == 0 )
					Error = 1;
				else {
					Status = EpBufferSend(InstancePtr->PrivateData, 0,
									Reply, ReplyLen);
					if (XST_SUCCESS != Status) {
					/* Failure case needs to be handled */
					for (;;);
					}
				}
			} else {
				Error = 1;
			}
			break;
		}
		break;

	case USB_REQ_SET_CONFIGURATION:

		printf("SET CONFIG\r\n");


		if(InstancePtr->Speed == USB_SPEED_SUPER) {

		}

		usb_data->ch9_func.
			Usb_SetConfiguration(InstancePtr, SetupData);
		usb_data->ch9_func.
			Usb_SetConfigurationApp(InstancePtr, SetupData);

		EpBufferSend(InstancePtr->PrivateData, 0, NULL, 0);
		break;

	case USB_REQ_GET_CONFIGURATION:

		printf("GET CONFIGURATION\r\n");


		/* When we run CV test suite application in Windows, need to
		 * add GET_CONFIGURATION command to pass test suite
		 */
		*((u8 *) &Reply[0]) = GetConfigDone(InstancePtr->PrivateData);
		Status = EpBufferSend(InstancePtr->PrivateData, 0, Reply,
								SetupData->wLength);
		if (XST_SUCCESS != Status) {
			/* Failure case needs to be handled */
			for (;;);
		}
		break;

	case USB_REQ_CLEAR_FEATURE:

		printf("CLEAR FEATURE\r\n");

		switch(SetupData->bRequestType & USB_STATUS_MASK) {
		case USB_STATUS_ENDPOINT:
			if (SetupData->wValue == USB_ENDPOINT_HALT)
				EpClearStall(InstancePtr->PrivateData, EpNum, Direction);
			break;

		case USB_STATUS_DEVICE:
			if(InstancePtr->Speed == USB_SPEED_SUPER) {
				if(SetupData->wValue == USB_U1_ENABLE) {
					U1SleepDisable(InstancePtr->PrivateData);
				} else if(SetupData->wValue == USB_U2_ENABLE) {
					U2SleepDisable(InstancePtr->PrivateData);
				}
			}

			EpBufferSend(InstancePtr->PrivateData, 0, NULL, 0);
			break;

		default:
			Error = 1;
			break;
		}
		break;

	case USB_REQ_SET_FEATURE:

		printf("SET FEATURE\r\n");

		switch(SetupData->bRequestType & USB_STATUS_MASK) {
		case USB_STATUS_ENDPOINT:
			if (SetupData->wValue == USB_ENDPOINT_HALT)
				EpSetStall(InstancePtr->PrivateData, EpNum,
						Direction);

			EpBufferSend(InstancePtr->PrivateData, 0, NULL, 0);

			break;

		/* When we run CV test suite application in Windows, need to
		 * add INTRF_FUNC_SUSNPEND command to pass test suite
		 */
		case USB_STATUS_INTERFACE:
			switch (SetupData->wValue) {
				case USB_INTRF_FUNC_SUSPEND:
						/* enable Low power suspend */
						/* enable remote wakeup */
					break;
				default:
					Error = 1;
			}
			break;

		case USB_STATUS_DEVICE:
			if(InstancePtr->Speed == USB_SPEED_SUPER) {
				if(SetupData->wValue == USB_U1_ENABLE) {

				} else if (SetupData->wValue == USB_U2_ENABLE) {

				}
			}

			if (SetupData->wValue == USB_TEST_MODE) {
				u32 TestSel = (SetupData->wIndex >> 8) & 0xFF;

				EpBufferSend(InstancePtr->PrivateData, 0, NULL, 0);
				usleep(1000);

				switch (TestSel) {
				case USB_TEST_J:
				case USB_TEST_K:
				case USB_TEST_SE0_NAK:
				case USB_TEST_PACKET:
				case USB_TEST_FORCE_ENABLE:
					//Set Bits in PORTSCR
					SetBits(InstancePtr->PrivateData, TestSel << 16);
					break;
				default:
					/* Unsupported test selector */
					break;
				}
				break;
			}
			break;

		default:
			Error = 1;
			break;
		}

		break;

	/* For set interface, check the alt setting host wants */
	case USB_REQ_SET_INTERFACE:


		printf("SET INTERFACE %d/%d\n", SetupData->wValue, SetupData->wIndex);


		/* Call the set interface handler, if any*/
		if (usb_data->ch9_func.Usb_SetInterfaceHandler != NULL) {
			usb_data->ch9_func.Usb_SetInterfaceHandler(
							InstancePtr, SetupData);
		}

		EpBufferSend(InstancePtr->PrivateData, 0, NULL, 0);
		break;

	case USB_REQ_SET_SEL:

		printf("SET SEL \r\n");


		EpBufferRecv(InstancePtr->PrivateData, 0, TmpBuffer, 6);
		SetU1SleepTimeout(InstancePtr->PrivateData, 0x0A);
		SetU2SleepTimeout(InstancePtr->PrivateData, 0x04);
		break;

	case USB_REQ_SET_ISOCH_DELAY:

		printf("SET ISOCH DELAY \r\n");

		break;

	default:
		Error = 1;
		break;
	}

	/* Set the send stall bit if there was an error */
	if (Error) {

		printf("std dev req %d/%d error, stall 0 in out\n",
			SetupData->bRequest, (SetupData->wValue >> 8) & 0xff);

		EpSetStall(InstancePtr->PrivateData, 0, XUSBPSU_EP_DIR_OUT);
	}
}

s32 SetupInterruptSystem(struct XUsbPsu *InstancePtr, void *IntcPtr)
{
	(void)InstancePtr;
	(void)IntcPtr;

	s32 Status = XST_SUCCESS;

	XScuGic_Config 			*IntcConfig;
	XScuGic *IntcInstancePtr = (XScuGic *)IntcPtr;

	// Initialize the interrupt controller driver
	IntcConfig = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
	if (IntcConfig == NULL) return XST_FAILURE;

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig, IntcConfig->CpuBaseAddress);

	if (Status != XST_SUCCESS)
	{
		print("**** Interrupt Controller XScuGic_CfgInitialize Failed.\n\r");
		return XST_FAILURE;
	}

	// Connect to the interrupt controller
	Status = XScuGic_Connect(IntcInstancePtr, XPAR_XUSBPS_1_INTR, (Xil_ExceptionHandler)XUsbPsu_IntrHandler, (void *)InstancePtr);
	if (Status != XST_SUCCESS) return XST_FAILURE;

	if (Status != XST_SUCCESS)
	{
		print("**** Interrupt Controller XScuGic_Connect Failed.\n\r");
		return XST_FAILURE;
	}


	// Enable the interrupt for the USB
	XScuGic_Enable(IntcInstancePtr, XPAR_XUSBPS_1_INTR);

	// Enable interrupts for Reset, Disconnect, ConnectionDone, Link State Wakeup and Overflow events.
	XUsbPsu_EnableIntr(InstancePtr, XUSBPSU_DEVTEN_EVNTOVERFLOWEN |
                        XUSBPSU_DEVTEN_WKUPEVTEN |
                        XUSBPSU_DEVTEN_ULSTCNGEN |
                        XUSBPSU_DEVTEN_CONNECTDONEEN |
                        XUSBPSU_DEVTEN_USBRSTEN |
                        XUSBPSU_DEVTEN_DISCONNEVTEN);

	// Connect the interrupt controller interrupt handler to the hardware interrupt handling logic in the ARM processor.
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, IntcInstancePtr);

	// Enable interrupts in the ARM
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

void Ch9_Handler2(struct Usb_DevData *InstancePtr, SetupPacket *SetupData){}

void Ch9_Handler(struct Usb_DevData *InstancePtr, SetupPacket *SetupData)
{
	USBCH9_DATA *ch9_ptr = (USBCH9_DATA *)Get_DrvData(InstancePtr->PrivateData);
	printf("Handle setup packet\n");
	switch (SetupData->bRequestType & USB_REQ_TYPE_MASK)
	{
		case USB_CMD_STDREQ:
			Usb_StdDevReq(InstancePtr, SetupData);
		break;

		case USB_CMD_CLASSREQ:
			ch9_ptr->ch9_func.Usb_ClassReq(InstancePtr, SetupData);
		break;

		case USB_CMD_VENDREQ:
			printf("vendor request %x\n", SetupData->bRequest);
		break;

		default:
			printf("unknown class req, stalling at %s\n", __func__); //  Stall on Endpoint 0
			EpSetStall(InstancePtr->PrivateData, 0, XUSBPSU_EP_DIR_OUT);
		break;
	}
}
