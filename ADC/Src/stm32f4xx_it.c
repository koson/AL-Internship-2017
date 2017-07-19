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

/* USER CODE BEGIN 0 */
int counter = 0;
extern uint16_t message;
/* USER CODE END 0 */
static uint8_t led_phase=0;
/* External variables --------------------------------------------------------*/
extern TIM_HandleTypeDef htim4;
extern TIM_HandleTypeDef htim5;
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
void TIM4_IRQHandler(void)
{
  /* USER CODE BEGIN TIM4_IRQn 0 */


  /* USER CODE END TIM4_IRQn 0 */
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
	  HAL_GPIO_WritePin(GPIOD,GPIO_PIN_3,RESET);
	  HAL_GPIO_WritePin(GPIOD,GPIO_PIN_4,RESET);
	  HAL_GPIO_WritePin(GPIOD,GPIO_PIN_5,RESET);
	  HAL_GPIO_WritePin(GPIOD,GPIO_PIN_6,RESET);
	  HAL_GPIO_WritePin(GPIOD,GPIO_PIN_7,RESET);

 	  led_phase++;

  }break;
  case 8:
   {
 	  led_phase++;
   }break;

  case 9:
  {
	  if(getFLAG_TI()==FLAG_OFF)
	  {
			 HAL_TIM_Base_Stop_IT(&htim4);
			 if(getFLAG_DLR()==FLAG_ON)
			 		 dlr_on();
	  }
	  led_phase=0;

  }break;
  }


  /* USER CODE BEGIN TIM4_IRQn 1 */

  /* USER CODE END TIM4_IRQn 1 */
}
void TIM5_IRQHandler(void)
{
  /* USER CODE BEGIN TIM4_IRQn 0 */


  /* USER CODE END TIM4_IRQn 0 */
  HAL_TIM_IRQHandler(&htim5);


	counter++;
	message = message << 1;
	if(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3) == 1) {
		message = message | 1;
	}

	if(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3) == 1) {

		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, GPIO_PIN_SET);
   } else {

		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, GPIO_PIN_RESET);
   }



  /* USER CODE BEGIN TIM4_IRQn 1 */

  /* USER CODE END TIM4_IRQn 1 */
}

/******************************************************************************/
/* STM32F4xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32f4xx.s).                    */
/******************************************************************************/

/**
* @brief This function handles TIM4 global interrupt.
*/
/* USER CODE BEGIN 1 */

/* USER CODE END 1 */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
