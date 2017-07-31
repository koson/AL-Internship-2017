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
#include "stm32f4xx_hal.h"
#include "signals.h"
#include "stm32f4_discovery.h"
#include "IR.h"

#define CAN_FIFO_ID                0
#define CAN_FIFO                   CAN_FIFO0
#define CAN_FIFO_IN                CAN_IT_FMP0
#define TIM_PERIOD 200

/**********************\
|*     handlers        |
\**********************/
ADC_HandleTypeDef hadc1;
CAN_HandleTypeDef hcan1;
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim5;

uint32_t CLOCK_ui32PrescalerValue;
uint16_t IR_tMessage = 0;
IRMessage IR_tReceivedMessage;
IRMessage IR_tMessageToBeSent;


uint32_t ADC_Val; //0 - > 4092
volatile uint16_t datarx[6] ;
uint8_t TransmitMailbox = 0;
int IR_intTransmitCounter = 0;

static CanTxMsgTypeDef        TxMessage;
static CanRxMsgTypeDef        RxMessage;

/**********************\
|*       config        |
\**********************/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_ADC1_Init(void);
static void MX_CAN1_Init(void);
static void CAN_filter_init(void);
void systemInit();

//For rear lamp IR
static void MX_TIM2_Init(void);
static void MX_TIM5_Init(void);

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);
void transmit(uint16_t CANId);
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

void back_light_on(void);
void back_light_off(void);
void back_light_toggle(void);



uint32_t CANdecode(IRMessage);
GPIO_InitTypeDef  GPIO_InitStruct;

int main(void)
{
  systemInit();

  while (1)
  {
	  progresiveBrakeLight();
	 CAN_Rx();
	 //CAN_Tx_Brake(getBrakelevel());
	 if(getBrakelevel() > 100) {
		 for(int i = 0 ; i < 2; i++) {
			transmit(IR_BRAKE);
		}
		BSP_LED_On(STP0);
		BSP_LED_On(STP1);
		BSP_LED_On(STP2);

	 }
	 else {
		CAN_Rx();
		BSP_LED_Off(STP0);
		BSP_LED_Off(STP1);
		BSP_LED_Off(STP2);

	 }


  }
}

void systemInit() {
	  HAL_Init();
	  SystemClock_Config();
	  MX_GPIO_Init();
	  MX_ADC1_Init();
	  MX_CAN1_Init();
	  CAN_filter_init();

	  MX_TIM2_Init();
	  MX_TIM5_Init();
	  HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_4);
	  HAL_TIM_Base_Start_IT(&htim5);
}

void turnProgresiveLed(Led_TypeDef led, int val) {
	if(getBrakelevel() > val) {
		BSP_LED_On(led);
	}
	else {
		BSP_LED_Off(led);
	}
}

void progresiveBrakeLight() {
	turnProgresiveLed(STPP1, 200);
	turnProgresiveLed(STPP2, 700);
	turnProgresiveLed(STPP3, 1200);
	turnProgresiveLed(STPP4, 1700);
	turnProgresiveLed(STPP5, 2200);
	turnProgresiveLed(STPP6, 3000);
}

void transmit(uint16_t CANId) {
	   __HAL_TIM_SetCompare(&htim2,TIM_CHANNEL_4, getDutyCycle(CANId));
}


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
  RCC_OscInitStruct.PLL.PLLN = 144;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
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
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV4;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure the Systick interrupt time 
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick 
     *
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}
static void MX_ADC1_Init(void)
{

  ADC_ChannelConfTypeDef sConfig;

    /**Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion) 
    */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV2;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.ScanConvMode = DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 1;
  hadc1.Init.DMAContinuousRequests = DISABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time. 
    */
  sConfig.Channel = ADC_CHANNEL_11;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}
static void MX_CAN1_Init(void)
{

	HAL_CAN_DeInit(&hcan1);


	__HAL_RCC_CAN1_CLK_ENABLE();
	hcan1.pTxMsg = &TxMessage;
	hcan1.pRxMsg = &RxMessage;

  hcan1.Instance = CAN1;
  hcan1.Init.Prescaler = 4;
  hcan1.Init.Mode = CAN_MODE_NORMAL;
  hcan1.Init.SJW = CAN_SJW_1TQ;
  hcan1.Init.BS1 = CAN_BS1_12TQ;
  hcan1.Init.BS2 = CAN_BS2_5TQ;
  hcan1.Init.TTCM = DISABLE;
  hcan1.Init.ABOM = DISABLE;
  hcan1.Init.AWUM = DISABLE;
  hcan1.Init.NART = DISABLE;
  hcan1.Init.RFLM = DISABLE;
  hcan1.Init.TXFP = DISABLE;
  if (HAL_CAN_Init(&hcan1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}
static void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct;

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9|GPIO_PIN_10 
                          |GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14, GPIO_PIN_RESET);


  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6 
                          |GPIO_PIN_7, GPIO_PIN_RESET);


  /*Configure GPIO pins : PD3 PD4 PD5 PD6 
                           PD7 */
  GPIO_InitStruct.Pin = GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6 
                          |GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  /*ADC Channel 11 -> PC1 */
    GPIO_InitStruct.Pin = GPIO_PIN_1;
    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
    GPIO_InitStruct.Pull = GPIO_NOPULL ;
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    /*CAN1 TX pin*/
    GPIO_InitStruct.Pin = CAN1_TX_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Alternate =  GPIO_AF9_CAN1;
    HAL_GPIO_Init(CAN1_TX_GPIO_Port, &GPIO_InitStruct);

    /*CAN1 RX pin*/
    GPIO_InitStruct.Pin = CAN1_RX_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Alternate =  GPIO_AF9_CAN1;
    HAL_GPIO_Init(CAN1_RX_GPIO_Port, &GPIO_InitStruct);

    BSP_LED_Init(LED3);
    BSP_LED_Init(LED4);
    BSP_LED_Init(LED5);
    BSP_LED_Init(LED6);

    BSP_LED_Init(STP0);
    BSP_LED_Init(STP1);
    BSP_LED_Init(STP2);

    BSP_LED_Init(STPP1);
    BSP_LED_Init(STPP2);
    BSP_LED_Init(STPP3);
    BSP_LED_Init(STPP4);
    BSP_LED_Init(STPP5);
    BSP_LED_Init(STPP6);

}

/* TIM2 init function */
static void MX_TIM2_Init(void)
{

  TIM_MasterConfigTypeDef sMasterConfig;
  TIM_OC_InitTypeDef sConfigOC;
  /* Compute the prescaler value to have TIM3 counter clock equal to 10 KHz */
  CLOCK_ui32PrescalerValue = (uint32_t) ((SystemCoreClock /2) / 1000) - 1;

  htim2.Instance = TIM2;
  htim2.Init.Prescaler = CLOCK_ui32PrescalerValue;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 10000 - 1;
  htim2.Init.ClockDivision = 0;
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
  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_4) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }
  HAL_TIM_MspPostInit(&htim2);

}

static void MX_TIM5_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig;
  CLOCK_ui32PrescalerValue=(uint32_t) ((SystemCoreClock /2) / 10000) - 1;
  htim5.Instance = TIM5;
  htim5.Init.Prescaler = CLOCK_ui32PrescalerValue;
  htim5.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim5.Init.Period = IRPeriod/16 -1;
  htim5.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  if (HAL_TIM_Base_Init(&htim5) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim5, &sClockSourceConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}

void CAN_filter_init(void)
{
	CAN_FilterConfTypeDef  sFilterConfig;

	/*##-2- Configure the CAN Filter ###########################################*/
	sFilterConfig.FilterNumber = 0;
	sFilterConfig.FilterFIFOAssignment = CAN_FIFO;
	sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;
	sFilterConfig.FilterScale = CAN_FILTERSCALE_16BIT;
	sFilterConfig.FilterIdHigh = 0x0000;
	sFilterConfig.FilterIdLow = 0x0000;
	sFilterConfig.FilterMaskIdHigh = 0x0000;
	sFilterConfig.FilterMaskIdLow = 0x0000;


	sFilterConfig.FilterActivation = ENABLE;
	sFilterConfig.BankNumber = 0;
	HAL_CAN_ConfigFilter(&hcan1, &sFilterConfig);

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
	IR_tMessageToBeSent = id;

	for(int i = 0 ; i < 2; i++) {
		transmit(IR_tMessageToBeSent);
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
	return ADC_Val;

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
