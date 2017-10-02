/*
 * leds.c
 *
 *  Created on: Jul 31, 2017
 *      Author: F27284C
 */
#include "stm32f4_discovery.h"
extern TIM_HandleTypeDef htim4;
extern FLAG_STATE FLAG_TI;
extern FLAG_STATE FLAG_GO_BACK;
/**
* @brief This function turns on the three main red LEDs
* @description Sets the corresponding pins to high state
*/
void back_light_on()
{
	BSP_LED_On(STP0);
	BSP_LED_On(STP1);
	BSP_LED_On(STP2);
}
/**
* @brief This function turns off the three main red LEDs
* @description sets the corresponding pins to low state
*/
void back_light_off()
{
	BSP_LED_Off(STP0);
    BSP_LED_Off(STP1);
	BSP_LED_Off(STP2);
}
/**
* @brief This function toggles the three main red LEDs
*/
void back_light_toggle()
{
	BSP_LED_Toggle(STP0);
	BSP_LED_Toggle(STP1);
	BSP_LED_Toggle(STP2);
}
/**
* @brief This function turns on the turn indicator signal
* @description Starts the timer that generates interrupt and sets the flag ON
*/
void turn_indicator_on(void)
{
	HAL_TIM_Base_Start_IT(&htim4);
	FLAG_TI=FLAG_ON;
}
/**
* @brief This function turns off the turn indicator signal
* @description Sets the flag OFF, then the interrupt will stop the timer, after the signal finished one cycle
*/
void turn_indicator_off()
{
	FLAG_TI=FLAG_OFF;
}
/**
* @brief This function toggles the turn indicator signal
*/
void turn_indicator_toggle()
{
	if(FLAG_TI==FLAG_OFF)
	{
		turn_indicator_on();
	}
	else
		turn_indicator_off();
}
/**
 * @brief This function turns on the LEDs for reverse driving
 * @description The corresponding pins are set to high state
 */
void go_back_on(void)
{
	FLAG_GO_BACK=FLAG_ON;
	BSP_LED_On(LEDGOBACK1);
	BSP_LED_On(LEDGOBACK2);
}
/**
 * @brief This function turns off the LEDs for reverse driving
 * @description The corresponding pins are set to low state
 */
void go_back_off(void)
{
	FLAG_GO_BACK=FLAG_OFF;
	BSP_LED_Off(LEDGOBACK1);
	BSP_LED_Off(LEDGOBACK2);
}
/**
 * @brief This function toggles the reverse driving LEDs
 */
void go_back_toggle()
{
	if(FLAG_GO_BACK==FLAG_OFF)
		{
		go_back_on();
		}
		else
			go_back_off();
}
