################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Unity/test/testdata/testRunnerGenerator.c \
../Unity/test/testdata/testRunnerGeneratorSmall.c \
../Unity/test/testdata/testRunnerGeneratorWithMocks.c 

OBJS += \
./Unity/test/testdata/testRunnerGenerator.o \
./Unity/test/testdata/testRunnerGeneratorSmall.o \
./Unity/test/testdata/testRunnerGeneratorWithMocks.o 

C_DEPS += \
./Unity/test/testdata/testRunnerGenerator.d \
./Unity/test/testdata/testRunnerGeneratorSmall.d \
./Unity/test/testdata/testRunnerGeneratorWithMocks.d 


# Each subdirectory must supply rules for building sources it contributes
Unity/test/testdata/%.o Unity/test/testdata/%.su: ../Unity/test/testdata/%.c Unity/test/testdata/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Unity-2f-test-2f-testdata

clean-Unity-2f-test-2f-testdata:
	-$(RM) ./Unity/test/testdata/testRunnerGenerator.d ./Unity/test/testdata/testRunnerGenerator.o ./Unity/test/testdata/testRunnerGenerator.su ./Unity/test/testdata/testRunnerGeneratorSmall.d ./Unity/test/testdata/testRunnerGeneratorSmall.o ./Unity/test/testdata/testRunnerGeneratorSmall.su ./Unity/test/testdata/testRunnerGeneratorWithMocks.d ./Unity/test/testdata/testRunnerGeneratorWithMocks.o ./Unity/test/testdata/testRunnerGeneratorWithMocks.su

.PHONY: clean-Unity-2f-test-2f-testdata

