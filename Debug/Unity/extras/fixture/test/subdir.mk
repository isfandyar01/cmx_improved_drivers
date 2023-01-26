################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Unity/extras/fixture/test/template_fixture_tests.c \
../Unity/extras/fixture/test/unity_fixture_Test.c \
../Unity/extras/fixture/test/unity_fixture_TestRunner.c 

OBJS += \
./Unity/extras/fixture/test/template_fixture_tests.o \
./Unity/extras/fixture/test/unity_fixture_Test.o \
./Unity/extras/fixture/test/unity_fixture_TestRunner.o 

C_DEPS += \
./Unity/extras/fixture/test/template_fixture_tests.d \
./Unity/extras/fixture/test/unity_fixture_Test.d \
./Unity/extras/fixture/test/unity_fixture_TestRunner.d 


# Each subdirectory must supply rules for building sources it contributes
Unity/extras/fixture/test/%.o Unity/extras/fixture/test/%.su: ../Unity/extras/fixture/test/%.c Unity/extras/fixture/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Unity-2f-extras-2f-fixture-2f-test

clean-Unity-2f-extras-2f-fixture-2f-test:
	-$(RM) ./Unity/extras/fixture/test/template_fixture_tests.d ./Unity/extras/fixture/test/template_fixture_tests.o ./Unity/extras/fixture/test/template_fixture_tests.su ./Unity/extras/fixture/test/unity_fixture_Test.d ./Unity/extras/fixture/test/unity_fixture_Test.o ./Unity/extras/fixture/test/unity_fixture_Test.su ./Unity/extras/fixture/test/unity_fixture_TestRunner.d ./Unity/extras/fixture/test/unity_fixture_TestRunner.o ./Unity/extras/fixture/test/unity_fixture_TestRunner.su

.PHONY: clean-Unity-2f-extras-2f-fixture-2f-test

