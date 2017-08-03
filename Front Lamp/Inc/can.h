#ifndef __CAN_H
#define __CAN_H

#define CAN1_RX_Pin 			   GPIO_PIN_0
#define CAN1_RX_GPIO_Port 		   GPIOD
#define CAN1_TX_Pin 			   GPIO_PIN_1
#define CAN1_TX_GPIO_Port 		   GPIOD

#define CAN_FIFO_ID                0
#define CAN_FIFO                   CAN_FIFO0
#define CAN_FIFO_IN                CAN_IT_FMP0


void MX_CAN1_Init(void);
void CAN_Tx_Brake(uint8_t);
void CAN_Tx(uint32_t ID);
void CAN_Rx(void);
void toggle_MODE(void);
void verif_msg(volatile uint16_t, uint8_t,uint8_t);
void CAN_Tx_Turn(uint8_t);

uint32_t CANdecode(IRMessage);

#endif
