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

/*
 * Global variables
 */
CAN_HandleTypeDef hcan1;
ADC_HandleTypeDef hadc1;
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim5;
TIM_HandleTypeDef htim7;
uint32_t CLK_ui32PrescalerValue;
IRMessage IR_tReceivedMessage;
IRMessage IR_tReceivedFirstMessage;
IRMessage IR_tReceivedSecondMessage;
IRMessage IR_tReceivedThirdMessage;
IRMessage IR_tMessageToBeSent;

FLAG_STATE FLAG_TI=FLAG_OFF;
BUTTON_PRESS_Type press_TI=UNDEFINED_PRESS;
FLAG_STATE FLAG_DRL=FLAG_OFF;
FLAG_STATE FLAG_HI=FLAG_OFF;
FLAG_STATE FLAG_LO=FLAG_OFF;
FLAG_LIGHT LIGHT_STATUS=DAY;
FLAG_MODE USE_BUTTONS=MANUAL;
uint32_t CLK_ui32PrescalerValue;
uint32_t IR_ui32DecodedMessage;
uint16_t TIM_PERIOD=200;

int main(void)
{
  /*Initialize the system*/
  systemInit();

  drl_on();
  /*Infinite loop*/
  while (1)
  {
	  while(press_TI!=LONG_PRESS)
	  {
		  readIRMessage();

		  /*Receive commands from CAN*/
		  CAN_Rx();
		  set_light_flag();

		  /*Transmit the ridden message on CAN*/
		  CAN_Tx(CANdecode(IR_tReceivedMessage));
	  }
	  while(press_TI!=LONG_PRESS)
	  {
		  demo();
	  }
  }
}

#ifdef USE_FULL_ASSERT
void assert_failed(uint8_t* file, uint32_t line)
{
}
#endif
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
