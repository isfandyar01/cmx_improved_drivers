################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/test/unit/core/test_def.c \
../lwip/test/unit/core/test_dns.c \
../lwip/test/unit/core/test_mem.c \
../lwip/test/unit/core/test_netif.c \
../lwip/test/unit/core/test_pbuf.c \
../lwip/test/unit/core/test_timers.c 

OBJS += \
./lwip/test/unit/core/test_def.o \
./lwip/test/unit/core/test_dns.o \
./lwip/test/unit/core/test_mem.o \
./lwip/test/unit/core/test_netif.o \
./lwip/test/unit/core/test_pbuf.o \
./lwip/test/unit/core/test_timers.o 

C_DEPS += \
./lwip/test/unit/core/test_def.d \
./lwip/test/unit/core/test_dns.d \
./lwip/test/unit/core/test_mem.d \
./lwip/test/unit/core/test_netif.d \
./lwip/test/unit/core/test_pbuf.d \
./lwip/test/unit/core/test_timers.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/test/unit/core/%.o lwip/test/unit/core/%.su: ../lwip/test/unit/core/%.c lwip/test/unit/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/lwip" -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lwip-2f-test-2f-unit-2f-core

clean-lwip-2f-test-2f-unit-2f-core:
	-$(RM) ./lwip/test/unit/core/test_def.d ./lwip/test/unit/core/test_def.o ./lwip/test/unit/core/test_def.su ./lwip/test/unit/core/test_dns.d ./lwip/test/unit/core/test_dns.o ./lwip/test/unit/core/test_dns.su ./lwip/test/unit/core/test_mem.d ./lwip/test/unit/core/test_mem.o ./lwip/test/unit/core/test_mem.su ./lwip/test/unit/core/test_netif.d ./lwip/test/unit/core/test_netif.o ./lwip/test/unit/core/test_netif.su ./lwip/test/unit/core/test_pbuf.d ./lwip/test/unit/core/test_pbuf.o ./lwip/test/unit/core/test_pbuf.su ./lwip/test/unit/core/test_timers.d ./lwip/test/unit/core/test_timers.o ./lwip/test/unit/core/test_timers.su

.PHONY: clean-lwip-2f-test-2f-unit-2f-core

