/*
 * can.h
 *
 *  Created on: Aug 4, 2017
 *      Author: F27284C
 */

#ifndef CAN_H_
#define CAN_H_
#include "IR.h"
void CAN_Tx_Brake(uint8_t);
void CAN_Tx(uint32_t);
void verif_msg(volatile uint16_t);
void CAN_Rx(void);
uint32_t CANdecode(IRMessage);


#endif /* CAN_H_ */
