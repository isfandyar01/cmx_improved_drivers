################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/apps/http/altcp_proxyconnect.c \
../lwip/src/apps/http/fs.c \
../lwip/src/apps/http/fsdata.c \
../lwip/src/apps/http/http_client.c \
../lwip/src/apps/http/httpd.c 

OBJS += \
./lwip/src/apps/http/altcp_proxyconnect.o \
./lwip/src/apps/http/fs.o \
./lwip/src/apps/http/fsdata.o \
./lwip/src/apps/http/http_client.o \
./lwip/src/apps/http/httpd.o 

C_DEPS += \
./lwip/src/apps/http/altcp_proxyconnect.d \
./lwip/src/apps/http/fs.d \
./lwip/src/apps/http/fsdata.d \
./lwip/src/apps/http/http_client.d \
./lwip/src/apps/http/httpd.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/apps/http/%.o lwip/src/apps/http/%.su: ../lwip/src/apps/http/%.c lwip/src/apps/http/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/lwip" -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lwip-2f-src-2f-apps-2f-http

clean-lwip-2f-src-2f-apps-2f-http:
	-$(RM) ./lwip/src/apps/http/altcp_proxyconnect.d ./lwip/src/apps/http/altcp_proxyconnect.o ./lwip/src/apps/http/altcp_proxyconnect.su ./lwip/src/apps/http/fs.d ./lwip/src/apps/http/fs.o ./lwip/src/apps/http/fs.su ./lwip/src/apps/http/fsdata.d ./lwip/src/apps/http/fsdata.o ./lwip/src/apps/http/fsdata.su ./lwip/src/apps/http/http_client.d ./lwip/src/apps/http/http_client.o ./lwip/src/apps/http/http_client.su ./lwip/src/apps/http/httpd.d ./lwip/src/apps/http/httpd.o ./lwip/src/apps/http/httpd.su

.PHONY: clean-lwip-2f-src-2f-apps-2f-http

