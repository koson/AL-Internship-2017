################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/users/F27280C/Desktop/Templates/Src/main.c \
D:/users/F27280C/Desktop/Templates/Src/stm32f4xx_hal_msp.c \
D:/users/F27280C/Desktop/Templates/Src/stm32f4xx_it.c 

OBJS += \
./Example/User/main.o \
./Example/User/stm32f4xx_hal_msp.o \
./Example/User/stm32f4xx_it.o 

C_DEPS += \
./Example/User/main.d \
./Example/User/stm32f4xx_hal_msp.d \
./Example/User/stm32f4xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
Example/User/main.o: D:/users/F27280C/Desktop/Templates/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F407xx -DUSE_STM32F4_DISCO -I"D:/users/F27280C/Desktop/Templates/Inc" -I"D:/users/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/users/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/users/Drivers/BSP/STM32F4-Discovery" -I"D:/users/Utilities/Log" -I"D:/users/Utilities/CPU" -I"D:/users/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Example/User/stm32f4xx_hal_msp.o: D:/users/F27280C/Desktop/Templates/Src/stm32f4xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F407xx -DUSE_STM32F4_DISCO -I"D:/users/F27280C/Desktop/Templates/Inc" -I"D:/users/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/users/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/users/Drivers/BSP/STM32F4-Discovery" -I"D:/users/Utilities/Log" -I"D:/users/Utilities/CPU" -I"D:/users/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Example/User/stm32f4xx_it.o: D:/users/F27280C/Desktop/Templates/Src/stm32f4xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F407xx -DUSE_STM32F4_DISCO -I"D:/users/F27280C/Desktop/Templates/Inc" -I"D:/users/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/users/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/users/Drivers/BSP/STM32F4-Discovery" -I"D:/users/Utilities/Log" -I"D:/users/Utilities/CPU" -I"D:/users/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


