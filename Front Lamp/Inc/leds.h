/*
 * leds.h
 *
 *  Created on: Jul 21, 2017
 *      Author: F27284C
 */

#ifndef LEDS_H_
#define LEDS_H_



void high_beam_on(void);
void high_beam_off(void);
void high_beam_toggle(void);
void high_beam_obstacle(uint8_t data1,uint8_t data2);

void low_beam_on(void);
void low_beam_off(void);
void low_beam_toggle(void);

void turn_indicator_on(void);
void turn_indicator_off(void);
void turn_indicator_toggle(void);

void drl_on(void);
void drl_on_turn_indicator(void);
void drl_off(void);
void drl_dimming(uint32_t pwm);
void drl_toggle(void);
void drl_set(uint32_t );

#endif /* LEDS_H_ */
