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
uint32_t last_value=0;

volatile uint16_t datarx[6] ;
uint8_t TransmitMailbox = 0;
int IR_intTransmitCounter = 3;
int IR_intWasIdle = 0;
int IR_intWasIdle2 = 0;
CanTxMsgTypeDef        TxMessage;
CanRxMsgTypeDef        RxMessage;

uint32_t getBrakelevel(void);
FLAG_STATE FLAG_TI=FLAG_OFF;
FLAG_STATE EMERGENCY_BRAKE=FLAG_OFF;
FLAG_STATE FLAG_GO_BACK=FLAG_OFF;
GPIO_InitTypeDef  GPIO_InitStruct;

int main(void)
{
  systemInit();
  back_light_on();
  //turn_indicator_on();
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
	 if(getBrakelevel() ==5 && last_value!=5) {
		 EMERGENCY_BRAKE=FLAG_ON;
		 HAL_TIM_Base_Start_IT(&htim4);
		 last_value=5;
	 }
	 else
		 last_value=getBrakelevel();
  }
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
