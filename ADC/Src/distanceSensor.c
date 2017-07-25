/*
 * distanceSensor.c
 *
 *  Created on: Jul 25, 2017
 *      Author: F27285C
 */

#include "distanceSensor.h"

uint32_t Read_Distance(void)
{
		__IO uint8_t flag=0;
		__IO uint32_t disTime=0;
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_10, GPIO_PIN_SET);
		HAL_Delay(10);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_10, GPIO_PIN_RESET);

		while(flag == 0)
		{
			while(HAL_GPIO_ReadPin(GPIOD,GPIO_PIN_11) == GPIO_PIN_SET)
			{
				 disTime++;
				 flag = 1;
			}

		}
	 		return disTime;
}
