#ifndef __SPI_H_
#define __SPI_H_

#include "xspips.h"

#define SPI_DEVICE_ID		XPAR_XSPIPS_1_DEVICE_ID
#define SPI_BUFFER_SIZE		16

void init_spi();
void SPI_WR_AD9544(u16 addr, u8 data);
u8 SPI_RD_AD9544(u16 addr);
void SPI_WR_AD9643(u16 addr, u8 data);
u8 SPI_RD_AD9643(u16 addr);
void SPI_WR_AD9142(u16 addr, u8 data);
u8 SPI_RD_AD9142(u16 addr);

#endif
