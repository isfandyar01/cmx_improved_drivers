################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/test/unit/tcp/tcp_helper.c \
../lwip/test/unit/tcp/test_tcp.c \
../lwip/test/unit/tcp/test_tcp_oos.c 

OBJS += \
./lwip/test/unit/tcp/tcp_helper.o \
./lwip/test/unit/tcp/test_tcp.o \
./lwip/test/unit/tcp/test_tcp_oos.o 

C_DEPS += \
./lwip/test/unit/tcp/tcp_helper.d \
./lwip/test/unit/tcp/test_tcp.d \
./lwip/test/unit/tcp/test_tcp_oos.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/test/unit/tcp/%.o lwip/test/unit/tcp/%.su: ../lwip/test/unit/tcp/%.c lwip/test/unit/tcp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/lwip" -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lwip-2f-test-2f-unit-2f-tcp

clean-lwip-2f-test-2f-unit-2f-tcp:
	-$(RM) ./lwip/test/unit/tcp/tcp_helper.d ./lwip/test/unit/tcp/tcp_helper.o ./lwip/test/unit/tcp/tcp_helper.su ./lwip/test/unit/tcp/test_tcp.d ./lwip/test/unit/tcp/test_tcp.o ./lwip/test/unit/tcp/test_tcp.su ./lwip/test/unit/tcp/test_tcp_oos.d ./lwip/test/unit/tcp/test_tcp_oos.o ./lwip/test/unit/tcp/test_tcp_oos.su

.PHONY: clean-lwip-2f-test-2f-unit-2f-tcp

