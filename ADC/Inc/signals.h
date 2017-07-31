/*
 * signals.h
 *
 *  Created on: Jul 17, 2017
 *      Author: F27280C
 */

#ifndef SIGNALS_H_
#define SIGNALS_H_

#define HIB_ON 0x10
#define LOB_ON 0x11
#define TRN_ON 0x13
#define DL_ON 0x14

#define HIB_OFF 0x20
#define LOB_OFF 0x21
#define TRN_OFF 0x23
#define DL_OFF 0x24

#define BRK	   0x12

#define	IR_BRAKE      0x30
#define IR_OBSTACLE   0x31
#define IR_IDLE       0x32
#define IR_LEAVING    0x33
#define IR_STOP       0x34
#define IR_FAILED     0x35

#define MODE_AUTO 	  0x50
#define MODE_MANUAL   0x51

#define TOGGLE_HIB    0x60
#define TOGGLE_LOB    0x61
#define TOGGLE_TRN    0x62
#define TOGGLE_DRL    0x63
#define TOGGLE_MODE   0x64


#endif /* SIGNALS_H_ */
