/*
 * leds.c
 *
 *  Created on: Jul 31, 2017
 *      Author: F27284C
 */
#include "stm32f4_discovery.h"
extern TIM_HandleTypeDef htim4;
extern FLAG_STATE FLAG_TI;

void back_light_on()
{

	  BSP_LED_On(STP0);
	  BSP_LED_On(STP1);
	  BSP_LED_On(STP2);

}
void back_light_off()
{
	  BSP_LED_Off(STP0);
	  BSP_LED_Off(STP1);
	  BSP_LED_Off(STP2);
}
void back_light_toggle()
{
	  BSP_LED_Toggle(STP0);
	  BSP_LED_Toggle(STP1);
	  BSP_LED_Toggle(STP2);
}
void turn_indicator_on(void)
{
	HAL_TIM_Base_Start_IT(&htim4);
	FLAG_TI=FLAG_ON;
}
void turn_indicator_off(void)
{
	 FLAG_TI=FLAG_OFF;
}
void go_back_on(void)
{
	BSP_LED_On(LEDGOBACK1);
	BSP_LED_On(LEDGOBACK2);

}
void go_back_off(void)
{
	BSP_LED_Off(LEDGOBACK1);
	BSP_LED_Off(LEDGOBACK2);
}