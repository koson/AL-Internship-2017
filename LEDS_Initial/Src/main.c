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
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f4xx_hal.h"
#include "stm32f4_discovery.h"
#define TIM_PERIOD 200
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim4;

int pwm;
FLAG_STATE TI_ON=FLAG_OFF;
FLAG_STATE DLR_ON=FLAG_OFF;
/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_TIM2_Init(void);
static void MX_TIM3_Init(void);
static void MX_TIM4_Init(void);
static void pwm_init(void);

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);
void back_light_on(void);
void back_light_off(void);
void back_light_toggle(void);

void high_beam_on(void);
void high_beam_off(void);

void low_beam_on(void);
void low_beam_off(void);

void turn_indicator_on(void);
void turn_indicator_off(void);
FLAG_STATE getTI_ON(void);

void pwm_on_off();
void dlr_on();
void dlr_off();
void dlr_dimming(uint32_t pwm);


/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM2_Init();
  MX_TIM3_Init();
  MX_TIM4_Init();
  pwm_init();

  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */


  while (1)
  {
	  HAL_Delay(3000);
	  turn_indicator_on();
	  HAL_Delay(6000);
	  turn_indicator_off();
	  low_beam_off();

  }
  /* USER CODE END 3 */

}

void high_beam_on(void)
{
	BSP_LED_On(HBM0);
	BSP_LED_On(HBM1);
	BSP_LED_On(HBM2);
	BSP_LED_On(HBM3);
	BSP_LED_On(HBM4);

}

void high_beam_off(void)
{
	BSP_LED_Off(HBM0);
	BSP_LED_Off(HBM1);
	BSP_LED_Off(HBM2);
	BSP_LED_Off(HBM3);
	BSP_LED_Off(HBM4);
}
void low_beam_on(void)
{
	BSP_LED_On(LBM0);
	BSP_LED_On(LBM1);
	BSP_LED_On(LBM2);
	BSP_LED_On(LBM3);
	BSP_LED_On(LBM4);

}

void low_beam_off(void)
{
	BSP_LED_Off(LBM0);
	BSP_LED_Off(LBM1);
	BSP_LED_Off(LBM2);
	BSP_LED_Off(LBM3);
	BSP_LED_Off(LBM4);
}
void back_light_on()
{

	  BSP_LED_On(STP0);
	  BSP_LED_On(STP1);
	  BSP_LED_On(STP2);

}
void back_light_off()
{
	  BSP_LED_Off(STP0);
	  BSP_LED_Off(STP1);
	  BSP_LED_Off(STP2);
}
void back_light_toggle()
{
	  BSP_LED_Toggle(STP0);
	  BSP_LED_Toggle(STP1);
	  BSP_LED_Toggle(STP2);
}
void turn_indicator_on()
{
	  HAL_TIM_Base_Start_IT(&htim4);
	  TI_ON=FLAG_ON;

}
void turn_indicator_off()
{
	 TI_ON=FLAG_OFF;
}
FLAG_STATE getTI_ON()
{
	return TI_ON;
}
void pwm_init()
{

	  HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_1);
	  HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_2);
	  HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_3);
	  HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_4);
	  HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_1);
	  HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_2);
	  HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_3);
}
void dlr_on()
{
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,TIM_PERIOD);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,TIM_PERIOD);
}
void dlr_off()
{
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,0);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,0);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,0);
}
void dlr_dimming(uint32_t div)
{
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_3,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_4,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,TIM_PERIOD/div);
	__HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,TIM_PERIOD/div);
}
void pwm_on_off()
{

	  for(pwm=0;pwm<200;pwm+=50)
	  {
		 __HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,pwm);
		 __HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,pwm);
		 __HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,pwm);
		 __HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,pwm);
		 __HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,pwm);
	  }
	  HAL_Delay(100);
	  for(pwm=200;pwm>0;pwm--)
	  {
		  __HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_1,pwm);
		  __HAL_TIM_SetCompare(&htim3,TIM_CHANNEL_2,pwm);
		  __HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_1,pwm);
		  __HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_2,pwm);
		  __HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_3,pwm);

		  HAL_Delay(10);
	  }
}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;

    /**Configure the main internal regulator output voltage 
    */
  __HAL_RCC_PWR_CLK_ENABLE();

  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 50;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV8;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV4;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure the Systick interrupt time 
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick 
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

/* TIM2 init function */
static void MX_TIM2_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig;
  TIM_MasterConfigTypeDef sMasterConfig;
  TIM_OC_InitTypeDef sConfigOC;

  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 24;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 200;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  if (HAL_TIM_PWM_Init(&htim2) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_3) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  HAL_TIM_MspPostInit(&htim2);

}

/* TIM3 init function */
static void MX_TIM3_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig;
  TIM_MasterConfigTypeDef sMasterConfig;
  TIM_OC_InitTypeDef sConfigOC;

  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 24;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 200;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  if (HAL_TIM_PWM_Init(&htim3) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_3) != HAL_OK)
   {
     _Error_Handler(__FILE__, __LINE__);
   }

   if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_4) != HAL_OK)
   {
     _Error_Handler(__FILE__, __LINE__);
   }
  HAL_TIM_MspPostInit(&htim3);

}

/** Configure pins as 
        * Analog 
        * Input 
        * Output
        * EVENT_OUT
        * EXTI
*/
static void MX_GPIO_Init(void)
{

  BSP_LED_Init(HBM0);
  BSP_LED_Init(HBM1);
  BSP_LED_Init(HBM2);
  BSP_LED_Init(HBM3);
  BSP_LED_Init(HBM4);

  BSP_LED_Init(LBM0);
  BSP_LED_Init(LBM1);
  BSP_LED_Init(LBM2);
  BSP_LED_Init(LBM3);
  BSP_LED_Init(LBM4);

  BSP_LED_Init(STP0);
  BSP_LED_Init(STP1);
  BSP_LED_Init(STP2);

  BSP_LED_Init(TRN0);
  BSP_LED_Init(TRN1);
  BSP_LED_Init(TRN2);
  BSP_LED_Init(TRN3);
  BSP_LED_Init(TRN4);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void _Error_Handler(char * file, int line)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  while(1) 
  {
  }
  /* USER CODE END Error_Handler_Debug */ 
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif
static void MX_TIM4_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig;
  TIM_MasterConfigTypeDef sMasterConfig;

  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 8000;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 50;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
