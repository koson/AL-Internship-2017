/*
 * demo.c
 *
 *  Created on: Aug 3, 2017
 *      Author: F27284C
 */
#include "main.h"

void demo()
{
	drl_on();
	HAL_Delay(3000);
	turn_indicator_on();
	HAL_Delay(5000);
	turn_indicator_off();
	HAL_Delay(5000);
	low_beam_on();
	HAL_Delay(5000);
	low_beam_off();
	HAL_Delay(5000);
	high_beam_on();
	HAL_Delay(5000);
	high_beam_off();

}
