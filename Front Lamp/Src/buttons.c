/*
 * buttons.c
 *
 *  Created on: Jul 21, 2017
 *      Author: F27284C
 */

#include "buttons.h"
GPIO_PinState read_button_HB()
{
	return HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_6);
}
GPIO_PinState read_button_LB()
{
	return HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_5);
}
GPIO_PinState read_button_TI()
{
	return HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_12);
}
GPIO_PinState read_button_DLR()
{
	return HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_13);
}
