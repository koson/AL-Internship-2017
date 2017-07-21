/*
 * leds.c
 *
 *  Created on: Jul 21, 2017
 *      Author: F27284C
 */

#include "stm32f4xx_hal.h"
#include "stm32f4_discovery.h"
extern FLAG_STATE FLAG_TI;
extern FLAG_STATE FLAG_DLR;
extern uint16_t TIM_PERIOD;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;

void high_beam_on(void)
{
	BSP_LED_On(HBM0);
	BSP_LED_On(HBM1);
	BSP_LED_On(HBM2);
	BSP_LED_On(HBM3);
	BSP_LED_On(HBM4);

}
void high_beam_off(void)
{
	BSP_LED_Off(HBM0);
	BSP_LED_Off(HBM1);
	BSP_LED_Off(HBM2);
	BSP_LED_Off(HBM3);
	BSP_LED_Off(HBM4);
}
void high_beam_toggle(void)
{
	BSP_LED_Toggle(HBM0);
	BSP_LED_Toggle(HBM1);
	BSP_LED_Toggle(HBM2);
	BSP_LED_Toggle(HBM3);
	BSP_LED_Toggle(HBM4);
}
void low_beam_on(void)
{
	BSP_LED_On(LBM0);
	BSP_LED_On(LBM1);
	BSP_LED_On(LBM2);
	BSP_LED_On(LBM3);
	BSP_LED_On(LBM4);

}
void low_beam_toggle(void)
{
	BSP_LED_Toggle(LBM0);
	BSP_LED_Toggle(LBM1);
	BSP_LED_Toggle(LBM2);
	BSP_LED_Toggle(LBM3);
	BSP_LED_Toggle(LBM4);
}
void low_beam_off(void)
{
	BSP_LED_Off(LBM0);
	BSP_LED_Off(LBM1);
	BSP_LED_Off(LBM2);
	BSP_LED_Off(LBM3);
	BSP_LED_Off(LBM4);
}
void back_light_on(void)
{

	BSP_LED_On(STP0);
	BSP_LED_On(STP1);
	BSP_LED_On(STP2);

}
void back_light_off(void)
{
	BSP_LED_Off(STP0);
	BSP_LED_Off(STP1);
	BSP_LED_Off(STP2);
}
void back_light_toggle(void)
{
	BSP_LED_Toggle(STP0);
	BSP_LED_Toggle(STP1);
	BSP_LED_Toggle(STP2);
}
void turn_indicator_on(void)
{
	  HAL_TIM_Base_Start_IT(&htim4);
	  FLAG_TI=FLAG_ON;
	  if(FLAG_DLR==FLAG_ON)
	  {
		  dlr_on_turn_indicator();
	  }
}
void turn_indicator_toggle(void)
{
	  if(FLAG_TI==FLAG_ON)
		  turn_indicator_off();
	  else
		  turn_indicator_on();
}
void turn_indicator_off(void)
{
	 FLAG_TI=FLAG_OFF;
}
void dlr_on(void)
{
	FLAG_DLR=FLAG_ON;
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,TIM_PERIOD);
}
void dlr_on_turn_indicator()
{
	FLAG_DLR=FLAG_ON;
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,TIM_PERIOD/4);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,TIM_PERIOD/4);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,0);
}
void dlr_off()
{
	FLAG_DLR=FLAG_OFF;
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,0);
}
void dlr_dimming(uint32_t div)
{
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,TIM_PERIOD/div);
}
void dlr_toggle()
{
	if(FLAG_DLR==FLAG_ON)
	{
		dlr_off();
	}
	else
		dlr_on();
}
