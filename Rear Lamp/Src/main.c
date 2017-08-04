/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  ** This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * COPYRIGHT(c) 2017 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */

#include "main.h"

/**********************\
|*     handlers        |
\**********************/
ADC_HandleTypeDef hadc1;
CAN_HandleTypeDef hcan1;
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim5;
TIM_HandleTypeDef htim7;

uint16_t IR_tMessage = 0;
IRMessage IR_tReceivedMessage;
IRMessage IR_tMessageToBeSent = -1;
IRMessage IR_tPreviousMessage = IR_IDLE;


uint32_t ADC_Val; //0 - > 4092
volatile uint16_t datarx[6] ;
uint8_t TransmitMailbox = 0;
int IR_intTransmitCounter = 3;
int IR_intWasIdle = 0;
int IR_intWasIdle2 = 0;

CanTxMsgTypeDef        TxMessage;
CanRxMsgTypeDef        RxMessage;

void progresiveBrakeLight();
void turnProgresiveLed(Led_TypeDef led, int val);

/**********************\
|*   can functions     |
\**********************/

uint32_t getBrakelevel(void);
void CAN_Tx_Brake(uint8_t);
void CAN_Tx(uint32_t ID);
void CAN_Rx(void);
void verif_msg(volatile uint16_t);
FLAG_STATE FLAG_TI=FLAG_OFF;
FLAG_STATE EMERGENCY_BRAKE=FLAG_OFF;

FLAG_STATE FLAG_GO_BACK=FLAG_OFF;

uint32_t CANdecode(IRMessage);
GPIO_InitTypeDef  GPIO_InitStruct;

int main(void)
{
  systemInit();
  back_light_on();
  turn_indicator_on();
  while (1)
  {

	 progresiveBrakeLight();
	 CAN_Tx_Brake(getBrakelevel());
	 if(getBrakelevel() > 0) {
		 for(int i = 0 ; i < 2; i++) {
			 if(getBrakelevel() > 2) {
				 transmit(IR_BRAKE);
			 	 IR_intWasIdle = 0;
			 }
			 else {
				 if(IR_intWasIdle == 0) {
					 transmit(IR_IDLE);
					 CAN_Tx(IR_IDLE);
					 IR_intWasIdle = 1;
				 }
				 else{
					 CAN_Rx();
					 if(IR_intTransmitCounter > 48) {
						 IR_intWasIdle = 0;
					 }
				 }
			 }
		}
	 }
	 else {
		if(IR_intWasIdle2 == 0) {
			transmit(IR_IDLE);
			CAN_Tx(IR_IDLE);
			IR_intWasIdle2 = 1;
		}
		else {
			CAN_Rx();
			if(IR_intTransmitCounter > 48) {
				IR_intWasIdle2 = 0;
			}
		}
	 }
	 if(getBrakelevel() ==5) {
		 EMERGENCY_BRAKE=FLAG_ON;
		 turn_indicator_on();
	 }
  }
}



void turnProgresiveLed(Led_TypeDef led, int val)
{
	if(getBrakelevel() > val) {
		BSP_LED_On(led);
	}
	else {
		BSP_LED_Off(led);
	}
}

void progresiveBrakeLight()
{
	turnProgresiveLed(STPP1, 0);
	turnProgresiveLed(STPP2, 0);
	turnProgresiveLed(STPP3, 1);
	turnProgresiveLed(STPP4, 2);
	turnProgresiveLed(STPP5, 3);
	turnProgresiveLed(STPP6, 4);
}

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
uint32_t getBrakelevel(void)
{
	HAL_ADC_Start(&hadc1);
	ADC_Val = HAL_ADC_GetValue(&hadc1);
	if(ADC_Val >= 0 && ADC_Val <= 100)
		ADC_Val = 0;
	else if(ADC_Val > 100 && ADC_Val <= 400)
		ADC_Val = 1;
	else if(ADC_Val > 400 && ADC_Val <= 1000)
		ADC_Val = 2;
	else if(ADC_Val > 1000 && ADC_Val <= 1700)
		ADC_Val = 3;
	else if(ADC_Val > 1700 && ADC_Val <= 3000)
		ADC_Val = 4;
	else if(ADC_Val > 3000)
		ADC_Val = 5;
	return ADC_Val;

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
void _Error_Handler(char * file, int line)
{
  while(1) 
  {
  }
}
#ifdef USE_FULL_ASSERT
void assert_failed(uint8_t* file, uint32_t line)
{
}
#endif
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
