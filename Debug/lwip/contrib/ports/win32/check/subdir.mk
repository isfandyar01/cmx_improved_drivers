################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/contrib/ports/win32/check/time.c 

OBJS += \
./lwip/contrib/ports/win32/check/time.o 

C_DEPS += \
./lwip/contrib/ports/win32/check/time.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/contrib/ports/win32/check/%.o lwip/contrib/ports/win32/check/%.su: ../lwip/contrib/ports/win32/check/%.c lwip/contrib/ports/win32/check/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/lwip" -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lwip-2f-contrib-2f-ports-2f-win32-2f-check

clean-lwip-2f-contrib-2f-ports-2f-win32-2f-check:
	-$(RM) ./lwip/contrib/ports/win32/check/time.d ./lwip/contrib/ports/win32/check/time.o ./lwip/contrib/ports/win32/check/time.su

.PHONY: clean-lwip-2f-contrib-2f-ports-2f-win32-2f-check

