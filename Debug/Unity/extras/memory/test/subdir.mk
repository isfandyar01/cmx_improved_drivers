################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Unity/extras/memory/test/unity_memory_Test.c \
../Unity/extras/memory/test/unity_memory_TestRunner.c \
../Unity/extras/memory/test/unity_output_Spy.c 

OBJS += \
./Unity/extras/memory/test/unity_memory_Test.o \
./Unity/extras/memory/test/unity_memory_TestRunner.o \
./Unity/extras/memory/test/unity_output_Spy.o 

C_DEPS += \
./Unity/extras/memory/test/unity_memory_Test.d \
./Unity/extras/memory/test/unity_memory_TestRunner.d \
./Unity/extras/memory/test/unity_output_Spy.d 


# Each subdirectory must supply rules for building sources it contributes
Unity/extras/memory/test/%.o Unity/extras/memory/test/%.su: ../Unity/extras/memory/test/%.c Unity/extras/memory/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Unity-2f-extras-2f-memory-2f-test

clean-Unity-2f-extras-2f-memory-2f-test:
	-$(RM) ./Unity/extras/memory/test/unity_memory_Test.d ./Unity/extras/memory/test/unity_memory_Test.o ./Unity/extras/memory/test/unity_memory_Test.su ./Unity/extras/memory/test/unity_memory_TestRunner.d ./Unity/extras/memory/test/unity_memory_TestRunner.o ./Unity/extras/memory/test/unity_memory_TestRunner.su ./Unity/extras/memory/test/unity_output_Spy.d ./Unity/extras/memory/test/unity_output_Spy.o ./Unity/extras/memory/test/unity_output_Spy.su

.PHONY: clean-Unity-2f-extras-2f-memory-2f-test

