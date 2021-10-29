#ifndef __GPIO_H_
#define __GPIO_H_

//#include "xgpiops.h"

#define GPIO_DEVICE_ID		XPAR_XGPIOPS_0_DEVICE_ID
#define LED_ON				0x0
#define LED_OFF				0x1

void SetEmioInput(u32 num);
void SetEmioOutput(u32 num, u32 d);
void SetEmio(u32 num, u32 d);
//void SetMioOutput(u32 num, u32 d);
//void SetMioInput(u32 num);
//void SetMio(u32 num, u32 d);

void init_gpio();
void ethernet_phy_reset();
void led_sd(u32 data);
void led_0(u32 data);
void led_1(u32 data);
void led_2(u32 data);
void led_3(u32 data);
void Set_GPIO_0_Out(u32 d);
void Set_GPIO_0_Input();
void Write_GPIO_0(u32 d);
u32 Read_GPIO_0();
void Set_GPIO_1_Out(u32 d);
void Set_GPIO_1_Input();
void Write_GPIO_1(u32 d);
u32 Read_GPIO_1();
void Set_GPIO_2_Out(u32 d);
void Set_GPIO_2_Input();
void Write_GPIO_2(u32 d);
u32 Read_GPIO_2();
void Set_GPIO_3_Out(u32 d);
void Set_GPIO_3_Input();
void Write_GPIO_3(u32 d);
u32 Read_GPIO_3();
void Set_GPIO_4_Out(u32 d);
void Set_GPIO_4_Input();
void Write_GPIO_4(u32 d);
u32 Read_GPIO_4();
void Set_GPIO_5_Out(u32 d);
void Set_GPIO_5_Input();
void Write_GPIO_5(u32 d);
u32 Read_GPIO_5();
void Set_GPIO_6_Out(u32 d);
void Set_GPIO_6_Input();
void Write_GPIO_6(u32 d);
u32 Read_GPIO_6();
void Set_GPIO_7_Out(u32 d);
void Set_GPIO_7_Input();
void Write_GPIO_7(u32 d);
u32 Read_GPIO_7();

#endif
