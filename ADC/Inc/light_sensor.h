/*
 * light_sensor.h
 *
 *  Created on: Jul 28, 2017
 *      Author: F27284C
 */

#ifndef LIGHT_SENSOR_H_
#define LIGHT_SENSOR_H_

#define MAXIMUM_LUMINOSITY 3500
/*************************\
 * Light sensor functions
\*************************/
void dimmingIfHighLuminosity(void);
void low_beam_on_dark(void);
void high_beam_blocked();

#endif /* LIGHT_SENSOR_H_ */
