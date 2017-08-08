/** 
  ******************************************************************************
  * @file    stm32f4_discovery.h
  * @author  MCD Application Team
  * @version V2.1.2
  * @date    27-January-2017
  * @brief   This file contains definitions for STM32F4-Discovery Kit's Leds and 
  *          push-button hardware resources.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
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
  
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __STM32F4_DISCOVERY_H
#define __STM32F4_DISCOVERY_H

#ifdef __cplusplus
 extern "C" {
#endif
                                              
/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

typedef enum 
{
  LED4 = 0,
  LED3 = 1,
  LED5 = 2,
  LED6 = 3,
  TRN0 = 4,
  TRN1 = 5,
  TRN2 = 6,
  TRN3 = 7,
  TRN4 = 8,
  HBM0 = 9,
  HBM1 = 10,
  HBM2 = 11,
  HBM3 = 12,
  HBM4 = 13,
  LBM0 = 14,
  LBM1 = 15,
  LBM2 = 16,
  LBM3 = 17,
  LBM4 = 18
} Led_TypeDef;

typedef enum 
{  
  BUTTON_KEY = 0,
} Button_TypeDef;

typedef enum 
{  
  BUTTON_MODE_GPIO = 0,
  BUTTON_MODE_EXTI = 1
} ButtonMode_TypeDef;
typedef enum
{
  FLAG_OFF = 0,
  FLAG_ON = 1
} FLAG_STATE;
typedef enum
{
  UNDEFINED_PRESS =0,
  SHORT_PRESS = 1,
  LONG_PRESS= 2
} BUTTON_PRESS_Type;
typedef enum
{
	AUTO = 0,
	MANUAL = 1
} FLAG_MODE;
typedef enum
{
   DAY = 0,
   NIGHT = 1,
   MAX_LIGHT =2
} FLAG_LIGHT;
/**
  * @}
  */ 

/** @defgroup STM32F4_DISCOVERY_LOW_LEVEL_Exported_Constants STM32F4 DISCOVERY LOW LEVEL Exported Constants
  * @{
  */ 

/** 
* @brief  Define for STM32F4_DISCOVERY board  
*/ 
#if !defined (USE_STM32F4_DISCO)
 #define USE_STM32F4_DISCO
#endif

/** @defgroup STM32F4_DISCOVERY_LOW_LEVEL_LED STM32F4 DISCOVERY LOW LEVEL LED
  * @{
  */
#define LEDn                             19

#define LED4_PIN                         GPIO_PIN_12
#define LED4_GPIO_PORT                   GPIOD
#define LED4_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()  
#define LED4_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()  

#define LED3_PIN                         GPIO_PIN_13
#define LED3_GPIO_PORT                   GPIOD
#define LED3_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()  
#define LED3_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()  
  
#define LED5_PIN                         GPIO_PIN_14
#define LED5_GPIO_PORT                   GPIOD
#define LED5_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()  
#define LED5_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()  

#define LED6_PIN                         GPIO_PIN_15
#define LED6_GPIO_PORT                   GPIOD
#define LED6_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()  
#define LED6_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()  

#define TRN0_PIN							GPIO_PIN_3
#define TRN0_GPIO_PORT						GPIOD
#define TRN0_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define TRN0_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define TRN1_PIN							GPIO_PIN_4
#define TRN1_GPIO_PORT						GPIOD
#define TRN1_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define TRN1_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define TRN2_PIN							GPIO_PIN_5
#define TRN2_GPIO_PORT						GPIOD
#define TRN2_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define TRN2_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define TRN3_PIN							GPIO_PIN_6
#define TRN3_GPIO_PORT						GPIOD
#define TRN3_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define TRN3_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define TRN4_PIN							GPIO_PIN_7
#define TRN4_GPIO_PORT						GPIOD
#define TRN4_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOA_CLK_ENABLE()
#define TRN4_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOA_CLK_DISABLE()

#define HBM0_PIN							GPIO_PIN_0
#define HBM0_GPIO_PORT						GPIOE
#define HBM0_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define HBM0_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define HBM1_PIN							GPIO_PIN_1
#define HBM1_GPIO_PORT						GPIOE
#define HBM1_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define HBM1_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define HBM2_PIN							GPIO_PIN_2
#define HBM2_GPIO_PORT						GPIOE
#define HBM2_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define HBM2_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define HBM3_PIN							GPIO_PIN_3
#define HBM3_GPIO_PORT						GPIOE
#define HBM3_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define HBM3_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define HBM4_PIN							GPIO_PIN_4
#define HBM4_GPIO_PORT						GPIOE
#define HBM4_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define HBM4_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define LBM0_PIN							GPIO_PIN_7
#define LBM0_GPIO_PORT						GPIOE
#define LBM0_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define LBM0_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define LBM1_PIN							GPIO_PIN_8
#define LBM1_GPIO_PORT						GPIOE
#define LBM1_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define LBM1_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define LBM2_PIN							GPIO_PIN_9
#define LBM2_GPIO_PORT						GPIOE
#define LBM2_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define LBM2_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define LBM3_PIN							GPIO_PIN_10
#define LBM3_GPIO_PORT						GPIOE
#define LBM3_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define LBM3_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define LBM4_PIN							GPIO_PIN_11
#define LBM4_GPIO_PORT						GPIOE
#define LBM4_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define LBM4_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define LEDx_GPIO_CLK_ENABLE(__INDEX__) do{if((__INDEX__) == 0) LED4_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 1) LED3_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 2) LED5_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 3) LED6_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 4) TRN0_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 5) TRN1_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 6) TRN2_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 7) TRN3_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 8) TRN4_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 9) HBM0_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 10) HBM1_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 11) HBM2_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 12) HBM3_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 13) HBM4_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 14) LBM0_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 15) LBM1_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 16) LBM2_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 17) LBM3_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 18) LBM4_GPIO_CLK_ENABLE(); \
                                           }while(0)

#define LEDx_GPIO_CLK_DISABLE(__INDEX__) do{if((__INDEX__) == 0) LED4_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 1) LED3_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 2) LED5_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 3) LED6_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 4) TRN0_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 5) TRN1_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 6) TRN2_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 7) TRN3_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 8) TRN4_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 9) HBM0_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 10) HBM1_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 11) HBM2_GPIO_CLK_DISABLE()); else \
                                            if((__INDEX__) == 12) HBM3_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 13) HBM4_GPIO_CLK_DISABLE(); \
                                            if((__INDEX__) == 14) LBM0_GPIO_CLK_ENABLE(); else \
                                            if((__INDEX__) == 15) LBM1_GPIO_CLK_ENABLE(); else \
                                            if((__INDEX__) == 16) LBM2_GPIO_CLK_ENABLE(); else \
                                            if((__INDEX__) == 17) LBM3_GPIO_CLK_ENABLE(); else \
                                            if((__INDEX__) == 18) LBM4_GPIO_CLK_ENABLE(); \
                                           	}while(0)
/**
  * @}
  */

/** @defgroup STM32F4_DISCOVERY_LOW_LEVEL_BUTTON STM32F4 DISCOVERY LOW LEVEL BUTTON
  * @{
  */
#define BUTTONn                          1

/**
 * @brief Wakeup push-button
 */
#define KEY_BUTTON_PIN                GPIO_PIN_4
#define KEY_BUTTON_GPIO_PORT          GPIOA
#define KEY_BUTTON_GPIO_CLK_ENABLE()  __HAL_RCC_GPIOA_CLK_ENABLE()
#define KEY_BUTTON_GPIO_CLK_DISABLE() __HAL_RCC_GPIOA_CLK_DISABLE()
#define KEY_BUTTON_EXTI_IRQn          EXTI0_IRQn

#define BUTTONx_GPIO_CLK_ENABLE(__INDEX__)    do{if((__INDEX__) == 0) KEY_BUTTON_GPIO_CLK_ENABLE(); \
                                                }while(0)

#define BUTTONx_GPIO_CLK_DISABLE(__INDEX__)    do{if((__INDEX__) == 0) KEY_BUTTON_GPIO_CLK_DISABLE(); \
                                                 }while(0)
/**
  * @}
  */

/** @defgroup STM32F4_DISCOVERY_LOW_LEVEL_Exported_Functions STM32F4 DISCOVERY LOW LEVEL Exported Functions
  * @{
  */
uint32_t BSP_GetVersion(void);
void     BSP_LED_Init(Led_TypeDef Led);
void     BSP_LED_On(Led_TypeDef Led);
void     BSP_LED_Off(Led_TypeDef Led);
void     BSP_LED_Toggle(Led_TypeDef Led);
void     BSP_PB_Init(Button_TypeDef Button, ButtonMode_TypeDef Mode);
uint32_t BSP_PB_GetState(Button_TypeDef Button);


#ifdef __cplusplus
}
#endif

#endif /* __STM32F4_DISCOVERY_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
