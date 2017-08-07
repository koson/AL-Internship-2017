/*
 * buttons.c
 *
 *  Created on: Jul 21, 2017
 *      Author: F27284C
 */

#include "buttons.h"
/*
 * @brief reads pin that is connected to HB switch
 */
GPIO_PinState read_button_HB()
{
	return HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_6);
}
/*
 * @brief reads pin that is connected to LB switch
 */
GPIO_PinState read_button_LB()
{
	return HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_5);
}
/*
 * @brief reads pin that is connected to TI switch
 */
GPIO_PinState read_button_TI()
{
	return HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_12);
}
/*
 * @brief reads pin that is connected to DRL switch
 */
GPIO_PinState read_button_DRL()
{
	return HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_13);
}
