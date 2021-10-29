/*******************************************************************************/

/***************************** Include Files **********************************/

#include <stdio.h>
#include <sleep.h>

#include "usb_setup.h"

void SetConfigDone(void *InstancePtr, u8 Flag)
{
	((struct XUsbPsu *)InstancePtr)->IsConfigDone = Flag;
}

s32 IsSuperSpeed(struct Usb_DevData *InstancePtr)
{
	return XUsbPsu_IsSuperSpeed((struct XUsbPsu *)InstancePtr->PrivateData);
}

typedef struct {
	u8 bLength;
	u8 bDescriptorType;
	u16 bcdUSB;
	u8 bDeviceClass;
	u8 bDeviceSubClass;
	u8 bDeviceProtocol;
	u8 bMaxPacketSize0;
	u16 idVendor;
	u16 idProduct;
	u16 bcdDevice;
	u8 iManufacturer;
	u8 iProduct;
	u8 iSerialNumber;
	u8 bNumConfigurations;
} attribute(USB_STD_DEV_DESC);

#define USB_DEVICE_CLASS			0xFF
#define	USB_DEVICE_SUB_CLASS		0x90
#define	USB_DEVICE_SUB_PROTOCOL		0x0D

#define	USB_VID		0x900D
#define USB_PID		0xF00D

USB_STD_DEV_DESC __attribute__ ((aligned(16))) deviceDesc[] =
{
	{	
		// ******** USB 2.0 ********
		sizeof(USB_STD_DEV_DESC),	// bLength
		USB_TYPE_DEVICE_DESC,		// bDescriptorType
		0x0200,						// bcdUSB 2.0
		USB_DEVICE_CLASS,			// bDeviceClass
		USB_DEVICE_SUB_CLASS,		// bDeviceSubClass
		USB_DEVICE_SUB_PROTOCOL,	// bDeviceProtocol
		0x40,						// bMaxPackedSize0
		USB_VID,					// idVendor
		USB_PID,					// idProduct
		0x0100,						// bcdDevice
		0x01,						// iManufacturer
		0x02,						// iProduct
		0x03,						// iSerialNumber
		0x01						// bNumConfigurations
	},
	{	
		// ******** USB 3.0 ********
		sizeof(USB_STD_DEV_DESC),	// bLength
		USB_TYPE_DEVICE_DESC,		// bDescriptorType
		0x0300,						// bcdUSB 3.0
		USB_DEVICE_CLASS,			// bDeviceClass
		USB_DEVICE_SUB_CLASS,		// bDeviceSubClass
		USB_DEVICE_SUB_PROTOCOL,	// bDeviceProtocol
		0x09,						// bMaxPackedSize0
		USB_VID,					// idVendor
		USB_PID,					// idProduct
		0x0404,						// bcdDevice
		0x03,						// iManufacturer
		0x04,						// iProduct
		0x05,						// iSerialNumber
		0x01						// bNumConfigurations
	}
};

u32 Usb_Ch9SetupDevDescReply(struct Usb_DevData *InstancePtr, u8 *BufPtr, u32 BufLen)
{
	u8 Index = IsSuperSpeed(InstancePtr) == 0 ? 1 : 0;

	// Check buffer pointer is there and buffer is big enough.
	if (!BufPtr || BufLen < sizeof(USB_STD_DEV_DESC)) return 0;

	memcpy(BufPtr, &deviceDesc[Index], sizeof(USB_STD_DEV_DESC));

	return sizeof(USB_STD_DEV_DESC);
}

typedef struct {
	u8 bLength;
	u8 bType;
	u16 wTotalLength;
	u8 bNumberInterfaces;
	u8 bConfigValue;
	u8 bIConfigString;
	u8 bAttributes;
	u8 bMaxPower;
} attribute(USB_STD_CFG_DESC);

typedef struct {
	u8 bLength;
	u8 bDescriptorType;
	u8 bInterfaceNumber;
	u8 bAlternateSetting;
	u8 bNumEndPoints;
	u8 bInterfaceClass;
	u8 bInterfaceSubClass;
	u8 bInterfaceProtocol;
	u8 iInterface;
} attribute(USB_STD_IF_DESC);

typedef struct {
	u8 bLength;
	u8 bDescriptorType;
	u8 bEndpointAddress;
	u8 bmAttributes;
	u8 bMaxPacketSizeL;
	u8 bMaxPacketSizeH;
	u8 bInterval;
} attribute(USB_STD_EP_DESC);

typedef struct {
	u8 bLength;
	u8 bDescriptorType;
	u8 bMaxBurst;
	u8 bmAttributes;
	u16 wBytesPerInterval;
} attribute (USB_STD_EP_SS_COMP_DESC);

// USB 3.0 Standard Configuration

#define USB_EP1_IN		0x81
#define USB_EP2_OUT		0x02
#define USB_EP3_IN		0x83
#define USB_EP4_OUT		0x04


#define USB3_BULK_EP_MAX_PACKET_SIZE		1024

#define PACKET_SIZE_LSB(size)		(size & 0xFF)
#define PACKET_SIZE_MSB(size)		((size >> 8) & 0xFF)

typedef struct {
	USB_STD_CFG_DESC			std_cfg;
	USB_STD_IF_DESC				stream_if_cfg;
	USB_STD_EP_DESC				rf_stream_epin;
	USB_STD_EP_SS_COMP_DESC		rf_stream_epin_ss;
	USB_STD_EP_DESC				rf_stream_epout;
	USB_STD_EP_SS_COMP_DESC		rf_stream_epout_ss;
	USB_STD_EP_DESC				ctrl_epin;
	USB_STD_EP_SS_COMP_DESC		ctrl_epin_ss;
	USB_STD_EP_DESC				ctrl_epout;
	USB_STD_EP_SS_COMP_DESC		ctrl_epout_ss;
} attribute(USB30_CONFIG);

USB30_CONFIG __attribute__ ((aligned(16))) config3 =
{
	{
		// Std Config
		sizeof(USB_STD_CFG_DESC),	// bLength
		USB_TYPE_CONFIG_DESC,		// bDescriptorType
		sizeof(USB30_CONFIG),		// wTotalLength
		0x01,						// bNumInterfaces
		0x01,						// bConfigurationValue
		0x00,						// iConfiguration
		0xc0,						// bmAttribute
		0x00						// bMaxPower
	},

	// ****************************************
	// ********* RF Stream Interface **********
	// ****************************************

	{
		// Standard Interface Descriptor
		sizeof(USB_STD_IF_DESC),	// bLength
		USB_TYPE_INTERFACE_DESC,	// bDescriptorType
		0x00,						// bInterfaceNumber
		0x00,						// bAlternateSetting
		0x04,						// bNumEndPoints
		USB_DEVICE_CLASS,			// bInterfaceClass
		USB_DEVICE_SUB_CLASS,		// bInterfaceSubClass
		USB_DEVICE_SUB_PROTOCOL,	// bInterfaceProtocol
		0x01						// iInterface
	},

	// ---------- RX Stream to Host ----------

	{
		// Bulk In Endpoint Config
		sizeof(USB_STD_EP_DESC),		// bLength
		USB_TYPE_ENDPOINT_CFG_DESC,		// bDescriptorType
		USB_EP1_IN,						// bEndpointAddress
		XUSBPSU_ENDPOINT_XFER_BULK,		// bmAttribute
		PACKET_SIZE_LSB(USB3_BULK_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - LSB
		PACKET_SIZE_MSB(USB3_BULK_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - MSB
		0x00							// bInterval
	},
	{
		// SS Endpoint companion
		sizeof(USB_STD_EP_SS_COMP_DESC),	// bLength
		0x30, 								// bDescriptorType
		0x0F,								// bMaxBurst
		0x00,								// bmAttributes
		0x00								// wBytesPerInterval
	},

	// ---------- TX Stream from Host ----------

	{
		// Bulk Out Endpoint Config
		sizeof(USB_STD_EP_DESC),		// bLength
		USB_TYPE_ENDPOINT_CFG_DESC,		// bDescriptorType
		USB_EP2_OUT,					// bEndpointAddress
		XUSBPSU_ENDPOINT_XFER_BULK,		// bmAttribute
		PACKET_SIZE_LSB(USB3_BULK_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - LSB
		PACKET_SIZE_MSB(USB3_BULK_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - MSB
		0x00							// bInterval
	},
	{
		// SS Endpoint companion
		sizeof(USB_STD_EP_SS_COMP_DESC),	// bLength
		0x30, 								// bDescriptorType
		0x0F,								// bMaxBurst
		0x00,								// bmAttributes
		0x00								// wBytesPerInterval
	},


	// ---------- Status and Information to Host ----------

	{
		// Interrupt In Endpoint Config
		sizeof(USB_STD_EP_DESC),		// bLength
		USB_TYPE_ENDPOINT_CFG_DESC,		// bDescriptorType
		USB_EP3_IN,						// bEndpointAddress
		XUSBPSU_ENDPOINT_XFER_INT,		// bmAttribute
		PACKET_SIZE_LSB(USB_INT_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - LSB
		PACKET_SIZE_MSB(USB_INT_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - MSB
		0x05							// bInterval
	},
	{
		// SS Endpoint companion
		sizeof(USB_STD_EP_SS_COMP_DESC),	// bLength
		0x30, 								// bDescriptorType
		0x00,								// bMaxBurst
		0x00,								// bmAttributes
		0x00								// wBytesPerInterval
	},

	// ---------- Command from Host ----------

	{
		// Interrupt Out Endpoint Config
		sizeof(USB_STD_EP_DESC),		// bLength
		USB_TYPE_ENDPOINT_CFG_DESC,		// bDescriptorType
		USB_EP4_OUT,					// bEndpointAddress
		XUSBPSU_ENDPOINT_XFER_INT,		// bmAttribute
		PACKET_SIZE_LSB(USB_INT_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - LSB
		PACKET_SIZE_MSB(USB_INT_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - MSB
		0x05							// bInterval
	},
	{
		// SS Endpoint companion
		sizeof(USB_STD_EP_SS_COMP_DESC),	// bLength
		0x30, 								// bDescriptorType
		0x00,								// bMaxBurst
		0x00,								// bmAttributes
		0x00								// wBytesPerInterval
	}

	// ****************************************
	// ********** USBTMC Interface ************
	// ****************************************




};

#define USB2_BULK_EP_MAX_PACKET_SIZE		512

typedef struct {
	USB_STD_CFG_DESC	std_cfg;
	USB_STD_IF_DESC		stream_if_cfg;
	USB_STD_EP_DESC		rf_stream_epin;
	USB_STD_EP_DESC		rf_stream_epout;
	USB_STD_EP_DESC		ctrl_epin;
	USB_STD_EP_DESC		ctrl_epout;
} attribute(USB_CONFIG);

USB_CONFIG __attribute__ ((aligned(16))) config2 =
{
	{
		// Std Config
		sizeof(USB_STD_CFG_DESC),	// bLength
		USB_TYPE_CONFIG_DESC,	// bDescriptorType
		sizeof(USB_CONFIG),		// wTotalLength
		0x01,					// bNumInterfaces
		0x01,					// bConfigurationValue
		0x00,					// iConfiguration
		0xc0,					// bmAttribute
		0x00					// bMaxPower 
	},
	{
		// Mass Storage Standard Interface Descriptor
		sizeof(USB_STD_IF_DESC),	// bLength
		USB_TYPE_INTERFACE_DESC,	// bDescriptorType
		0x00,					// bInterfaceNumber
		0x00,					// bAlternateSetting
		0x02,						// bNumEndPoints
		USB_DEVICE_CLASS,			// bInterfaceClass
		USB_DEVICE_SUB_CLASS,		// bInterfaceSubClass
		USB_DEVICE_SUB_PROTOCOL,	// bInterfaceProtocol
		0x05						// iInterface
	},

	// ---------- RX Stream to Host ----------

	{
		// Bulk In Endpoint Config
		sizeof(USB_STD_EP_DESC),	// bLength
		USB_TYPE_ENDPOINT_CFG_DESC,	// bDescriptorType
		USB_EP1_IN,					// bEndpointAddress
		0x02,					// bmAttribute 
		PACKET_SIZE_LSB(USB2_BULK_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - LSB
		PACKET_SIZE_MSB(USB2_BULK_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - MSB
		0x00					// bInterval
	},

	// ---------- TX Stream from Host ----------

	{
		// Bulk Out Endpoint Config
		sizeof(USB_STD_EP_DESC),	// bLength
		USB_TYPE_ENDPOINT_CFG_DESC,	// bDescriptorType
		USB_EP2_OUT,					// bEndpointAddress
		0x02,					// bmAttribute 
		PACKET_SIZE_LSB(USB2_BULK_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - LSB
		PACKET_SIZE_MSB(USB2_BULK_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - MSB
		0x00					// bInterval
	},

	// ---------- Status and Information to Host ----------

	{
		// Control In Endpoint Config
		sizeof(USB_STD_EP_DESC),		// bLength
		USB_TYPE_ENDPOINT_CFG_DESC,		// bDescriptorType
		USB_EP3_IN,						// bEndpointAddress
		XUSBPSU_ENDPOINT_XFER_INT,		// bmAttribute
		PACKET_SIZE_LSB(USB_INT_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - LSB
		PACKET_SIZE_MSB(USB_INT_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - MSB
		0x05							// bInterval
	},

	// ---------- Command from Host ----------

	{
		// Control Out Endpoint Config
		sizeof(USB_STD_EP_DESC),		// bLength
		USB_TYPE_ENDPOINT_CFG_DESC,		// bDescriptorType
		USB_EP4_OUT,					// bEndpointAddress
		XUSBPSU_ENDPOINT_XFER_INT,		// bmAttribute
		PACKET_SIZE_LSB(USB_INT_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - LSB
		PACKET_SIZE_MSB(USB_INT_EP_MAX_PACKET_SIZE),	// wMaxPacketSize - MSB
		0x05							// bInterval
	}
};

u32 Usb_Ch9SetupCfgDescReply(struct Usb_DevData *InstancePtr, u8 *BufPtr, u32 BufLen)
{
	s32 isSuperSpeed = IsSuperSpeed(InstancePtr);

	u8 *config = isSuperSpeed == XST_SUCCESS ? (u8 *)&config3 : (u8 *)&config2;
	u32 CfgDescLen = isSuperSpeed == XST_SUCCESS ? sizeof(USB30_CONFIG) : sizeof(USB_CONFIG);

	/* Check buffer pointer is OK and buffer is big enough. */
	if (!BufPtr || BufLen < sizeof(USB_STD_CFG_DESC)) return 0;
	
	memcpy(BufPtr, config, CfgDescLen);

	return CfgDescLen;
}

typedef struct {
	u8 bLength;
	u8 bDescriptorType;
	u16 wLANGID[1];
} attribute(USB_STD_STRING_DESC);

static u8 StringList[2][6][128] =
{
	{
		"Tidalloft Avionics Research LLC",
		"GPRU",
		"2A49870D9CC1AC4",
		"USB 2.0 Radio Stream",
		"Tidalloft GPRU USB 2.0 Interface",
		"Default Interface"
	},
	{
		"Tidalloft Avionics Research LLC",
		"GPRU",
		"2A49870D9CC1AC4",
		"USB 3.0 Radio Stream",
		"Tidalloft GPRU USB 3.0 Interface",
		"900DF00D"
	}
};

u32 Usb_Ch9SetupStrDescReply(struct Usb_DevData *InstancePtr, u8 *BufPtr, u32 BufLen, u8 Index)
{	
	if (!BufPtr || Index >= sizeof(StringList) / sizeof(u8 *)) return 0;

	s32 isSuperSpeed = IsSuperSpeed(InstancePtr);
	u8 StrArray = isSuperSpeed == XST_SUCCESS ? 1 : 0;

	char *String;
	String = (char *)&StringList[StrArray][Index];
	u32 StringLen = strlen(String);

	USB_STD_STRING_DESC *StringDesc;
	u8 TmpBuf[128];
	StringDesc = (USB_STD_STRING_DESC *) TmpBuf;

	/* Index 0 is special as we can not represent the string required in
	* the table above. Therefore we handle index 0 as a special case.
	*/

	printf("Usb_Ch9SetupStrDescReply: %d: %s\n\r", Index, String);
	if (Index == 0)
	{
		StringDesc->bLength = 4;
		StringDesc->bDescriptorType = 0x03;
		StringDesc->wLANGID[0] = 0x0409;
	}
	else // All other strings can be pulled from the table above.
	{
		StringDesc->bLength = StringLen * 2 + 2;
		StringDesc->bDescriptorType = 0x03;
		for (u32 i = 0; i < StringLen; i++)
		{
			StringDesc->wLANGID[i] = (u16) String[i];
		}
	}

	u32 DescLen = StringDesc->bLength;

	/* Check if the provided buffer is big enough to hold the descriptor. */
	if (DescLen > BufLen)
	{
		return 0;
	}

	memcpy(BufPtr, StringDesc, DescLen);

	return DescLen;
}

typedef struct {
	u8 bLength;
	u8 bDescriptorType;
	u16 wTotalLength;
	u8 bNumDeviceCaps;
} attribute(USB_STD_BOS_DESC);

typedef struct {
	u8 bLength;
	u8 bDescriptorType;
	u8 bDevCapabiltyType;
	u32 bmAttributes;
} attribute(USB_STD_DEVICE_CAP_7BYTE);

typedef struct {
	u8 bLength;
	u8 bDescriptorType;
	u8 bDevCapabiltyType;
	u8 bmAttributes;
	u16 wSpeedsSupported;
	u8 bFunctionalitySupport;
	u8 bU1DevExitLat;
	u16 wU2DevExitLat;
} attribute(USB_STD_DEVICE_CAP_10BYTE);

typedef struct{
	USB_STD_BOS_DESC			bos_desc;
	USB_STD_DEVICE_CAP_7BYTE	dev_cap7;
	USB_STD_DEVICE_CAP_10BYTE	dev_cap10;
} attribute(USB_BOS_DESC);

u32 Usb_Ch9SetupBosDescReply(u8 *BufPtr, u32 BufLen)
{
	static USB_BOS_DESC __attribute__ ((aligned(16))) bosDesc =
	{
		{
			// BOS descriptor
			sizeof(USB_STD_BOS_DESC),	// bLength
			USB_TYPE_BOS_DESC,			// DescriptorType
			sizeof(USB_BOS_DESC),		// wTotalLength
			0x02 						// bNumDeviceCaps
		}, 
		{
			sizeof(USB_STD_DEVICE_CAP_7BYTE),	// bLength
			0x10,		// bDescriptorType
			0x02,		// bDevCapabiltyType
			0x06		// bmAttributes
		},
		{
			sizeof(USB_STD_DEVICE_CAP_10BYTE),	// bLength
			0x10,		// bDescriptorType
			0x03,		// bDevCapabiltyType
			0x00,		// bmAttributes
			(0x000F),	// wSpeedsSupported
			0x01,		// bFunctionalitySupport
			0x01,		// bU1DevExitLat
			(0x01F4)	// wU2DevExitLat
		}
	};

	// Check buffer pointer is OK and buffer is big enough.
	if (!BufPtr || BufLen < sizeof(USB_STD_BOS_DESC)) return 0;

	memcpy(BufPtr, &bosDesc, sizeof(USB_BOS_DESC));

	return sizeof(USB_BOS_DESC);
}

s32 Usb_SetConfiguration(struct Usb_DevData *InstancePtr, SetupPacket *Ctrl)
{
	s32 status = XST_SUCCESS;

	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Ctrl != NULL);

	u8 State = InstancePtr->State;
	SetConfigDone(InstancePtr->PrivateData, 0U);
	//InstancePtr->PrivateData->IsConfigDone = 0U;

	switch (State)
	{
		case XUSBPSU_STATE_DEFAULT:
			status = XST_FAILURE;
			break;

		case XUSBPSU_STATE_ADDRESS:
			InstancePtr->State = XUSBPSU_STATE_CONFIGURED;
			break;

		case XUSBPSU_STATE_CONFIGURED:
			break;

		case XUSBPSU_STATE_POWERED:
		case XUSBPSU_STATE_ATTACHED:
		case XUSBPSU_STATE_SUSPENDED:
		default:
			status = XST_FAILURE;
		break;
	}

	return status;
}

s32 EpEnable(void *InstancePtr, u8 UsbEpNum, u8 Dir, u16 Maxsize, u8 Type)
{
	return XUsbPsu_EpEnable((struct XUsbPsu *)InstancePtr, UsbEpNum, Dir, Maxsize, Type, FALSE);
}

s32 EpDisable(void *InstancePtr, u8 UsbEpNum, u8 Dir)
{
	return XUsbPsu_EpDisable((struct XUsbPsu *)InstancePtr, UsbEpNum, Dir);
}

u8 Phase;
#define USB_EP_STATE_COMMAND		0
#define USB_EP_STATE_DATA_IN		1
#define USB_EP_STATE_DATA_OUT		2
#define USB_EP_STATE_STATUS			3

s32 Usb_SetConfigurationApp(struct Usb_DevData *InstancePtr, SetupPacket *SetupData)
{
	s32 RetVal = XST_SUCCESS;
	u16 MaxPktSize = InstancePtr->Speed == USB_SPEED_SUPER ? 1024 : 512;

	// When we run CV test suite application in Windows, need to add SET_CONFIGURATION command with value 0/1 to pass test suite
	if ((SetupData->wValue && 0xff) ==  1)
	{
		/* SET_CONFIGURATION with value 1 */
		/* Endpoint enables - not needed for Control EP */

		RetVal = XUsbPsu_EpEnable(InstancePtr->PrivateData, 1, XUSBPSU_EP_DIR_IN, MaxPktSize, XUSBPSU_ENDPOINT_XFER_BULK, FALSE);

		if (RetVal != XST_SUCCESS)
		{
			xil_printf("failed to enable BULK IN Ep\r\n");
			return XST_FAILURE;
		}

		RetVal = XUsbPsu_EpEnable(InstancePtr->PrivateData, 2, XUSBPSU_EP_DIR_OUT, MaxPktSize, XUSBPSU_ENDPOINT_XFER_BULK, FALSE);

		if (RetVal != XST_SUCCESS)
		{
			xil_printf("failed to enable BULK OUT Ep\r\n");
			return XST_FAILURE;
		}

		RetVal = XUsbPsu_EpEnable(InstancePtr->PrivateData, 3, XUSBPSU_EP_DIR_IN, MaxPktSize, XUSBPSU_ENDPOINT_XFER_INT, FALSE);

		if (RetVal != XST_SUCCESS)
		{
			xil_printf("failed to enable BULK IN Ep\r\n");
			return XST_FAILURE;
		}

		RetVal = XUsbPsu_EpEnable(InstancePtr->PrivateData, 4, XUSBPSU_EP_DIR_OUT, MaxPktSize, XUSBPSU_ENDPOINT_XFER_INT, FALSE);

		if (RetVal != XST_SUCCESS)
		{
			xil_printf("failed to enable BULK OUT Ep\r\n");
			return XST_FAILURE;
		}

		SetConfigDone(InstancePtr->PrivateData, 1U);

		/* Reset the Phase to default COMMAND STATE */
		Phase = USB_EP_STATE_COMMAND;

		/*
		* As per Mass storage specification we receive 31 byte length
		* Command Block Wrapper first. So lets make OUT Endpoint ready
		* to receive it. OUT Ep Handler will be called when data is
		* received
		*/

		// Changed by Xu Li EpBufferRecv(InstancePtr->PrivateData, 1, (u8*)&CBW, sizeof(CBW));

	}
	else // SET_CONFIGURATION with value 0
	{
		/* Endpoint disables - not needed for Control EP */
		RetVal = XUsbPsu_EpDisable(InstancePtr->PrivateData, 1, XUSBPSU_EP_DIR_IN);

		if (RetVal != XST_SUCCESS)
		{
			xil_printf("failed to disable BULK IN Ep\r\n");
			return XST_FAILURE;
		}

		RetVal = XUsbPsu_EpDisable(InstancePtr->PrivateData, 2, XUSBPSU_EP_DIR_OUT);

		if (RetVal != XST_SUCCESS)
		{
			xil_printf("failed to disable BULK OUT Ep\r\n");
			return XST_FAILURE;
		}

		RetVal = XUsbPsu_EpDisable(InstancePtr->PrivateData, 3, XUSBPSU_EP_DIR_IN);

		if (RetVal != XST_SUCCESS)
		{
			xil_printf("failed to disable BULK IN Ep\r\n");
			return XST_FAILURE;
		}

		RetVal = XUsbPsu_EpDisable(InstancePtr->PrivateData, 4, XUSBPSU_EP_DIR_OUT);

		if (RetVal != XST_SUCCESS)
		{
			xil_printf("failed to disable BULK OUT Ep\r\n");
			return XST_FAILURE;
		}

		SetConfigDone(InstancePtr->PrivateData, 0U);

		/* Reset the Phase to default COMMAND STATE */
		Phase = USB_EP_STATE_COMMAND;
	}

	return XST_SUCCESS;
}
