/*******************************************************************************/

/***************************** Include Files **********************************/

#include <stdio.h>
#include <sleep.h>
#include "xil_printf.h"
#include "xstatus.h"
#include "gpio.h"
#include "spi.h"
#include "AD9142.h"

void ReadbackDACSPI()
{
	xil_printf("int_flags_0 = 0x%02x\r\n", SPI_RD_AD9142(0x5));
	xil_printf("int_flags_1 = 0x%02x\r\n", SPI_RD_AD9142(0x6));
	xil_printf("data_status_0 = 0x%02x\r\n", SPI_RD_AD9142(0xE));
	xil_printf("PLL_STAT_0 = 0x%02x\r\n", SPI_RD_AD9142(0x16));
	xil_printf("PLL_STAT_1 = 0x%02x\r\n", SPI_RD_AD9142(0x17));


	/*
	SPI_WR_AD9142(0x34, 0x60);
	SPI_WR_AD9142(0x33, 0x0D);
	SPI_WR_AD9142(0x32, 0xF0);
	SPI_WR_AD9142(0x31, 0x0D);

	ReadbackAD9142Loud(0x34);
	ReadbackAD9142Loud(0x33);
	ReadbackAD9142Loud(0x32);
	ReadbackAD9142Loud(0x31);

	u8 data = SPI_RD_AD9142(0x7F);
	xil_printf("Read AD9142 SPI: 0x%04x = 0x%02x\r\n", 0x7F, data);

	data = SPI_RD_AD9142(0x5E);
	xil_printf("Read AD9142 SPI: 0x%04x = 0x%02x\r\n", 0x5E, data);

	data = SPI_RD_AD9142(0x5F);
	xil_printf("Read AD9142 SPI: 0x%04x = 0x%02x\r\n", 0x5F, data);

	data = ReadAD9142Spi(0x23);
	xil_printf("Read AD9142 SPI: 0x%04x = 0x%02x\r\n", 0x23, data);*/

	xil_printf("\r\n\r\n\r\n");

}

void init_AD9142()
{
	u8 div_setting = 0xC5;

	Start:
	SetEmioOutput(8, 0);
	SetEmioOutput(9, 0);
	SetEmioInput(10);
	SetEmioInput(11);
	SetEmio(25, 1);

	usleep(1000000);
	SetEmio(8, 1); // Unreset DAC
	SetEmio(25, 0);
	usleep(10000);

	SPI_WR_AD9142(0x00, 0x20); // Software Reset
	usleep(100000);
	SPI_WR_AD9142(0x20, 0x01); // Device Start up Configuration

	//SPI_WR_AD9142(0x11, 0xD7);

	usleep(100000);
	SPI_WR_AD9142(0x15, div_setting);
	//SPI_WR_AD9142(0x15, 0xC5);
	SPI_WR_AD9142(0x14, 0x87); // PLL loop bandwidth and CP current (Fixed...)
	//SPI_WR_AD9142(0x14, 0x87);
	//WriteAD9142Spi(0x14, 0xE7);
	SPI_WR_AD9142(0x12, 0xC0);
	SPI_WR_AD9142(0x12, 0x80);
	usleep(1000000);



	u8 pll_status_0 = SPI_RD_AD9142(0x16);
	int i = 0;
	while(((pll_status_0 >> 7) & 0x1) == 0)
	{
		pll_status_0 = SPI_RD_AD9142(0x16);
		xil_printf("pll_status_0  =  0x%02x\r\n", SPI_RD_AD9142(0x16));
		xil_printf("pll_status_1  =  0x%02x\r\n", SPI_RD_AD9142(0x17));
		xil_printf("\r\n\r\n");
		usleep(400000);
		i++;

		if(i > 5)
		{
			if(div_setting == 0xC5)
				div_setting = 0xC4;
			else
				div_setting = 0xC5;

			goto Start;
		}
	}



	SPI_WR_AD9142(0x5E, 0xFE);
	SPI_WR_AD9142(0x0A, 0xC0);

	u8 data_stat_0 = 0x0;

	while(((data_stat_0 >> 7) & 0x1) == 0)
	{
		data_stat_0 = SPI_RD_AD9142(0xE);
		xil_printf("data_stat_0 =  0x%02x\r\n", data_stat_0);
	}

	SPI_WR_AD9142(0x28, 0x02); // 4x Interpolation;

	SPI_WR_AD9142(0x25, 0x01); // Reset FIFO

	u8 fifo_ctrl = 0x0;

	while(((fifo_ctrl >> 1) & 0x1) == 0)
	{
		fifo_ctrl = SPI_RD_AD9142(0x25);
		xil_printf("fifo_ctrl =  0x%02x\r\n", fifo_ctrl);
	}

	u8 fifo_level_readback = SPI_RD_AD9142(0x24);
	xil_printf("fifo_level_readback =  0x%02x\r\n", fifo_level_readback);


	// Configure NCO
	SPI_WR_AD9142(0x27, 0x40);
	SPI_WR_AD9142(0x34, 0x33);
	SPI_WR_AD9142(0x33, 0x33);
	SPI_WR_AD9142(0x32, 0x33);
	SPI_WR_AD9142(0x31, 0x33);
	SPI_WR_AD9142(0x30, 0x1);

	u8 nco_ctrl = SPI_RD_AD9142(0x30);
	while(((nco_ctrl >> 1) & 0x1) == 0)
	{
		nco_ctrl = SPI_RD_AD9142(0x30);
		xil_printf("nco_ctrl =  0x%02x\r\n", nco_ctrl);
	}

	xil_printf("nco_ctrl =  0x%02x\r\n", nco_ctrl);


	//SPI_WR_AD9142(0x27, 0x80); // C0;
	SPI_WR_AD9142(0x27, 0xC0);
	SPI_WR_AD9142(0x01, 0x00); // Power up output!

	SetEmio(9, 1); // TXEN DAC

}

// Change
