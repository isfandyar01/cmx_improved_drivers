################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Unity/test/tests/test_unity_arrays.c \
../Unity/test/tests/test_unity_core.c \
../Unity/test/tests/test_unity_doubles.c \
../Unity/test/tests/test_unity_floats.c \
../Unity/test/tests/test_unity_integers.c \
../Unity/test/tests/test_unity_integers_64.c \
../Unity/test/tests/test_unity_memory.c \
../Unity/test/tests/test_unity_parameterized.c \
../Unity/test/tests/test_unity_parameterizedDemo.c \
../Unity/test/tests/test_unity_strings.c 

OBJS += \
./Unity/test/tests/test_unity_arrays.o \
./Unity/test/tests/test_unity_core.o \
./Unity/test/tests/test_unity_doubles.o \
./Unity/test/tests/test_unity_floats.o \
./Unity/test/tests/test_unity_integers.o \
./Unity/test/tests/test_unity_integers_64.o \
./Unity/test/tests/test_unity_memory.o \
./Unity/test/tests/test_unity_parameterized.o \
./Unity/test/tests/test_unity_parameterizedDemo.o \
./Unity/test/tests/test_unity_strings.o 

C_DEPS += \
./Unity/test/tests/test_unity_arrays.d \
./Unity/test/tests/test_unity_core.d \
./Unity/test/tests/test_unity_doubles.d \
./Unity/test/tests/test_unity_floats.d \
./Unity/test/tests/test_unity_integers.d \
./Unity/test/tests/test_unity_integers_64.d \
./Unity/test/tests/test_unity_memory.d \
./Unity/test/tests/test_unity_parameterized.d \
./Unity/test/tests/test_unity_parameterizedDemo.d \
./Unity/test/tests/test_unity_strings.d 


# Each subdirectory must supply rules for building sources it contributes
Unity/test/tests/%.o Unity/test/tests/%.su: ../Unity/test/tests/%.c Unity/test/tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Unity-2f-test-2f-tests

clean-Unity-2f-test-2f-tests:
	-$(RM) ./Unity/test/tests/test_unity_arrays.d ./Unity/test/tests/test_unity_arrays.o ./Unity/test/tests/test_unity_arrays.su ./Unity/test/tests/test_unity_core.d ./Unity/test/tests/test_unity_core.o ./Unity/test/tests/test_unity_core.su ./Unity/test/tests/test_unity_doubles.d ./Unity/test/tests/test_unity_doubles.o ./Unity/test/tests/test_unity_doubles.su ./Unity/test/tests/test_unity_floats.d ./Unity/test/tests/test_unity_floats.o ./Unity/test/tests/test_unity_floats.su ./Unity/test/tests/test_unity_integers.d ./Unity/test/tests/test_unity_integers.o ./Unity/test/tests/test_unity_integers.su ./Unity/test/tests/test_unity_integers_64.d ./Unity/test/tests/test_unity_integers_64.o ./Unity/test/tests/test_unity_integers_64.su ./Unity/test/tests/test_unity_memory.d ./Unity/test/tests/test_unity_memory.o ./Unity/test/tests/test_unity_memory.su ./Unity/test/tests/test_unity_parameterized.d ./Unity/test/tests/test_unity_parameterized.o ./Unity/test/tests/test_unity_parameterized.su ./Unity/test/tests/test_unity_parameterizedDemo.d ./Unity/test/tests/test_unity_parameterizedDemo.o ./Unity/test/tests/test_unity_parameterizedDemo.su ./Unity/test/tests/test_unity_strings.d ./Unity/test/tests/test_unity_strings.o ./Unity/test/tests/test_unity_strings.su

.PHONY: clean-Unity-2f-test-2f-tests

