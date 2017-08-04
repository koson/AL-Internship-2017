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
	high_beam_on();
	low_beam_on();
	turn_indicator_on();
	HAL_Delay(300);
	drl_off();
	high_beam_off();
	low_beam_off();
	turn_indicator_off();
	HAL_Delay(300);
	drl_on();
	high_beam_on();
	low_beam_on();
	turn_indicator_on();
	HAL_Delay(300);
	drl_off();
	high_beam_off();
	low_beam_off();
	turn_indicator_off();
	HAL_Delay(1000);
	drl_on();
	HAL_Delay(1000);
	turn_indicator_on();
	HAL_Delay(3000);
	turn_indicator_off();
	HAL_Delay(2000);
	low_beam_on();
	HAL_Delay(2000);
	low_beam_off();
	HAL_Delay(1000);
	high_beam_on();
	HAL_Delay(2000);
	high_beam_off();

}
