/*
 * can.c
 *
 *  Created on: Aug 4, 2017
 *      Author: F27284C
 */
#include "can.h"
extern CAN_HandleTypeDef hcan1;
extern IRMessage IR_tMessageToBeSent;
extern IRMessage IR_tPreviousMessage;

extern volatile uint16_t datarx[6] ;
extern uint8_t TransmitMailbox ;
extern int IR_intTransmitCounter;
void CAN_Tx_Brake(uint8_t Data)
{
	hcan1.pTxMsg->StdId = BRK;
	hcan1.pTxMsg->ExtId= 1;
	hcan1.pTxMsg->RTR = CAN_RTR_DATA;
	hcan1.pTxMsg->IDE = CAN_ID_STD;
	hcan1.pTxMsg->DLC = 1;
	hcan1.pTxMsg->Data[0] = Data;

	TransmitMailbox = HAL_CAN_Transmit(&hcan1, 10);
	do
	{
		TransmitMailbox = HAL_CAN_Transmit(&hcan1, 10);
	}
	while (TransmitMailbox == CAN_TXSTATUS_NOMAILBOX);
}
void CAN_Tx(uint32_t ID)
{
	hcan1.pTxMsg->StdId = ID;
	hcan1.pTxMsg->ExtId= 1;
	hcan1.pTxMsg->RTR = CAN_RTR_DATA;
	hcan1.pTxMsg->IDE = CAN_ID_STD;
	hcan1.pTxMsg->DLC = 1;
	hcan1.pTxMsg->Data[0] = 0x00;

	TransmitMailbox = HAL_CAN_Transmit(&hcan1, 10);
	do
	{
		TransmitMailbox = HAL_CAN_Transmit(&hcan1, 10);

	}
	while (TransmitMailbox == CAN_TXSTATUS_NOMAILBOX);
}
void verif_msg(volatile uint16_t id)
{
	if(0x30 <= id && id <= 0x35)
	{
		IR_tMessageToBeSent = id;
		if(IR_tPreviousMessage != IR_tMessageToBeSent) {
			IR_intTransmitCounter = 0;
			IR_tPreviousMessage = IR_IDLE;
		}


		for(int i = 0 ; i < 2; i++) {
				transmit(IR_tMessageToBeSent);
		}
	}
	else
		switch (id)
		{
		case TURN_ON:
			 turn_indicator_on();
			 break;
		case TURN_OFF:
			 turn_indicator_off();
			 break;
		case DRIVE_ON:
			 go_back_on();
			 break;
		case DRIVE_OFF:
			 go_back_off();
			 break;
		case BACK_TURN :
			 turn_indicator_toggle();
			 break;
		case BACK_DRIVE:
			 go_back_toggle();
			 break;
		}
}
void CAN_Rx(void)
{
	if(HAL_CAN_Receive(&hcan1, CAN_FILTER_FIFO0, 10)==HAL_OK)
	{
	datarx[0] = hcan1.pRxMsg->StdId;
	datarx[1] = hcan1.pRxMsg->DLC;
	datarx[2] = hcan1.pRxMsg->RTR;
	datarx[3] = hcan1.pRxMsg->DLC;
	datarx[4] = hcan1.pRxMsg->Data[0];
	datarx[5] = hcan1.pRxMsg->Data[1];

	verif_msg(hcan1.pRxMsg->StdId);
	}
}
uint32_t CANdecode(IRMessage msg)
{
	if(msg == cryticalBrake)
		return  IR_BRAKE;
	else if(msg == obstacleOnTheRoad)
		return  IR_OBSTACLE;
	else if(msg == failed)
		return  IR_FAILED;
	else if(msg == goingToLeaveTheRoad)
		return  IR_LEAVING;
	else if(msg == goingToStop)
		return  IR_STOP;
	else
		return  IR_IDLE;
}
