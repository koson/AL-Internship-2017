#include "main.h"

CanTxMsgTypeDef        TxMessage;
CanRxMsgTypeDef        RxMessage;
uint32_t  IR_ui32DecodedMessage;
extern CAN_HandleTypeDef hcan1;
uint32_t  IR_ui32PreviousMessage= IR_IDLE;
volatile uint16_t datarx[6] ;
uint8_t TransmitMailbox = 0;
extern FLAG_MODE USE_BUTTONS;

void MX_CAN1_Init(void)
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
void CAN_Tx_Turn(uint8_t Data)
{
	hcan1.pTxMsg->StdId = TOGGLE_TRN;
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
		verif_msg(hcan1.pRxMsg->StdId, hcan1.pRxMsg->Data[0],hcan1.pRxMsg->Data[1]);
		}
}
void toggle_MODE()
{
	USE_BUTTONS=!USE_BUTTONS;
}
void verif_msg(volatile uint16_t ID, uint8_t DATA1, uint8_t DATA2)
{

	if (ID == MODE_AUTO)
		USE_BUTTONS = AUTO;
	else if(ID == MODE_MANUAL)
		USE_BUTTONS = MANUAL;
	else if(ID == TOGGLE_MODE)
		toggle_MODE();
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
					drl_on();
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
					drl_off();
					break;

		case TOGGLE_HIB:
					high_beam_toggle();
					break;
		case TOGGLE_LOB:
					low_beam_toggle();
					break;
		case TOGGLE_TRN:
					turn_indicator_toggle();
					break;
		case TOGGLE_DRL:
					drl_toggle();
					break;
		case HIB_OBSTACLE:
					high_beam_obstacle(DATA1,DATA2);
					break;
	}
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
