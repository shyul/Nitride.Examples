#include <sleep.h>
#include "AD9643.h"
#include "spi.h"
#include "gpio.h"
#include "xil_printf.h"
#include "xstatus.h"

void init_AD9643()
{
	SetEmioOutput(6, 1);
	SetEmioOutput(7, 1);
	SetEmio(7, 0);


	SetEmio(24, 1);
	usleep(10000);
	SetEmio(24, 0);

	SPI_WR_AD9142(0x00, 0x4); // Software Reset
	usleep(1000);
	SPI_WR_AD9142(0x00, 0x0); // Software Reset

	SPI_RD_AD9643(0x02);
	SPI_RD_AD9643(0x05);
	SPI_RD_AD9643(0x01);


	//SPI_WR_AD9643(0x0D, 0xF); // Ramp Test Pattern
	SPI_WR_AD9643(0x15, 0x0);// Drive Strength
	SPI_WR_AD9643(0x18, 0x10);
	SPI_WR_AD9643(0x19, 0xA5);
	SPI_WR_AD9643(0x1A, 0x5A);



	SPI_WR_AD9643(0xFF, 0x1);
	usleep(10000);
	SPI_WR_AD9643(0xFF, 0x0);

	SPI_RD_AD9643(0x0D);
	SPI_RD_AD9643(0x19);

	//usleep(10000);

	SetEmio(6, 0);
	usleep(10000);
	SetEmio(22, 1);
	usleep(10000);
	SetEmio(22, 0);
	usleep(10000);
}
