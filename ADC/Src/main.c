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
#include "leds.h"
#include "buttons.h"

#define CAN_FIFO_ID                0
#define CAN_FIFO                   CAN_FIFO0
#define CAN_FIFO_IN                CAN_IT_FMP0

/**********************\
|*     handlers        |
\**********************/
ADC_HandleTypeDef hadc1;
CAN_HandleTypeDef hcan1;

/*Tim2&Tim3 used for pwm generation for DLR leds*/
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim5;
TIM_HandleTypeDef htim7;

uint32_t CLK_ui32PrescalerValue;
uint16_t IR_ui16message = 0;
extern int IR_intcounter;

IRMessage IR_tReceivedMessage;
IRMessage IR_tReceivedFirstMessage;
IRMessage IR_tReceivedSecondMessage;
IRMessage IR_tReceivedThirdMessage;
IRMessage IR_tMessageToBeSent;
uint32_t IR_ui32PreviousMessage = IR_IDLE;
uint32_t IR_ui32DecodedMessage;


FLAG_STATE FLAG_TI=FLAG_OFF;
FLAG_STATE FLAG_DLR=FLAG_OFF;

FLAG_MODE USE_BUTTONS=MANUAL;

uint16_t TIM_PERIOD=200;

uint32_t ADC_ui32LuminosityVal; //0 - > 4092
volatile uint16_t datarx[6] ;
uint8_t TransmitMailbox = 0;

static CanTxMsgTypeDef        TxMessage;
static CanRxMsgTypeDef        RxMessage;

/**********************\
|*       config        |
\**********************/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_ADC1_Init(void);
static void MX_CAN1_Init(void);
static void MX_TIM2_Init(void);
static void MX_TIM3_Init(void);
static void MX_TIM4_Init(void);
static void MX_TIM5_Init(void);
static void MX_TIM7_Init(void);

static void led_init(void);
static void button_init(void);
static void pwm_init(void);

static void CAN_filter_init(void);
void systemInit();

/**********************\
|*   can functions     |
\**********************/
void CAN_Tx_Brake(uint8_t);
void CAN_Tx(uint32_t ID);
void CAN_Rx(void);
void verif_msg(volatile uint16_t);

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

uint32_t CANdecode(IRMessage);

/**********************\
|*   IR functions      |
\**********************/
void readIRMessage();

/*************************\
 * Light sensor functions
\*************************/
void dimmingIfHighLuminosity(void);


int main(void)
{
  /*Initialize the system*/
  systemInit();
  dlr_on();
  /*Infinite loop*/
  while (1)
  {
	  /*This function reads and memorize the IR message in the IR_tReceivedMessage */
	  readIRMessage();

	  /*Transmit the ridden message on CAN*/
	  CAN_Tx(CANdecode(IR_tReceivedMessage));

	  /*Receive commands from CAN*/
	  CAN_Rx();

	  /*Consider the luminosity in order to dim the lights*/
	  dimmingIfHighLuminosity();

  }
}

void systemInit() {
	  HAL_Init();
	  SystemClock_Config();
	  MX_GPIO_Init();
	  MX_ADC1_Init();
	  MX_CAN1_Init();
	  MX_TIM2_Init();
	  MX_TIM3_Init();
	  MX_TIM4_Init();
	  MX_TIM5_Init();
	  MX_TIM7_Init();
	  pwm_init();
	  CAN_filter_init();
	  HAL_TIM_Base_Start_IT(&htim5);
	  HAL_TIM_Base_Start_IT(&htim7);
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
static void MX_TIM2_Init(void)
{

  TIM_MasterConfigTypeDef sMasterConfig;
  TIM_OC_InitTypeDef sConfigOC;

  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 24;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 200;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
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
static void MX_TIM3_Init(void)
{

  TIM_MasterConfigTypeDef sMasterConfig;
  TIM_OC_InitTypeDef sConfigOC;

  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 24;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 200;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
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
static void MX_TIM4_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig;
  TIM_MasterConfigTypeDef sMasterConfig;

  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 16000;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 200;
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
static void MX_TIM5_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig;
  CLK_ui32PrescalerValue = (uint32_t) ((SystemCoreClock /2) / 1000) - 1;
  htim5.Instance = TIM5;
  htim5.Init.Prescaler = CLK_ui32PrescalerValue;
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

static void MX_TIM7_Init(void)
{

	 TIM_MasterConfigTypeDef sMasterConfig;

	htim7.Instance = TIM7;
	htim7.Init.Prescaler =8000;
	htim7.Init.CounterMode = TIM_COUNTERMODE_UP;
	htim7.Init.Period = 50;
	if (HAL_TIM_Base_Init(&htim7) != HAL_OK)
	{
	_Error_Handler(__FILE__, __LINE__);
	}

	sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
	sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
	if (HAL_TIMEx_MasterConfigSynchronization(&htim7, &sMasterConfig) != HAL_OK)
	{
	_Error_Handler(__FILE__, __LINE__);
	}

}
static void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct;

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_10, GPIO_PIN_RESET);

  /*Configure GPIO pin : PD10 */
  GPIO_InitStruct.Pin = GPIO_PIN_10;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  /*Configure GPIO pin : PD11 */
  GPIO_InitStruct.Pin = GPIO_PIN_11;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
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


    GPIO_InitStruct.Pin = GPIO_PIN_3;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

    led_init();
    button_init();

}
void led_init()
{
	BSP_LED_Init(LED3);
	BSP_LED_Init(LED4);
	BSP_LED_Init(LED5);
	BSP_LED_Init(LED6);

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

	BSP_LED_Init(TRN0);
	BSP_LED_Init(TRN1);
	BSP_LED_Init(TRN2);
	BSP_LED_Init(TRN3);
	BSP_LED_Init(TRN4);

}
void button_init()
{
	GPIO_InitTypeDef GPIO_InitStruct;

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_12|GPIO_PIN_13, GPIO_PIN_RESET);
	GPIO_InitStruct.Pin = GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_12|GPIO_PIN_13;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);
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

void dimmingIfHighLuminosity(void)
{
	HAL_ADC_Start(&hadc1);
	ADC_ui32LuminosityVal = HAL_ADC_GetValue(&hadc1);
	if(FLAG_DLR == FLAG_ON && FLAG_TI == FLAG_OFF) {
		if( ADC_ui32LuminosityVal > MAXIMUM_LUMINOSITY) {
				 dlr_dimming(4);
			} else {
				 dlr_on();
			}
	}

}

void verif_msg(volatile uint16_t ID)
{
	if (ID == 0x50)
		USE_BUTTONS = AUTO;
	else if(ID == 0x51)
		USE_BUTTONS = MANUAL;

	if(USE_BUTTONS == AUTO)
	switch (ID)
	{
		case HIB_ON:
					high_beam_on();
					break;
		case LOB_ON:
					low_beam_on();
					break;
		case TRN_ON:
					turn_indicator_on();
					break;
		case DL_ON:
					dlr_on();
					break;


		case HIB_OFF:
					high_beam_off();
					break;
		case LOB_OFF:
					low_beam_off();
					break;
		case TRN_OFF:
					turn_indicator_off();
					break;
		case DL_OFF:
					dlr_off();
					break;


	}
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

uint32_t CANdecode(IRMessage msg)
{
	if(msg == cryticalBrake)
		IR_ui32DecodedMessage = IR_BRAKE;
	else if(msg == obstacleOnTheRoad)
		IR_ui32DecodedMessage = IR_OBSTACLE;
	else if(msg == failed)
		IR_ui32DecodedMessage = IR_ui32PreviousMessage;
	else if(msg == goingToLeaveTheRoad)
		IR_ui32DecodedMessage = IR_LEAVING;
	else if(msg == goingToStop)
		IR_ui32DecodedMessage = IR_STOP;
	else
		IR_ui32DecodedMessage = IR_IDLE;

	IR_ui32PreviousMessage = IR_ui32DecodedMessage;
	return IR_ui32DecodedMessage;
}

void readIRMessage() {
	if(IR_intcounter % 16 == 0 && IR_intcounter < 20) {
		 IR_tReceivedFirstMessage = IRdecode(IR_ui16message);
	 }
	 if(IR_intcounter % 32 == 0 && IR_intcounter < 40) {
		 IR_tReceivedSecondMessage = IRdecode(IR_ui16message);
	 }
	 if(IR_intcounter % 48 == 0) {
		 IR_tReceivedThirdMessage = IRdecode(IR_ui16message);
		 if(IR_tReceivedFirstMessage == IR_tReceivedSecondMessage && IR_tReceivedFirstMessage == IR_tReceivedThirdMessage) {
			 IR_tReceivedMessage = IR_tReceivedFirstMessage;
		 } else if(IR_tReceivedSecondMessage == IR_tReceivedThirdMessage) {
			 IR_tReceivedMessage = IR_tReceivedSecondMessage;
		 } else {
			 IR_tReceivedMessage = IR_tReceivedThirdMessage;
		 }
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
