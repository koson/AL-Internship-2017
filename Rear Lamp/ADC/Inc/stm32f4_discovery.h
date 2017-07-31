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
   
/** @addtogroup BSP
  * @{
  */ 

/** @addtogroup STM32F4_DISCOVERY
  * @{
  */ 
      
/** @addtogroup STM32F4_DISCOVERY_LOW_LEVEL
  * @{
  */ 

/** @defgroup STM32F4_DISCOVERY_LOW_LEVEL_Exported_Types STM32F4 DISCOVERY LOW LEVEL_Exported_Types
  * @{
  */
typedef enum 
{
  LED4 = 0,
  LED3 = 1,
  LED5 = 2,
  LED6 = 3,
  STP0 = 4,
  STP1 = 5,
  STP2 = 6,
  STPP1 = 7,
  STPP2 = 8,
  STPP3 = 9,
  STPP4 = 10,
  STPP5 = 11,
  STPP6 = 12,
  BTRN0 = 13,
  BTRN1 = 14,
  BTRN2 = 15,
  BTRN3 = 16,
  BTRN4 = 17,
  BTRN5 = 18,
  LEDGOBACK1 =19,
  LEDGOBACK2 =20

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
#define LEDn                             21

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


#define STP0_PIN							GPIO_PIN_12
#define STP0_GPIO_PORT						GPIOE
#define STP0_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define STP0_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define STP1_PIN							GPIO_PIN_13
#define STP1_GPIO_PORT						GPIOE
#define STP1_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define STP1_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define STP2_PIN							GPIO_PIN_14
#define STP2_GPIO_PORT						GPIOE
#define STP2_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define STP2_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define STPP1_PIN							GPIO_PIN_7
#define STPP1_GPIO_PORT						GPIOE
#define STPP1_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define STPP1_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define STPP2_PIN							GPIO_PIN_8
#define STPP2_GPIO_PORT						GPIOE
#define STPP2_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define STPP2_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define STPP3_PIN							GPIO_PIN_9
#define STPP3_GPIO_PORT						GPIOE
#define STPP3_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define STPP3_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define STPP4_PIN							GPIO_PIN_10
#define STPP4_GPIO_PORT						GPIOE
#define STPP4_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define STPP4_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define STPP5_PIN							GPIO_PIN_11
#define STPP5_GPIO_PORT						GPIOE
#define STPP5_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define STPP5_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define STPP6_PIN							GPIO_PIN_15
#define STPP6_GPIO_PORT						GPIOE
#define STPP6_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define STPP6_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define BTRN0_PIN							GPIO_PIN_2
#define BTRN0_GPIO_PORT						GPIOD
#define BTRN0_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define BTRN0_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define BTRN1_PIN							GPIO_PIN_3
#define BTRN1_GPIO_PORT						GPIOD
#define BTRN1_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define BTRN1_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define BTRN2_PIN							GPIO_PIN_4
#define BTRN2_GPIO_PORT						GPIOD
#define BTRN2_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define BTRN2_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define BTRN3_PIN							GPIO_PIN_5
#define BTRN3_GPIO_PORT						GPIOD
#define BTRN3_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define BTRN3_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define BTRN4_PIN							GPIO_PIN_6
#define BTRN4_GPIO_PORT						GPIOD
#define BTRN4_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define BTRN4_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define BTRN5_PIN							GPIO_PIN_7
#define BTRN5_GPIO_PORT						GPIOD
#define BTRN5_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOD_CLK_ENABLE()
#define BTRN5_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOD_CLK_DISABLE()

#define LEDGOBACK1_PIN							GPIO_PIN_2
#define LEDGOBACK1_GPIO_PORT						GPIOE
#define LEDGOBACK1_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define LEDGOBACK1_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()

#define LEDGOBACK2_PIN							GPIO_PIN_3
#define LEDGOBACK2_GPIO_PORT						GPIOE
#define LEDGOBACK2_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOE_CLK_ENABLE()
#define LEDGOBACK2_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOE_CLK_DISABLE()


#define LEDx_GPIO_CLK_ENABLE(__INDEX__) do{if((__INDEX__) == 0) LED4_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 1) LED3_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 2) LED5_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 3) LED6_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 4) STP0_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 5) STP1_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 6) STP2_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 7) STPP1_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 8) STPP2_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 9) STPP3_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 10) STPP4_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 11) STPP5_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 12) STPP6_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 13) BTRN0_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 14) BTRN1_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 15) BTRN2_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 16) BTRN3_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 17) BTRN4_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 18) BTRN5_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 19) LEDGOBACK1_GPIO_CLK_ENABLE(); else \
                                           if((__INDEX__) == 20) LEDGOBACK2_GPIO_CLK_ENABLE(); \
                                           }while(0)

#define LEDx_GPIO_CLK_DISABLE(__INDEX__) do{if((__INDEX__) == 0) LED4_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 1) LED3_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 2) LED5_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 3) LED6_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 4) STP0_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 5) STP1_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 6) STP2_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 7) STPP1_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 8) STPP2_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 9) STPP3_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 10) STPP4_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 11) STPP5_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 12) STPP6_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 13) BTRN0_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 14) BTRN1_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 15) BTRN2_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 16) BTRN3_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 17) BTRN4_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 18) BTRN5_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 19) LEDGOBACK1_GPIO_CLK_DISABLE(); else \
                                            if((__INDEX__) == 20) LEDGOBACK2_GPIO_CLK_DISABLE(); \
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
#define KEY_BUTTON_PIN                GPIO_PIN_0
#define KEY_BUTTON_GPIO_PORT          GPIOA
#define KEY_BUTTON_GPIO_CLK_ENABLE()  __HAL_RCC_GPIOA_CLK_ENABLE()
#define KEY_BUTTON_GPIO_CLK_DISABLE() __HAL_RCC_GPIOA_CLK_DISABLE()
#define KEY_BUTTON_EXTI_IRQn          EXTI0_IRQn

#define BUTTONx_GPIO_CLK_ENABLE(__INDEX__)    do{if((__INDEX__) == 0) KEY_BUTTON_GPIO_CLK_ENABLE(); \
                                                }while(0)

#define BUTTONx_GPIO_CLK_DISABLE(__INDEX__)    do{if((__INDEX__) == 0) KEY_BUTTON_GPIO_CLK_DISABLE(); \
                                                 }while(0)

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
