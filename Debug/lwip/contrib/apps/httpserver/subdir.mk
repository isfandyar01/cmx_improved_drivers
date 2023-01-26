################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/contrib/apps/httpserver/httpserver-netconn.c 

OBJS += \
./lwip/contrib/apps/httpserver/httpserver-netconn.o 

C_DEPS += \
./lwip/contrib/apps/httpserver/httpserver-netconn.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/contrib/apps/httpserver/%.o lwip/contrib/apps/httpserver/%.su: ../lwip/contrib/apps/httpserver/%.c lwip/contrib/apps/httpserver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/lwip" -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lwip-2f-contrib-2f-apps-2f-httpserver

clean-lwip-2f-contrib-2f-apps-2f-httpserver:
	-$(RM) ./lwip/contrib/apps/httpserver/httpserver-netconn.d ./lwip/contrib/apps/httpserver/httpserver-netconn.o ./lwip/contrib/apps/httpserver/httpserver-netconn.su

.PHONY: clean-lwip-2f-contrib-2f-apps-2f-httpserver

