/*
 * leds.c
 *
 *  Created on: Jul 21, 2017
 *      Author: F27284C
 */

#include "stm32f4xx_hal.h"
#include "stm32f4_discovery.h"
#include "leds.h"
extern FLAG_STATE FLAG_TI;
extern FLAG_STATE FLAG_HI;
extern FLAG_STATE FLAG_DRL;
extern FLAG_STATE FLAG_LO;

extern uint16_t TIM_PERIOD;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;
/*
 * @brief turns high beam on(SET the corresponding pins)
 * */


void high_beam_on(void)
{
		FLAG_HI=FLAG_ON;

		BSP_LED_On(HBM0);
		BSP_LED_On(HBM1);
		BSP_LED_On(HBM2);
		BSP_LED_On(HBM3);
		BSP_LED_On(HBM4);
}
/*
 * @brief turns high beam off (RESET the corresponding pins)
 * */
void high_beam_off(void)
{
	FLAG_HI=FLAG_OFF;

	BSP_LED_Off(HBM0);
	BSP_LED_Off(HBM1);
	BSP_LED_Off(HBM2);
	BSP_LED_Off(HBM3);
	BSP_LED_Off(HBM4);
}
/*
 * @brief toggles high beam (RESET the corresponding pins)
 * */
void high_beam_toggle(void)
{
	if(FLAG_HI==FLAG_OFF)
	{
		high_beam_on();
	}
	else
	{
		high_beam_off();
	}
}
/*
 * @brief
 * */
void high_beam_obstacle(uint8_t data1,uint8_t data2)
{
	if(FLAG_HI==FLAG_ON)
	{
		high_beam_on();
		switch(data2)
		{
			case 0:break;
			case 1:BSP_LED_Off(HBM0);break;
			case 2:BSP_LED_Off(HBM1);break;
			case 3:BSP_LED_Off(HBM2);break;
			case 4:BSP_LED_Off(HBM3);break;
			case 5:BSP_LED_Off(HBM4);break;
			case 6:break;
		}
		switch(data1)
		{
			case 0:break;
			case 1:BSP_LED_Off(HBM0);break;
			case 2:BSP_LED_Off(HBM1);break;
			case 3:BSP_LED_Off(HBM2);break;
			case 4:BSP_LED_Off(HBM3);break;
			case 5:BSP_LED_Off(HBM4);break;
			case 6:break;
		}
	}
}

/**
 * @brief turns on low beam leds (SET the corresponding pins)
 */
void low_beam_on(void)
{
	FLAG_LO=FLAG_ON;
	BSP_LED_On(LBM0);
	BSP_LED_On(LBM1);
	BSP_LED_On(LBM2);
	BSP_LED_On(LBM3);
	BSP_LED_On(LBM4);

}
/**
 * @brief turn off low beam leds (RESET the corresponding pins)
 *
 */
void low_beam_off(void)
{
	FLAG_LO=FLAG_OFF;
	BSP_LED_Off(LBM0);
	BSP_LED_Off(LBM1);
	BSP_LED_Off(LBM2);
	BSP_LED_Off(LBM3);
	BSP_LED_Off(LBM4);
}
/**
 * @brief toggles low beam leds
 */
void low_beam_toggle(void)
{
	FLAG_LO=!FLAG_LO;
	BSP_LED_Toggle(LBM0);
	BSP_LED_Toggle(LBM1);
	BSP_LED_Toggle(LBM2);
	BSP_LED_Toggle(LBM3);
	BSP_LED_Toggle(LBM4);
}
/**
 * @brief starts the turn indicator, turns off the 5 leds of DLR if it is on, and the 2 uppers leds are dimmed
 */
void turn_indicator_on(void)
{
	HAL_TIM_Base_Start_IT(&htim4);
	FLAG_TI=FLAG_ON;
	if(FLAG_DRL==FLAG_ON)
	{
	  drl_on_turn_indicator();
	}
}
/**
 * @brief stops the turn indicator, sets the flag off, the leds will finish the cycle, then stop
 */
void turn_indicator_off(void)
{
	 FLAG_TI=FLAG_OFF;
}
/**
 *  @brief toggles the turn indicator
 */
void turn_indicator_toggle(void)
{
	if(FLAG_TI==FLAG_ON)
	  turn_indicator_off();
	else
	  turn_indicator_on();
}
/**
 * turns on the day light running
 */
void drl_on(void)
{
	if(FLAG_TI==FLAG_OFF)
	{
		FLAG_DRL=FLAG_ON;
		__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,TIM_PERIOD);
		__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,TIM_PERIOD);
		__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,TIM_PERIOD);
		__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,TIM_PERIOD);
		__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,TIM_PERIOD);
		__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,TIM_PERIOD);
		__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,TIM_PERIOD);
	}
}
/**
 *  @brief turns on only two leds at 25%, when the turn indicator is on
 *
 *  */
void drl_on_turn_indicator()
{
	FLAG_DRL=FLAG_ON;
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,TIM_PERIOD/4);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,TIM_PERIOD/4);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,0);
}
/**
 * @brief turns off the day light running
 */
void drl_off()
{
	FLAG_DRL=FLAG_OFF;
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,0);
}
/**
 *@brief dimming on day light running
 */
void drl_dimming(uint32_t div)
{
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,TIM_PERIOD/div);
}
/**
 *@brief toggle dlr
 */
void drl_toggle()
{
	if(FLAG_DRL==FLAG_ON)
	{
		drl_off();
	}
	else
		drl_on();
}
