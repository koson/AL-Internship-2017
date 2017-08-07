/*
 * init.h
 *
 *  Created on: Aug 3, 2017
 *      Author: F27284C
 */

#ifndef INIT_H_
#define INIT_H_


void SystemClock_Config(void);
void MX_GPIO_Init(void);
void MX_ADC1_Init(void);

void MX_TIM2_Init(void);
void MX_TIM3_Init(void);
void MX_TIM4_Init(void);
void MX_TIM5_Init(void);
void MX_TIM7_Init(void);

void led_init(void);
void button_init(void);
void pwm_init(void);
void systemInit();
void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);
void readIRMessage();

void _Error_Handler(char *, int);

#define Error_Handler() _Error_Handler(__FILE__, __LINE__)
#endif /* INIT_H_ */
