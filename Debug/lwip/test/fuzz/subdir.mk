################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/test/fuzz/fuzz.c \
../lwip/test/fuzz/fuzz2.c \
../lwip/test/fuzz/fuzz3.c \
../lwip/test/fuzz/fuzz_common.c 

OBJS += \
./lwip/test/fuzz/fuzz.o \
./lwip/test/fuzz/fuzz2.o \
./lwip/test/fuzz/fuzz3.o \
./lwip/test/fuzz/fuzz_common.o 

C_DEPS += \
./lwip/test/fuzz/fuzz.d \
./lwip/test/fuzz/fuzz2.d \
./lwip/test/fuzz/fuzz3.d \
./lwip/test/fuzz/fuzz_common.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/test/fuzz/%.o lwip/test/fuzz/%.su: ../lwip/test/fuzz/%.c lwip/test/fuzz/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/lwip" -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lwip-2f-test-2f-fuzz

clean-lwip-2f-test-2f-fuzz:
	-$(RM) ./lwip/test/fuzz/fuzz.d ./lwip/test/fuzz/fuzz.o ./lwip/test/fuzz/fuzz.su ./lwip/test/fuzz/fuzz2.d ./lwip/test/fuzz/fuzz2.o ./lwip/test/fuzz/fuzz2.su ./lwip/test/fuzz/fuzz3.d ./lwip/test/fuzz/fuzz3.o ./lwip/test/fuzz/fuzz3.su ./lwip/test/fuzz/fuzz_common.d ./lwip/test/fuzz/fuzz_common.o ./lwip/test/fuzz/fuzz_common.su

.PHONY: clean-lwip-2f-test-2f-fuzz

