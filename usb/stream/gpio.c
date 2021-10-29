#include <xil_printf.h>
#include <sleep.h>
#include "gpio.h"
#include "xgpiops.h"

XGpioPs_Config *GpioConfig;
XGpioPs Gpio;	/* The driver instance for GPIO Device. */

void SetEmioInput(u32 num)
{
	XGpioPs_SetDirectionPin(&Gpio, num + 78, 0);
}

void SetEmioOutput(u32 num, u32 d)
{
	XGpioPs_SetDirectionPin(&Gpio, num + 78, 1);
	XGpioPs_WritePin(&Gpio, num + 78, d);
	XGpioPs_SetOutputEnablePin(&Gpio, num + 78, 1);
}

void SetEmio(u32 num, u32 d)
{
	XGpioPs_WritePin(&Gpio, num + 78, d);
}

u32 ReadEmio(u32 num)
{
	return XGpioPs_ReadPin(&Gpio, num + 78);
}

void SetMioOutput(u32 num, u32 d)
{
	XGpioPs_SetDirectionPin(&Gpio, num, 1);
	XGpioPs_WritePin(&Gpio, num, d);
	XGpioPs_SetOutputEnablePin(&Gpio, num, 1);
}

void SetMioInput(u32 num)
{
	XGpioPs_SetDirectionPin(&Gpio, num, 0);
}

void SetMio(u32 num, u32 d)
{
	XGpioPs_WritePin(&Gpio, num, d);
}

void test_gpio()
{
	xil_printf("MaxPinNum = %d, MaxBanks = %d\r\n", Gpio.MaxPinNum, Gpio.MaxBanks);
}


void init_gpio()
{
	GpioConfig = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	XGpioPs_CfgInitialize(&Gpio, GpioConfig, GpioConfig->BaseAddr);

	/*
	XGpioPs_SetDirectionPin(&Gpio, 46, 0); // GEM1_INT_B
	XGpioPs_SetDirectionPin(&Gpio, 49, 1); // GEM1_RESET_B
	XGpioPs_SetDirectionPin(&Gpio, 11, 1);
	XGpioPs_SetDirectionPin(&Gpio, 17, 1);
	XGpioPs_SetDirectionPin(&Gpio, 20, 1);
	XGpioPs_SetDirectionPin(&Gpio, 19, 1);
	XGpioPs_SetDirectionPin(&Gpio, 25, 1);

	XGpioPs_SetOutputEnablePin(&Gpio, 49, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, 11, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, 17, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, 20, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, 19, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, 25, 1);

	//XGpioPs_WritePin(&Gpio, 49, 0x0);
	XGpioPs_WritePin(&Gpio, 11, LED_OFF);
	XGpioPs_WritePin(&Gpio, 17, LED_OFF);
	XGpioPs_WritePin(&Gpio, 20, LED_OFF);
	XGpioPs_WritePin(&Gpio, 19, LED_OFF);
	XGpioPs_WritePin(&Gpio, 25, LED_OFF);*/

	SetMioInput(46);
	SetMioOutput(11, LED_OFF);
	SetMioOutput(17, LED_OFF);
	SetMioOutput(20, LED_OFF);
	SetMioOutput(19, LED_OFF);
	SetMioOutput(25, LED_OFF);
	ethernet_phy_reset();
}

void ethernet_phy_reset()
{
	XGpioPs_WritePin(&Gpio, 49, 0x1);
	usleep(10000);
	XGpioPs_WritePin(&Gpio, 49, 0x0);
	usleep(10000);
	XGpioPs_WritePin(&Gpio, 49, 0x1);
}

void led_sd(u32 data)
{
	XGpioPs_WritePin(&Gpio, 11, data);
}

void led_0(u32 data)
{
	XGpioPs_WritePin(&Gpio, 17, data);
}

void led_1(u32 data)
{
	XGpioPs_WritePin(&Gpio, 20, data);
}

void led_2(u32 data)
{
	XGpioPs_WritePin(&Gpio, 19, data);
}

void led_3(u32 data)
{
	XGpioPs_WritePin(&Gpio, 25, data);
}


void Set_GPIO_0_Out(u32 d)
{
	SetMioOutput(47, d);
}

void Set_GPIO_0_Input()
{
	XGpioPs_SetDirectionPin(&Gpio, 47, 0);
}

void Write_GPIO_0(u32 d)
{
	XGpioPs_WritePin(&Gpio, 47, d);
}

u32 Read_GPIO_0()
{
	return XGpioPs_ReadPin(&Gpio, 47);
}

void Set_GPIO_1_Out(u32 d)
{
	SetMioOutput(48, d);
}

void Set_GPIO_1_Input()
{
	XGpioPs_SetDirectionPin(&Gpio, 48, 0);
}

void Write_GPIO_1(u32 d)
{
	XGpioPs_WritePin(&Gpio, 48, d);
}

u32 Read_GPIO_1()
{
	return XGpioPs_ReadPin(&Gpio, 48);
}

void Set_GPIO_2_Out(u32 d)
{
	SetMioOutput(8, d);
}

void Set_GPIO_2_Input()
{
	XGpioPs_SetDirectionPin(&Gpio, 8, 0);
}

void Write_GPIO_2(u32 d)
{
	XGpioPs_WritePin(&Gpio, 8, d);
}

u32 Read_GPIO_2()
{
	return XGpioPs_ReadPin(&Gpio, 8);
}

void Set_GPIO_3_Out(u32 d)
{
	SetMioOutput(9, d);
}

void Set_GPIO_3_Input()
{
	XGpioPs_SetDirectionPin(&Gpio, 9, 0);
}

void Write_GPIO_3(u32 d)
{
	XGpioPs_WritePin(&Gpio, 9, d);
}

u32 Read_GPIO_3()
{
	return XGpioPs_ReadPin(&Gpio, 9);
}

void Set_GPIO_4_Out(u32 d)
{
	SetMioOutput(10, d);
}

void Set_GPIO_4_Input()
{
	XGpioPs_SetDirectionPin(&Gpio, 10, 0);
}

void Write_GPIO_4(u32 d)
{
	XGpioPs_WritePin(&Gpio, 10, d);
}

u32 Read_GPIO_4()
{
	return XGpioPs_ReadPin(&Gpio, 10);
}

void Set_GPIO_5_Out(u32 d)
{
	SetMioOutput(12, d);
}

void Set_GPIO_5_Input()
{
	XGpioPs_SetDirectionPin(&Gpio, 12, 0);
}

void Write_GPIO_5(u32 d)
{
	XGpioPs_WritePin(&Gpio, 12, d);
}

u32 Read_GPIO_5()
{
	return XGpioPs_ReadPin(&Gpio, 12);
}

void Set_GPIO_6_Out(u32 d)
{
	SetMioOutput(18, d);
}

void Set_GPIO_6_Input()
{
	XGpioPs_SetDirectionPin(&Gpio, 18, 0);
}

void Write_GPIO_6(u32 d)
{
	XGpioPs_WritePin(&Gpio, 18, d);
}

u32 Read_GPIO_6()
{
	return XGpioPs_ReadPin(&Gpio, 18);
}

void Set_GPIO_7_Out(u32 d)
{
	SetMioOutput(23, d);
}

void Set_GPIO_7_Input()
{
	XGpioPs_SetDirectionPin(&Gpio, 23, 0);
}

void Write_GPIO_7(u32 d)
{
	XGpioPs_WritePin(&Gpio, 23, d);
}

u32 Read_GPIO_7()
{
	return XGpioPs_ReadPin(&Gpio, 23);
}
