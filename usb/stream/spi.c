#include "xil_printf.h"
#include "xstatus.h"
#include <sleep.h>
#include "xspips.h"
#include "spi.h"
#include "gpio.h"

XSpiPs_Config *SpiConfig;
XSpiPs Spi;			/* The instance of the SPI device */

u8 ReadBuffer[SPI_BUFFER_SIZE];
u8 WriteBuffer[SPI_BUFFER_SIZE];

void init_spi()
{
	int status;

	SetEmioOutput(20, 1);
	SetEmioOutput(21, 1);
	SetEmioOutput(22, 1);
	SetEmioOutput(23, 1);

	u32 spi0_ref_control = Xil_In32(0x00FF5E007C);

	xil_printf("spi1_ref_control = 0x%x\r\n", spi0_ref_control);
	spi0_ref_control = 0x1010400;

	//static INLINE void Xil_Out32(UINTPTR Addr, u32 Value)
	//Xil_Out32(0x00FF5E0080, spi1_ref_control);
	spi0_ref_control = Xil_In32(0x00FF5E007C);
	xil_printf("spi0_ref_control = 0x%x\r\n", spi0_ref_control);

	SpiConfig = XSpiPs_LookupConfig(0);

	if (NULL == SpiConfig) {
		xil_printf("Unable to find SPI Interface\r\n");
		return XST_FAILURE;
	}

	status = XSpiPs_CfgInitialize(&Spi, SpiConfig, SpiConfig->BaseAddress);
	if (status != XST_SUCCESS) {
		xil_printf("Failed Initialize SPI Interface\r\n");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("SPI Interface Initialize success = 0x%x, clock = %d, id = %d\r\n", SpiConfig->BaseAddress, SpiConfig->InputClockHz, SpiConfig->DeviceId);
		xil_printf("IsReady = 0x%x, SlaveSelect = %d, IsBusy = %d\r\n", Spi.IsReady, Spi.SlaveSelect, Spi.IsBusy);
	}

	status = XSpiPs_SelfTest(&Spi);

	if (status != XST_SUCCESS) {
		xil_printf("Failed self-test SPI Interface\r\n");
		return XST_FAILURE;
	}

	status = XSpiPs_SetOptions(&Spi, XSPIPS_MASTER_OPTION | XSPIPS_MANUAL_START_OPTION | XSPIPS_FORCE_SSELECT_OPTION );
	if (status != XST_SUCCESS) {
		xil_printf("Failed SetOptions\r\n");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("SetOptions success.\r\n");
	}

	status = XSpiPs_SetClkPrescaler(&Spi, XSPIPS_CLK_PRESCALE_4);
	if (status != XST_SUCCESS) {
		xil_printf("Failed SetClkPrescaler\r\n");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Successfully Initialized SPI.\r\n");
	}

	memset(WriteBuffer, 0x00, sizeof(WriteBuffer));
	memset(ReadBuffer, 0x00, sizeof(ReadBuffer));
}

void Spi_Select_Clock()
{
	XSpiPs_SetSlaveSelect(&Spi, 0x0);
	SetEmio(20, 1);
	SetEmio(21, 1);
	SetEmio(22, 1);
	SetEmio(23, 1);
}

void Spi_Select_ADC()
{
	XSpiPs_SetSlaveSelect(&Spi, 0x1);
	SetEmio(20, 0);
	SetEmio(21, 0);
	SetEmio(22, 1);
	SetEmio(23, 1);
}

void Spi_Select_DAC()
{
	XSpiPs_SetSlaveSelect(&Spi, 0x2);
	SetEmio(20, 1);
	SetEmio(21, 1);
	SetEmio(22, 0);
	SetEmio(23, 0);
}

void Spi_Deselect()
{
	SetEmio(20, 1);
	SetEmio(21, 1);
	SetEmio(22, 1);
	SetEmio(23, 1);
}

void SPI_WR_AD9544(u16 addr, u8 data)
{
	u8 rnw = 0;
	WriteBuffer[0] = (u8)((rnw << 7) + ((addr & 0x7F00) >> 8));
	WriteBuffer[1] = (u8)(addr & 0x00FF);
	WriteBuffer[2] = data;

	Spi_Select_Clock();
	XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, 3);
	Spi_Deselect();
}

u8 SPI_RD_AD9544(u16 addr)
{
	u8 rnw = 1;
	WriteBuffer[0] = (u8)((rnw << 7) + ((addr & 0x7F00) >> 8));
	WriteBuffer[1] = (u8)(addr & 0x00FF);

	Spi_Select_Clock();
	XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, 3);
	return ReadBuffer[2];
}

void SPI_WR_AD9643(u16 addr, u8 data)
{
	u8 rnw = 0;
	u8 w = 0;
	WriteBuffer[0] = (u8)(((rnw & 0x1) << 7) + ((w & 0x3) << 5) + ((addr & 0x1F00) >> 8));
	WriteBuffer[1] = (u8)(addr & 0x00FF);
	WriteBuffer[2] = data;

	Spi_Select_ADC();
	//XSpiPs_SetSlaveSelect(&Spi, 0x1);
	XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, 3);
	Spi_Deselect();
	SPI_RD_AD9643(addr);

}

u8 SPI_RD_AD9643(u16 addr)
{
	u8 rnw = 1;
	u8 w = 0;
	WriteBuffer[0] = (u8)(((rnw & 0x1) << 7) + ((w & 0x3) << 5) + ((addr & 0x1F00) >> 8));
	WriteBuffer[1] = (u8)(addr & 0x00FF);
	//WriteBuffer[2] = data;

	Spi_Select_ADC();
	XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, 2);
	SetEmio(21, 1); // Tristate ADC buffer
	XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, 1);
	Spi_Deselect();

	xil_printf("Read AD9643 SPI: 0x%04x = 0x%02x\r\n", addr, ReadBuffer[0]);

	return ReadBuffer[0];
}

void SPI_WR_AD9142(u16 addr, u8 data)
{
	u8 rnw = 0;
	WriteBuffer[0] = (u8)((rnw << 7) + ((addr & 0x7F00) >> 8));
	WriteBuffer[1] = (u8)(addr & 0x00FF);
	WriteBuffer[2] = data;

	Spi_Select_DAC();
	XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, 3);
	Spi_Deselect();

	//xil_printf("Read AD9142 SPI: 0x%04x = 0x%02x\r\n", addr, SPI_RD_AD9142(addr));
}

u8 SPI_RD_AD9142(u16 addr)
{
	u8 rnw = 1;
	WriteBuffer[0] = (u8)((rnw << 7) + ((addr & 0x7F00) >> 8));
	WriteBuffer[1] = (u8)(addr & 0x00FF);
	//WriteBuffer[2] = data;

	Spi_Select_DAC();
	XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, 2);
	SetEmio(23, 1); // Tristate DAC buffer
	XSpiPs_PolledTransfer(&Spi, WriteBuffer, ReadBuffer, 1);
	Spi_Deselect();
	return ReadBuffer[0];
}
