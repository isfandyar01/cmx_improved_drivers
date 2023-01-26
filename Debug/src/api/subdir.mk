################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/api/api_lib.c \
../src/api/api_msg.c \
../src/api/err.c \
../src/api/if_api.c \
../src/api/netbuf.c \
../src/api/netdb.c \
../src/api/netifapi.c \
../src/api/sockets.c \
../src/api/tcpip.c 

OBJS += \
./src/api/api_lib.o \
./src/api/api_msg.o \
./src/api/err.o \
./src/api/if_api.o \
./src/api/netbuf.o \
./src/api/netdb.o \
./src/api/netifapi.o \
./src/api/sockets.o \
./src/api/tcpip.o 

C_DEPS += \
./src/api/api_lib.d \
./src/api/api_msg.d \
./src/api/err.d \
./src/api/if_api.d \
./src/api/netbuf.d \
./src/api/netdb.d \
./src/api/netifapi.d \
./src/api/sockets.d \
./src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
src/api/%.o src/api/%.su: ../src/api/%.c src/api/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-src-2f-api

clean-src-2f-api:
	-$(RM) ./src/api/api_lib.d ./src/api/api_lib.o ./src/api/api_lib.su ./src/api/api_msg.d ./src/api/api_msg.o ./src/api/api_msg.su ./src/api/err.d ./src/api/err.o ./src/api/err.su ./src/api/if_api.d ./src/api/if_api.o ./src/api/if_api.su ./src/api/netbuf.d ./src/api/netbuf.o ./src/api/netbuf.su ./src/api/netdb.d ./src/api/netdb.o ./src/api/netdb.su ./src/api/netifapi.d ./src/api/netifapi.o ./src/api/netifapi.su ./src/api/sockets.d ./src/api/sockets.o ./src/api/sockets.su ./src/api/tcpip.d ./src/api/tcpip.o ./src/api/tcpip.su

.PHONY: clean-src-2f-api

