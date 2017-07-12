################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
D:/users/F27280C/Desktop/Templates/SW4STM32/startup_stm32f407xx.s 

OBJS += \
./Example/SW4STM32/startup_stm32f407xx.o 


# Each subdirectory must supply rules for building sources it contributes
Example/SW4STM32/startup_stm32f407xx.o: D:/users/F27280C/Desktop/Templates/SW4STM32/startup_stm32f407xx.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I"d:/users/F27280C/STM32Cube/Repository/STM32Cube_FW_F4_V1.16.0/Drivers/BSP" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


