/*
 * light_sensor.c
 *
 *  Created on: Jul 28, 2017
 *      Author: F27284C
 */
#include "light_sensor.h"
#include "stm32f4xx_hal.h"
#include "signals.h"
#include "stm32f4_discovery.h"
#include "leds.h"

uint32_t ADC_ui32LuminosityVal; //0 - > 4092
extern ADC_HandleTypeDef hadc1;
extern FLAG_STATE FLAG_TI;
extern FLAG_STATE FLAG_HI;
extern FLAG_STATE FLAG_DRL;
void dimmingIfHighLuminosity(void)
{
	HAL_ADC_Start(&hadc1);
	ADC_ui32LuminosityVal = HAL_ADC_GetValue(&hadc1);
	if(FLAG_DRL == FLAG_ON && FLAG_TI == FLAG_OFF) {
		if( ADC_ui32LuminosityVal > MAXIMUM_LUMINOSITY) {
				 drl_dimming(4);
			} else {
				 drl_on();
			}
	}
}

void low_beam_on_dark()
{
	HAL_ADC_Start(&hadc1);
	ADC_ui32LuminosityVal = HAL_ADC_GetValue(&hadc1);
	if( ADC_ui32LuminosityVal < 1750)
	{
		low_beam_on();
	}
}


void high_beam_blocked()
{
	HAL_ADC_Start(&hadc1);
	ADC_ui32LuminosityVal = HAL_ADC_GetValue(&hadc1);
	if(FLAG_HI == FLAG_ON)
	{
		if( ADC_ui32LuminosityVal > MAXIMUM_LUMINOSITY)
		{
			 high_beam_off();
			 low_beam_on();
		}
	}
}