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
extern FLAG_STATE FLAG_LO;
extern FLAG_LIGHT LIGHT_STATUS;
FLAG_STATE FLAG_SENSOR=FLAG_ON;
/**
 * @brief Light sensor sets the light state
 */
void setLightFlag(void)
{
	HAL_ADC_Start(&hadc1);
	ADC_ui32LuminosityVal = HAL_ADC_GetValue(&hadc1);
	if( ADC_ui32LuminosityVal > MAXIMUM_LUMINOSITY)
		LIGHT_STATUS=MAX_LIGHT;
	else
		if( ADC_ui32LuminosityVal < MINIMUM_LUMINOSITY)
			LIGHT_STATUS=NIGHT;
		else
			LIGHT_STATUS=DAY;

}
/**
 * @brief DRL LEDs are dimmed on high luminosity
 *
 */
void dimmingIfHighLuminosity(void)
{
	HAL_ADC_Start(&hadc1);
	ADC_ui32LuminosityVal = HAL_ADC_GetValue(&hadc1);
	if(FLAG_DRL == FLAG_ON && FLAG_TI == FLAG_OFF) {
		if(LIGHT_STATUS==MAX_LIGHT) {
				 drl_dimming(4);
			} else {
				 drl_on();
			}
	}
}
/**
 * @brief Turns on high beam on dark
 * @description
 */
void low_beam_on_dark()
{

	HAL_ADC_Start(&hadc1);
	ADC_ui32LuminosityVal = HAL_ADC_GetValue(&hadc1);
	if(LIGHT_STATUS==NIGHT)
	{
		if(FLAG_SENSOR==FLAG_ON)
		{
			if(FLAG_LO==FLAG_OFF)
			{
				low_beam_on();
				FLAG_SENSOR=FLAG_OFF;
			}
		}
	}
	else
	{
		if(FLAG_SENSOR==FLAG_OFF)
		{
			low_beam_off();
			FLAG_SENSOR=FLAG_ON;
		}
	}
}

/*
 * @brief Turns off high beam if it is too light
 * @description high beam pins are set to low state and low beam lights are turned on
 */
void high_beam_blocked()
{
	HAL_ADC_Start(&hadc1);
	ADC_ui32LuminosityVal = HAL_ADC_GetValue(&hadc1);
	if(FLAG_HI == FLAG_ON)
	{
		if(LIGHT_STATUS==MAX_LIGHT)
		{
			 high_beam_off();
			 FLAG_HI=FLAG_ON;//intended
			 low_beam_on();

		}
		else
		{
			high_beam_on();

		}
	}
}
