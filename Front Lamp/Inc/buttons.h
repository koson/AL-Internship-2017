/*
 * buttons.h
 *
 *  Created on: Jul 21, 2017
 *      Author: F27284C
 */

#ifndef BUTTONS_H_
#define BUTTONS_H_
#include "stm32f4xx_hal.h"
#include "signals.h"
#include "stm32f4_discovery.h"
GPIO_PinState read_button_HB(void);
GPIO_PinState read_button_LB(void);
GPIO_PinState read_button_TI(void);
GPIO_PinState read_button_DLR(void);
void button_init(void);


#endif /* BUTTONS_H_ */
