/*
 * distanceSensor.c
 *
 *  Created on: Jul 25, 2017
 *      Author: F27285C
 */

#include "distanceSensor.h"

uint32_t Read_Distance(void)
{
		__IO uint8_t DS_ui8flag=0;
		__IO uint32_t DS_ui32disTime=0;
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_10, GPIO_PIN_SET);
		HAL_Delay(10);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_10, GPIO_PIN_RESET);

		while(DS_ui8flag == 0)
		{
			while(HAL_GPIO_ReadPin(GPIOD,GPIO_PIN_11) == GPIO_PIN_SET)
			{
				DS_ui32disTime++;
				DS_ui8flag = 1;
			}

		}
		/*We devide by 350 in order to obtain the distance in cm */
	 		return DS_ui32disTime / 350;
}
