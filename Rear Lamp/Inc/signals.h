/*
 * signals.h
 *
 *  Created on: Jul 17, 2017
 *      Author: F27280C
 */

#ifndef SIGNALS_H_
#define SIGNALS_H_

#define BRK	   0x12

#define TURN_ON       0x20
#define DRIVE_ON	  0x21

#define	IR_BRAKE      0x30
#define IR_OBSTACLE   0x31
#define IR_IDLE       0x32
#define IR_LEAVING    0x33
#define IR_STOP       0x34
#define IR_FAILED     0x35

#define TURN_OFF	  0x40
#define DRIVE_OFF	  0x41

#define BACK_TURN     0x60
#define BACK_DRIVE    0x61

#endif /* SIGNALS_H_ */
