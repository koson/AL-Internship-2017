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

	/*drl dimming */
	for(uint32_t i=199;i>0;i--)
	{
		drl_set((uint32_t )i);
		HAL_Delay(10);
	}
	for(uint32_t i=0;i<200;i++)
	{
		drl_set((uint32_t )i);
		HAL_Delay(10);
	}
	drl_on();
	HAL_Delay(1000);
	turn_indicator_on();
	HAL_Delay(3000);
	turn_indicator_off();
	HAL_Delay(2000);
	low_beam_on();
	HAL_Delay(2000);
	low_beam_off();
	high_beam_on();
	HAL_Delay(200);
	for(uint8_t i=0;i<6;i++)
	{
	 high_beam_obstacle((uint8_t )i,0);
	 HAL_Delay(200);
	}
	HAL_Delay(2000);
	high_beam_off();

}
