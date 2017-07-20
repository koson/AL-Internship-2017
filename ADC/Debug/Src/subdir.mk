################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/IR.c \
../Src/main.c \
../Src/stm32f4_discovery.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_it.c \
../Src/system_stm32f4xx.c 

OBJS += \
./Src/IR.o \
./Src/main.o \
./Src/stm32f4_discovery.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_it.o \
./Src/system_stm32f4xx.o 

C_DEPS += \
./Src/IR.d \
./Src/main.d \
./Src/stm32f4_discovery.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_it.d \
./Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F407xx -I"D:/users/F27280C/Downloads/AL-Internship-2017/ADC/Inc" -I"D:/users/F27280C/Downloads/AL-Internship-2017/ADC/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/users/F27280C/Downloads/AL-Internship-2017/ADC/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/users/F27280C/Downloads/AL-Internship-2017/ADC/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/users/F27280C/Downloads/AL-Internship-2017/ADC/Drivers/CMSIS/Include" -I"D:/users/F27280C/Downloads/AL-Internship-2017/ADC/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


