/*
 * adc.c
 *
 *  Created on: Aug 4, 2017
 *      Author: F27284C
 */
#include "adc.h"

extern ADC_HandleTypeDef hadc1;
uint32_t ADC_Val; //0 - > 4092

uint32_t getBrakelevel()
{
	HAL_ADC_Start(&hadc1);
	ADC_Val = HAL_ADC_GetValue(&hadc1);
	if(ADC_Val >= 0 && ADC_Val <= 100)
		ADC_Val = 0;
	else if(ADC_Val > 100 && ADC_Val <= 400)
		ADC_Val = 1;
	else if(ADC_Val > 400 && ADC_Val <= 1000)
		ADC_Val = 2;
	else if(ADC_Val > 1000 && ADC_Val <= 1700)
		ADC_Val = 3;
	else if(ADC_Val > 1700 && ADC_Val <= 3000)
		ADC_Val = 4;
	else if(ADC_Val > 3000)
		ADC_Val = 5;
	return ADC_Val;

}


void turnProgresiveLed(Led_TypeDef led, uint8_t val)
{
	if(getBrakelevel() > val) {
		BSP_LED_On(led);
	}
	else {
		BSP_LED_Off(led);
	}
}

void progresiveBrakeLight()
{
	turnProgresiveLed(STPP1, 0);
	turnProgresiveLed(STPP2, 0);
	turnProgresiveLed(STPP3, 1);
	turnProgresiveLed(STPP4, 2);
	turnProgresiveLed(STPP5, 3);
	turnProgresiveLed(STPP6, 4);
}


