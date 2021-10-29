#ifndef __USB_H_
#define __USB_H_

#include "xusbpsu.h"
#include "xscugic.h"
#include "xusbpsu_endpoint.h"
#include "xusbpsu_local.h"


#define attribute(attr) __attribute__((__packed__)) attr

typedef struct {
    u32 (*Usb_Ch9SetupDevDescReply)(struct Usb_DevData *,u8 *, u32);
    u32 (*Usb_Ch9SetupCfgDescReply)(struct Usb_DevData *,u8 *, u32);
    u32 (*Usb_Ch9SetupBosDescReply)(u8 *, u32);
    u32 (*Usb_Ch9SetupStrDescReply)(struct Usb_DevData *,u8 *, u32, u8);
    s32 (*Usb_SetConfiguration)(struct Usb_DevData *, SetupPacket *);
    s32 (*Usb_SetConfigurationApp)(struct Usb_DevData *, SetupPacket *);
	void (*Usb_SetInterfaceHandler)(struct Usb_DevData *, SetupPacket *);
	void (*Usb_ClassReq)(struct Usb_DevData *, SetupPacket *);
	u32 (*Usb_GetDescReply)(struct Usb_DevData *, SetupPacket *,u8 *);
} attribute(CH9FUNC_CONTAINER);

typedef struct {
	CH9FUNC_CONTAINER ch9_func;
	void * data_ptr;
} attribute(USBCH9_DATA);





#define XUSBPSU_REQ_REPLY_LEN	    1024
#define USB_REQ_REPLY_LEN			XUSBPSU_REQ_REPLY_LEN



#define	USB_SPEED_UNKNOWN		XUSBPSU_SPEED_UNKNOWN
#define	USB_SPEED_LOW			XUSBPSU_SPEED_LOW
#define	USB_SPEED_FULL			XUSBPSU_SPEED_FULL
#define	USB_SPEED_HIGH			XUSBPSU_SPEED_HIGH
#define	USB_SPEED_SUPER			XUSBPSU_SPEED_SUPER

#define	USB_TEST_J				XUSBPSU_TEST_J
#define	USB_TEST_K				XUSBPSU_TEST_K
#define	USB_TEST_SE0_NAK		XUSBPSU_TEST_SE0_NAK
#define	USB_TEST_PACKET			XUSBPSU_TEST_PACKET
#define	USB_TEST_FORCE_ENABLE	XUSBPSU_TEST_FORCE_ENABLE







#define USB_REQ_TYPE_MASK		0x60	/**< Mask for request opcode */

#define USB_CMD_STDREQ			0x00	/**< Standard Request */
#define USB_CMD_CLASSREQ		0x20	/**< Class Request */
#define USB_CMD_VENDREQ			0x40	/**< Vendor Request */

#define USB_ENDPOINT_NUMBER_MASK	0x0f
#define USB_ENDPOINT_DIR_MASK		0x80

#define USB_ENDPOINT_XFERTYPE_MASK		0x03


// Request Values
#define USB_REQ_GET_STATUS			0x00
#define USB_REQ_CLEAR_FEATURE		0x01
#define USB_REQ_SET_FEATURE			0x03
#define USB_REQ_SET_ADDRESS			0x05
#define USB_REQ_GET_DESCRIPTOR		0x06
#define USB_REQ_SET_DESCRIPTOR		0x07
#define USB_REQ_GET_CONFIGURATION	0x08
#define USB_REQ_SET_CONFIGURATION	0x09
#define USB_REQ_GET_INTERFACE		0x0a
#define USB_REQ_SET_INTERFACE		0x0b
#define USB_REQ_SYNC_FRAME			0x0c
#define USB_REQ_SET_SEL				0x30
#define USB_REQ_SET_ISOCH_DELAY		0x31

// Feature Selectors
#define USB_ENDPOINT_HALT			0x00
#define USB_DEVICE_REMOTE_WAKEUP	0x01
#define USB_TEST_MODE				0x02
#define USB_U1_ENABLE				0x30
#define USB_U2_ENABLE				0x31
#define USB_INTRF_FUNC_SUSPEND		0x00	/* function suspend */


// Descriptor Types
#define USB_TYPE_DEVICE_DESC			0x01
#define USB_TYPE_CONFIG_DESC			0x02
#define USB_TYPE_STRING_DESC			0x03
#define USB_TYPE_INTERFACE_DESC			0x04
#define USB_TYPE_ENDPOINT_CFG_DESC		0x05
#define USB_TYPE_DEVICE_QUALIFIER		0x06
#define OSD_TYPE_CONFIG_DESCR			0x07
#define USB_TYPE_INTERFACE_ASSOCIATION	0x0b
#define USB_TYPE_BOS_DESC				0x0F
#define USB_TYPE_HID_DESC				0x21	// Get descriptor: HID
#define USB_TYPE_REPORT_DESC			0x22	// Get descriptor:Report
#define USB_TYPE_DFUFUNC_DESC			0x21    /* DFU Functional Desc */

// Status type
#define USB_STATUS_MASK			0x3
#define USB_STATUS_DEVICE		0x0
#define USB_STATUS_INTERFACE	0x1
#define USB_STATUS_ENDPOINT		0x2

// EP Types
#define USB_EP_CONTROL			0
#define USB_EP_ISOCHRONOUS		1
#define USB_EP_BULK				2
#define USB_EP_INTERRUPT		3

// Device Classes

#define USB_CLASS_AUDIO			0x01
#define USB_CLASS_HID			0x03
#define USB_CLASS_STORAGE		0x08
#define USB_CLASS_MISC			0xEF
#define USB_CLASS_DFU			0xFE //
#define USB_CLASS_TMC			0xFE
#define USB_CLASS_VENDOR		0xFF

s32 EpBufferBulkOrIntRecv(struct XUsbPsu *InstancePtr, u8 UsbEp, u8 *BufferPtr, u32 Length);
void SetEpHandler(void *InstancePtr, u8 Epnum, u8 Dir, void (*Handler)(void *, u32, u32));
u8 GetConfigDone(void *InstancePtr);
void Ch9_Handler(struct Usb_DevData *InstancePtr, SetupPacket *SetupData);
s32 SetupInterruptSystem(struct XUsbPsu *InstancePtr, void *IntcPtr);
s32 EpBufferSend(void *InstancePtr, u8 UsbEp, u8 *BufferPtr, u32 BufferLen);
s32 EpBufferRecv(void *InstancePtr, u8 UsbEp, u8 *BufferPtr, u32 Length);
void EpSetStall(void *InstancePtr, u8 Epnum, u8 Dir);
s32 IsEpStalled(void *InstancePtr, u8 Epnum, u8 Dir);
void EpClearStall(void *InstancePtr, u8 Epnum, u8 Dir);

#endif
