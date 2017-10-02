/*
 * init.h
 *
 *  Created on: Aug 4, 2017
 *      Author: F27284C
 */

#ifndef INIT_H_
#define INIT_H_
void SystemClock_Config(void);
void MX_GPIO_Init(void);
void MX_ADC1_Init(void);
void MX_CAN1_Init(void);
void CAN_filter_init(void);
void systemInit();

void MX_TIM2_Init(void);
void MX_TIM4_Init(void);
void MX_TIM5_Init(void);


#endif /* INIT_H_ */
