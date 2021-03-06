#include <sleep.h>
#include "AD9544.h"
#include "spi.h"
#include "xil_printf.h"
#include "xstatus.h"

void AD9544_IO_Update()
{
	SPI_WR_AD9544(0xF, 0x1);
	usleep(10000);
	SPI_WR_AD9544(0xF, 0x0);
}

void ReadSpiLoud(u16 addr)
{
	u8 data = SPI_RD_AD9544(addr);
	xil_printf("Read SPI Address: 0x%04x = 0x%02x\r\n", addr, data);
}

void WriteReadSpi(u16 addr, u8 data)
{
	SPI_WR_AD9544(addr, data);
	ReadSpiLoud(addr);
}

void ReadbackAD9544Status()
{
	xil_printf("AD9544 Read status registers. \r\n\r\n");

	for(int i = 0x3000; i <= 0x3008; i++)
	{
		ReadSpiLoud(i);
	}

	xil_printf("\r\n\r\n PLL0 Status \r\n\r\n");

	for(int i = 0x3100; i <= 0x310E; i++)
	{
		ReadSpiLoud(i);
	}

	xil_printf("\r\n\r\n PLL1 Status \r\n\r\n");

	for(int i = 0x3200; i <= 0x320E; i++)
	{
		ReadSpiLoud(i);
	}
}

void init_AD9544()
{
	SetEmioOutput(0, 0);
	SetEmioInput(1);
	SetEmioInput(2);
	SetEmioInput(3);
	SetEmioInput(4);
	SetEmioInput(5);
	usleep(10000);
	SetEmio(0, 1); // Unreset AD9544
	usleep(10000);

	SPI_WR_AD9544(0x0000,0x18);
	SPI_WR_AD9544(0x0020,0x0D);
	SPI_WR_AD9544(0x0021,0xF0);
	SPI_WR_AD9544(0x0022,0x0D);
	SPI_WR_AD9544(0x0023,0x90);
	AD9544_IO_Update();

	SPI_WR_AD9544(0x0102,0xA0);
	SPI_WR_AD9544(0x0103,0xA1);
	SPI_WR_AD9544(0x0104,0xA2);
	SPI_WR_AD9544(0x0105,0xA3);
	//IO_Update();

	SPI_WR_AD9544(0x0200,0x17);
	SPI_WR_AD9544(0x0201,0x09);
	SPI_WR_AD9544(0x0203,0x08);
	SPI_WR_AD9544(0x0204,0x71);
	SPI_WR_AD9544(0x0205,0x1B);
	SPI_WR_AD9544(0x0206,0x0C);
	SPI_WR_AD9544(0x0207,0x32);
	AD9544_IO_Update();


	// Calibrate all
	SPI_WR_AD9544(0x2000, 0x4);
	AD9544_IO_Update();
	SPI_WR_AD9544(0x2000, 0x0);
	AD9544_IO_Update();

	SPI_WR_AD9544(0x0300,0x01);
	SPI_WR_AD9544(0x0304,0x80);
	//IO_Update();

	SPI_WR_AD9544(0x2001,0x02);
	//IO_Update();

	//0x0305,0x01
	//0x0306,0x40
	//0x0307,0x40
	//(??)

	SPI_WR_AD9544(0x0400,0x31);
	SPI_WR_AD9544(0x0405,0xE8);
	SPI_WR_AD9544(0x0406,0x76);
	SPI_WR_AD9544(0x0407,0x48);
	SPI_WR_AD9544(0x0408,0x17);
	SPI_WR_AD9544(0x0420,0x31);
	SPI_WR_AD9544(0x0425,0xE8);
	SPI_WR_AD9544(0x0426,0x76);
	SPI_WR_AD9544(0x0427,0x48);
	SPI_WR_AD9544(0x0428,0x17);
	SPI_WR_AD9544(0x0440,0x7C);
	SPI_WR_AD9544(0x0445,0x90);
	SPI_WR_AD9544(0x0446,0x2F);
	SPI_WR_AD9544(0x0447,0x50);
	SPI_WR_AD9544(0x0448,0x09);
	SPI_WR_AD9544(0x0466,0x64);
	SPI_WR_AD9544(0x0467,0xA7);
	SPI_WR_AD9544(0x0468,0xB3);
	SPI_WR_AD9544(0x0469,0xB6);
	SPI_WR_AD9544(0x046A,0xE0);
	SPI_WR_AD9544(0x046B,0x0D);
	AD9544_IO_Update();



	//0x0880,0x00
	//0x0881,0x00
	//0x0883,0x00
	//0x0884,0x00
	//0x0885,0x00
	//0x0886,0x00
	//0x0888,0x00
	//0x0889,0x00



	//0x08A0,0x00
	//0x08A1,0x00
	//0x08A3,0x00
	//0x08A4,0x00
	//0x08A5,0x00
	//0x08A6,0x00
	//0x08A8,0x00
	//0x08A9,0x00


	SPI_WR_AD9544(0x1000,0x92);
	SPI_WR_AD9544(0x1001,0x02);
	SPI_WR_AD9544(0x1002,0x77);
	SPI_WR_AD9544(0x1003,0xDF);
	SPI_WR_AD9544(0x1004,0x71);
	SPI_WR_AD9544(0x1005,0x21);
	SPI_WR_AD9544(0x1081,0x08);
	SPI_WR_AD9544(0x10D7,0x4);
	SPI_WR_AD9544(0x10D8,0x5);
	SPI_WR_AD9544(0x10D9,0x5);
	SPI_WR_AD9544(0x10DB,0x02);
	//IO_Update();

	SPI_WR_AD9544(0x1100,0x05);
	SPI_WR_AD9544(0x1112,0x05);
	SPI_WR_AD9544(0x1124,0x05);
	//IO_Update();


	SPI_WR_AD9544(0x1200,0x01);
	SPI_WR_AD9544(0x1201,0x02);

	u32 bwHz = 50;

	//u32 bw = 0x2FAF080;
	u32 bw = bwHz * 1e6;

	SPI_WR_AD9544(0x1204, bw & 0xFF);
	SPI_WR_AD9544(0x1205, (bw >> 8) & 0xFF);
	SPI_WR_AD9544(0x1206, (bw >> 16) & 0xFF);
	SPI_WR_AD9544(0x1207, (bw >> 24) & 0xFF);

	usleep(100000);
	// Calibrate all
	SPI_WR_AD9544(0x2000, 0x2);
	AD9544_IO_Update();
	SPI_WR_AD9544(0x2000, 0x0);
	AD9544_IO_Update();
	usleep(100000);

	//WriteSpi(0x1204,0x80);
	//WriteSpi(0x1205,0xF0);
	//WriteSpi(0x1206,0xFA);
	//SPI_WR_AD9544(0x1207,0x02);

	SPI_WR_AD9544(0x120C,0x19);
	SPI_WR_AD9544(0x120D,0x06);
	SPI_WR_AD9544(0x1210,0x01);
	SPI_WR_AD9544(0x1213,0x02);
	//IO_Update();

	SPI_WR_AD9544(0x1400,0x46);
	SPI_WR_AD9544(0x1401,0x8B);
	SPI_WR_AD9544(0x1402,0x18);
	SPI_WR_AD9544(0x1403,0xAA);
	SPI_WR_AD9544(0x1404,0xAC);
	SPI_WR_AD9544(0x1405,0x23);
	//IO_Update();

	SPI_WR_AD9544(0x1481,0x0C);
	//IO_Update();

	SPI_WR_AD9544(0x14D7,0x5);
	SPI_WR_AD9544(0x14D8,0x5);
	SPI_WR_AD9544(0x14DB,0x01);
	//IO_Update();

	//Q1A and Q1B Output Divider

	SPI_WR_AD9544(0x1500,0x08);
	SPI_WR_AD9544(0x1512,0x08);
	//IO_Update();

	SPI_WR_AD9544(0x1600,0x01);
	SPI_WR_AD9544(0x1601,0x02);

	SPI_WR_AD9544(0x1604, bw & 0xFF);
	SPI_WR_AD9544(0x1605, (bw >> 8) & 0xFF);
	SPI_WR_AD9544(0x1606, (bw >> 16) & 0xFF);
	SPI_WR_AD9544(0x1607, (bw >> 24) & 0xFF);



	// ******* Mute DB Clock ***********
	//SPI_WR_AD9544(0x2202,0x1C);
	//SPI_WR_AD9544(0x2203,0x1C);





	usleep(100000);
	// Calibrate all
	SPI_WR_AD9544(0x2000, 0x2);
	AD9544_IO_Update();
	SPI_WR_AD9544(0x2000, 0x0);
	AD9544_IO_Update();
	usleep(100000);

	//WriteSpi(0x1604,0x80);
	//WriteSpi(0x1605,0xF0);
	//WriteSpi(0x1606,0xFA);
	//SPI_WR_AD9544(0x1607,0x02);

	SPI_WR_AD9544(0x160C,0x81);
	SPI_WR_AD9544(0x160D,0x06);
	SPI_WR_AD9544(0x1610,0x02);
	SPI_WR_AD9544(0x1613,0x03);
	AD9544_IO_Update();

	usleep(100000);
	// Calibrate all
	SPI_WR_AD9544(0x2000, 0x2);
	AD9544_IO_Update();
	SPI_WR_AD9544(0x2000, 0x0);
	AD9544_IO_Update();
	usleep(100000);

	SPI_WR_AD9544(0x2000, 0x8);
	AD9544_IO_Update();
	SPI_WR_AD9544(0x2000, 0x0);
	AD9544_IO_Update();
	usleep(100000);
}

void Init_AD9544_REFA_10MHz()
{
	SPI_WR_AD9544(0x0000,0x18);
	SPI_WR_AD9544(0x0020,0x0D);
	SPI_WR_AD9544(0x0021,0xF0);
	SPI_WR_AD9544(0x0022,0x0D);
	SPI_WR_AD9544(0x0023,0x90);
	AD9544_IO_Update();

	SPI_WR_AD9544(0x0102,0xA0);
	SPI_WR_AD9544(0x0103,0xA1);
	SPI_WR_AD9544(0x0104,0xA2);
	SPI_WR_AD9544(0x0105,0xA3);
	//IO_Update();

	SPI_WR_AD9544(0x0200,0x17);
	SPI_WR_AD9544(0x0201,0x09);
	SPI_WR_AD9544(0x0203,0x08);
	SPI_WR_AD9544(0x0204,0x71);
	SPI_WR_AD9544(0x0205,0x1B);
	SPI_WR_AD9544(0x0206,0x0C);
	SPI_WR_AD9544(0x0207,0x32);
	AD9544_IO_Update();


	// Calibrate all
	SPI_WR_AD9544(0x2000, 0x4);
	AD9544_IO_Update();
	SPI_WR_AD9544(0x2000, 0x0);
	AD9544_IO_Update();

	SPI_WR_AD9544(0x0300,0x01);
	SPI_WR_AD9544(0x0304,0x80);

	SPI_WR_AD9544(0x0305,0x01);
	SPI_WR_AD9544(0x0306,0x40);
	SPI_WR_AD9544(0x0307,0x40);

	SPI_WR_AD9544(0x2001,0x02);

	SPI_WR_AD9544(0x0400,0x31);
	SPI_WR_AD9544(0x0405,0xE8);
	SPI_WR_AD9544(0x0406,0x76);
	SPI_WR_AD9544(0x0407,0x48);
	SPI_WR_AD9544(0x0408,0x17);
	SPI_WR_AD9544(0x0420,0x31);
	SPI_WR_AD9544(0x0425,0xE8);
	SPI_WR_AD9544(0x0426,0x76);
	SPI_WR_AD9544(0x0427,0x48);
	SPI_WR_AD9544(0x0428,0x17);
	SPI_WR_AD9544(0x0440,0x7C);
	SPI_WR_AD9544(0x0445,0x90);
	SPI_WR_AD9544(0x0446,0x2F);
	SPI_WR_AD9544(0x0447,0x50);
	SPI_WR_AD9544(0x0448,0x09);
	SPI_WR_AD9544(0x0466,0x64);
	SPI_WR_AD9544(0x0467,0xA7);
	SPI_WR_AD9544(0x0468,0xB3);
	SPI_WR_AD9544(0x0469,0xB6);
	SPI_WR_AD9544(0x046A,0xE0);
	SPI_WR_AD9544(0x046B,0x0D);
	//IO_Update();

	SPI_WR_AD9544(0x0880,0x00);
	SPI_WR_AD9544(0x0881,0x00);
	SPI_WR_AD9544(0x0883,0x00);
	SPI_WR_AD9544(0x0884,0x00);
	SPI_WR_AD9544(0x0885,0x00);
	SPI_WR_AD9544(0x0886,0x00);
	SPI_WR_AD9544(0x0888,0x00);
	SPI_WR_AD9544(0x0889,0x00);
	SPI_WR_AD9544(0x08A0,0x00);
	SPI_WR_AD9544(0x08A1,0x00);
	SPI_WR_AD9544(0x08A3,0x00);
	SPI_WR_AD9544(0x08A4,0x00);
	SPI_WR_AD9544(0x08A5,0x00);
	SPI_WR_AD9544(0x08A6,0x00);
	SPI_WR_AD9544(0x08A8,0x00);
	SPI_WR_AD9544(0x08A9,0x00);




	SPI_WR_AD9544(0x1000,0x92);
	SPI_WR_AD9544(0x1001,0x02);
	SPI_WR_AD9544(0x1002,0x77);
	SPI_WR_AD9544(0x1003,0xDF);
	SPI_WR_AD9544(0x1004,0x71);
	SPI_WR_AD9544(0x1005,0x21);
	SPI_WR_AD9544(0x1081,0x08);
	SPI_WR_AD9544(0x10D7,0x4);
	SPI_WR_AD9544(0x10D8,0x5);
	SPI_WR_AD9544(0x10D9,0x5);
	SPI_WR_AD9544(0x10DB,0x02);
	//IO_Update();

	SPI_WR_AD9544(0x1100,0x05);
	SPI_WR_AD9544(0x1112,0x05);
	SPI_WR_AD9544(0x1124,0x05);
	//IO_Update();


	SPI_WR_AD9544(0x1200,0x01);
	//SPI_WR_AD9544(0x1201,0x02);
	SPI_WR_AD9544(0x1204,0x80);
	SPI_WR_AD9544(0x1205,0xF0);
	SPI_WR_AD9544(0x1206,0xFA);
	SPI_WR_AD9544(0x1207,0x02);
	SPI_WR_AD9544(0x120C,0x19);
	SPI_WR_AD9544(0x120D,0x06);
	SPI_WR_AD9544(0x1210,0x01);
	SPI_WR_AD9544(0x1213,0x02);
	//IO_Update();

	SPI_WR_AD9544(0x1400,0x46);
	SPI_WR_AD9544(0x1401,0x8B);
	SPI_WR_AD9544(0x1402,0x18);
	SPI_WR_AD9544(0x1403,0xAA);
	SPI_WR_AD9544(0x1404,0xAC);
	SPI_WR_AD9544(0x1405,0x23);
	//IO_Update();

	SPI_WR_AD9544(0x1481,0x0C);
	//IO_Update();

	SPI_WR_AD9544(0x14D7,0x5);
	SPI_WR_AD9544(0x14D8,0x5);
	SPI_WR_AD9544(0x14DB,0x01);
	//IO_Update();

	SPI_WR_AD9544(0x1500,0x05);
	SPI_WR_AD9544(0x1512,0x05);
	//IO_Update();

	SPI_WR_AD9544(0x1600,0x01);
	//SPI_WR_AD9544(0x1601,0x02);
	SPI_WR_AD9544(0x1604,0x80);
	SPI_WR_AD9544(0x1605,0xF0);
	SPI_WR_AD9544(0x1606,0xFA);
	SPI_WR_AD9544(0x1607,0x02);
	SPI_WR_AD9544(0x160C,0x81);
	SPI_WR_AD9544(0x160D,0x06);
	SPI_WR_AD9544(0x1610,0x02);
	SPI_WR_AD9544(0x1613,0x03);
	AD9544_IO_Update();

	usleep(100000);
	// Calibrate all
	SPI_WR_AD9544(0x2000, 0x2);
	AD9544_IO_Update();
	SPI_WR_AD9544(0x2000, 0x0);
	AD9544_IO_Update();
	usleep(100000);

	SPI_WR_AD9544(0x2000, 0x8);
	AD9544_IO_Update();
	SPI_WR_AD9544(0x2000, 0x0);
	AD9544_IO_Update();
	usleep(100000);
}
