/**
  ******************************************************************************
  * @file    stm32f4xx_it.c
  * @brief   Interrupt Service Routines.
  ******************************************************************************
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
/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include "stm32f4xx.h"
#include "stm32f4_discovery.h"
#include "stm32f4xx_it.h"
#include "leds.h"
#include "buttons.h"
/* USER CODE BEGIN 0 */
int IR_intcounter = 0;
extern uint16_t IR_ui16message;
extern FLAG_MODE USE_BUTTONS;
extern uint32_t IR_ui32distance;
int synchronized = 0;
int old_value = 1;
uint8_t pulse_set = 0;

/* USER CODE END 0 */
static uint8_t led_phase=0;
BUTTON_PRESS_Type press_HB=UNDEFINED_PRESS;
BUTTON_PRESS_Type press_LB=UNDEFINED_PRESS;
BUTTON_PRESS_Type press_TI=UNDEFINED_PRESS;
BUTTON_PRESS_Type press_DLR=UNDEFINED_PRESS;
uint16_t time_elapsed_HB = 0;
uint16_t time_elapsed_LB = 0;
uint16_t time_elapsed_TI = 0;
uint16_t time_elapsed_DLR = 0;
/* External variables --------------------------------------------------------*/
extern TIM_HandleTypeDef htim4;
extern TIM_HandleTypeDef htim5;
extern TIM_HandleTypeDef htim6;
extern TIM_HandleTypeDef htim7;
extern FLAG_STATE FLAG_TI;
extern FLAG_STATE FLAG_DLR;
/******************************************************************************/
/*            Cortex-M4 Processor Interruption and Exception Handlers         */ 
/******************************************************************************/

/**
* @brief This function handles System service call via SWI instruction.
*/
void SVC_Handler(void)
{
  /* USER CODE BEGIN SVCall_IRQn 0 */

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}

/**
* @brief This function handles Pendable request for system service.
*/
void PendSV_Handler(void)
{
  /* USER CODE BEGIN PendSV_IRQn 0 */

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}

/**
* @brief This function handles System tick timer.
*/
void SysTick_Handler(void)
{
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  HAL_SYSTICK_IRQHandler();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}
/*@brief This function handles Timer 4 interrupt,
 * it is used for turn indicator signal
 * */
void TIM4_IRQHandler(void)
{
  /* USER CODE BEGIN TIM4_IRQn 0 */

  HAL_TIM_IRQHandler(&htim4);
  switch(led_phase)
  {
  case 0:
  {
	  BSP_LED_On(TRN0);
	  BSP_LED_On(TRN1);

  	  led_phase++;
  }break;
  case 1:
  {
	  BSP_LED_On(TRN2);
  	  led_phase++;
  }break;
  case 2:
  {
	  BSP_LED_On(TRN3);
  	  led_phase++;
  }break;
  case 3:
  {
	  BSP_LED_On(TRN4);
  	  led_phase++;
  }break;
  case 4:
  {
	  led_phase++;
  }break;
  case 5:
  {
	  led_phase++;
  }break;
  case 6:
   {
 	  led_phase++;
   }break;

  case 7:
  {
	  BSP_LED_Off(TRN0);
	  BSP_LED_Off(TRN1);
	  BSP_LED_Off(TRN2);
	  BSP_LED_Off(TRN3);
	  BSP_LED_Off(TRN4);

 	  led_phase++;

  }break;
  case 8:
   {
 	  led_phase++;
   }break;

  case 9:
  {
	  if(FLAG_TI==FLAG_OFF)
	  {
			 HAL_TIM_Base_Stop_IT(&htim4);
			 if(FLAG_DLR==FLAG_ON)
			 		 dlr_on();
	  }
	  led_phase=0;

  }break;
  }

  /* USER CODE END TIM4_IRQn 0 */
}
void TIM5_IRQHandler(void)
{
  /* USER CODE BEGIN TIM4_IRQn 0 */


  /* USER CODE END TIM4_IRQn 0 */
  HAL_TIM_IRQHandler(&htim5);


  	  if(synchronized == 1 || (old_value == 0 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3) == 1)) {
  		synchronized = 1;
  		IR_intcounter++;
  		IR_ui16message = IR_ui16message << 1;
  			if(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3) == 1) {
  				IR_ui16message = IR_ui16message | 1;
  			}

  			if(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3) == 1) {

  				HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, GPIO_PIN_SET);
  		   } else {

  				HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, GPIO_PIN_RESET);
  		   }
  	  }
  	  else {
  		  old_value = HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3);
  		IR_intcounter = 0;
  	  }


//  /* USER CODE BEGIN TIM4_IRQn 1 */
//  	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, GPIO_PIN_SET);
//  		__IO uint8_t flag=0;
//  		__IO uint32_t disTime=0;
//
//  		switch(pulse_set) {
//  		case 0:
//  			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_10, GPIO_PIN_SET);
//  			pulse_set = 1;
//  			break;
//  		default:
//  			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_10, GPIO_PIN_RESET);
//  			pulse_set = 0;
//
//  	//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_10, GPIO_PIN_SET);
//  	//		HAL_Delay(10);
//  	//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_10, GPIO_PIN_RESET);
//
//  			while(flag == 0)
//  			{
//  				while(HAL_GPIO_ReadPin(GPIOD,GPIO_PIN_11) == GPIO_PIN_SET)
//  				{
//  					 disTime++;
//  					 flag = 1;
//  				}
//
//  			}
//  			IR_ui32distance = disTime / 350;
//  			break;
//  		}
  /* USER CODE END TIM4_IRQn 1 */
}


/*
 * Timer 7 used for button interrupts
 * */
void TIM7_IRQHandler(void)
{
  /* USER CODE BEGIN TIM7_IRQn 0 */

  /* USER CODE END TIM6_IRQn 0 */
  HAL_TIM_IRQHandler(&htim7);
  if (USE_BUTTONS == MANUAL)
  {
	  if(read_button_HB()==GPIO_PIN_SET)
	  {
		  time_elapsed_HB++;
	  }
		  if(time_elapsed_HB>=10 && time_elapsed_HB<50)
		  {
			  if(read_button_HB()==GPIO_PIN_RESET)
			  {
				  press_HB=SHORT_PRESS;
				  time_elapsed_HB=0;
			  }
		  }
		  else
		  {
			  if(time_elapsed_HB>=50)
			  {
				  press_HB=LONG_PRESS;
				  high_beam_on();
				  if(read_button_HB()==GPIO_PIN_RESET)
				  {
					  high_beam_off();
					  time_elapsed_HB=0;
				  }

			  }
			  else
				  press_HB=UNDEFINED_PRESS;
		  }
		  if(press_HB==SHORT_PRESS)
			  high_beam_toggle();


		  if(read_button_LB()==GPIO_PIN_SET)
		  {
			time_elapsed_LB++;
		  }
			  if(time_elapsed_LB>=10)
			  {
				  if(read_button_LB()==GPIO_PIN_RESET)
				  {
					  press_LB=SHORT_PRESS;
					  time_elapsed_LB=0;
				  }
			  }
			  else
			  {
					  press_LB=UNDEFINED_PRESS;
			  }
			  if(press_LB==SHORT_PRESS)
				  low_beam_toggle();

		  if(read_button_TI()==GPIO_PIN_SET)
		  {
			time_elapsed_TI++;
		  }
			  if(time_elapsed_TI>=10)
			  {
				  if(read_button_TI()==GPIO_PIN_RESET)
				  {
					  press_TI=SHORT_PRESS;
					  time_elapsed_TI=0;
				  }
			  }
			  else
			  {
					  press_TI=UNDEFINED_PRESS;
			  }
			  if(press_TI==SHORT_PRESS)
			  {
				  turn_indicator_toggle();
			  }


			  if(read_button_DLR()==GPIO_PIN_SET)
			  {
				time_elapsed_DLR++;
			  }
				  if(time_elapsed_DLR>=10)
				  {
					  if(read_button_DLR()==GPIO_PIN_RESET)
					  {
						  press_DLR=SHORT_PRESS;
						  time_elapsed_DLR=0;
					  }
				  }
				  else
				  {
						  press_DLR=UNDEFINED_PRESS;
				  }
				  if(press_DLR==SHORT_PRESS)
					  dlr_toggle();
  }

}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
