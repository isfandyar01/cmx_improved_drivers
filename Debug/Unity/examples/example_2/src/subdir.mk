################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Unity/examples/example_2/src/ProductionCode.c \
../Unity/examples/example_2/src/ProductionCode2.c 

OBJS += \
./Unity/examples/example_2/src/ProductionCode.o \
./Unity/examples/example_2/src/ProductionCode2.o 

C_DEPS += \
./Unity/examples/example_2/src/ProductionCode.d \
./Unity/examples/example_2/src/ProductionCode2.d 


# Each subdirectory must supply rules for building sources it contributes
Unity/examples/example_2/src/%.o Unity/examples/example_2/src/%.su: ../Unity/examples/example_2/src/%.c Unity/examples/example_2/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Unity-2f-examples-2f-example_2-2f-src

clean-Unity-2f-examples-2f-example_2-2f-src:
	-$(RM) ./Unity/examples/example_2/src/ProductionCode.d ./Unity/examples/example_2/src/ProductionCode.o ./Unity/examples/example_2/src/ProductionCode.su ./Unity/examples/example_2/src/ProductionCode2.d ./Unity/examples/example_2/src/ProductionCode2.o ./Unity/examples/example_2/src/ProductionCode2.su

.PHONY: clean-Unity-2f-examples-2f-example_2-2f-src

