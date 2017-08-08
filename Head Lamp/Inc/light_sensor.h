/*
 * light_sensor.h
 *
 *  Created on: Jul 28, 2017
 *      Author: F27284C
 */

#ifndef LIGHT_SENSOR_H_
#define LIGHT_SENSOR_H_

#define MAXIMUM_LUMINOSITY 3500
#define MINIMUM_LUMINOSITY 1500
/*************************\
 * Light sensor functions
\*************************/
void dimming_if_high_luminosity(void);
void low_beam_on_dark(void);
void high_beam_blocked(void);
void set_light_flag(void);
#endif /* LIGHT_SENSOR_H_ */
