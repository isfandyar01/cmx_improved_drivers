################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Unity/test/expectdata/testsample_cmd.c \
../Unity/test/expectdata/testsample_def.c \
../Unity/test/expectdata/testsample_head1.c \
../Unity/test/expectdata/testsample_mock_cmd.c \
../Unity/test/expectdata/testsample_mock_def.c \
../Unity/test/expectdata/testsample_mock_head1.c \
../Unity/test/expectdata/testsample_mock_new1.c \
../Unity/test/expectdata/testsample_mock_new2.c \
../Unity/test/expectdata/testsample_mock_param.c \
../Unity/test/expectdata/testsample_mock_run1.c \
../Unity/test/expectdata/testsample_mock_run2.c \
../Unity/test/expectdata/testsample_mock_yaml.c \
../Unity/test/expectdata/testsample_new1.c \
../Unity/test/expectdata/testsample_new2.c \
../Unity/test/expectdata/testsample_param.c \
../Unity/test/expectdata/testsample_run1.c \
../Unity/test/expectdata/testsample_run2.c \
../Unity/test/expectdata/testsample_yaml.c 

OBJS += \
./Unity/test/expectdata/testsample_cmd.o \
./Unity/test/expectdata/testsample_def.o \
./Unity/test/expectdata/testsample_head1.o \
./Unity/test/expectdata/testsample_mock_cmd.o \
./Unity/test/expectdata/testsample_mock_def.o \
./Unity/test/expectdata/testsample_mock_head1.o \
./Unity/test/expectdata/testsample_mock_new1.o \
./Unity/test/expectdata/testsample_mock_new2.o \
./Unity/test/expectdata/testsample_mock_param.o \
./Unity/test/expectdata/testsample_mock_run1.o \
./Unity/test/expectdata/testsample_mock_run2.o \
./Unity/test/expectdata/testsample_mock_yaml.o \
./Unity/test/expectdata/testsample_new1.o \
./Unity/test/expectdata/testsample_new2.o \
./Unity/test/expectdata/testsample_param.o \
./Unity/test/expectdata/testsample_run1.o \
./Unity/test/expectdata/testsample_run2.o \
./Unity/test/expectdata/testsample_yaml.o 

C_DEPS += \
./Unity/test/expectdata/testsample_cmd.d \
./Unity/test/expectdata/testsample_def.d \
./Unity/test/expectdata/testsample_head1.d \
./Unity/test/expectdata/testsample_mock_cmd.d \
./Unity/test/expectdata/testsample_mock_def.d \
./Unity/test/expectdata/testsample_mock_head1.d \
./Unity/test/expectdata/testsample_mock_new1.d \
./Unity/test/expectdata/testsample_mock_new2.d \
./Unity/test/expectdata/testsample_mock_param.d \
./Unity/test/expectdata/testsample_mock_run1.d \
./Unity/test/expectdata/testsample_mock_run2.d \
./Unity/test/expectdata/testsample_mock_yaml.d \
./Unity/test/expectdata/testsample_new1.d \
./Unity/test/expectdata/testsample_new2.d \
./Unity/test/expectdata/testsample_param.d \
./Unity/test/expectdata/testsample_run1.d \
./Unity/test/expectdata/testsample_run2.d \
./Unity/test/expectdata/testsample_yaml.d 


# Each subdirectory must supply rules for building sources it contributes
Unity/test/expectdata/%.o Unity/test/expectdata/%.su: ../Unity/test/expectdata/%.c Unity/test/expectdata/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/Unity/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Unity-2f-test-2f-expectdata

clean-Unity-2f-test-2f-expectdata:
	-$(RM) ./Unity/test/expectdata/testsample_cmd.d ./Unity/test/expectdata/testsample_cmd.o ./Unity/test/expectdata/testsample_cmd.su ./Unity/test/expectdata/testsample_def.d ./Unity/test/expectdata/testsample_def.o ./Unity/test/expectdata/testsample_def.su ./Unity/test/expectdata/testsample_head1.d ./Unity/test/expectdata/testsample_head1.o ./Unity/test/expectdata/testsample_head1.su ./Unity/test/expectdata/testsample_mock_cmd.d ./Unity/test/expectdata/testsample_mock_cmd.o ./Unity/test/expectdata/testsample_mock_cmd.su ./Unity/test/expectdata/testsample_mock_def.d ./Unity/test/expectdata/testsample_mock_def.o ./Unity/test/expectdata/testsample_mock_def.su ./Unity/test/expectdata/testsample_mock_head1.d ./Unity/test/expectdata/testsample_mock_head1.o ./Unity/test/expectdata/testsample_mock_head1.su ./Unity/test/expectdata/testsample_mock_new1.d ./Unity/test/expectdata/testsample_mock_new1.o ./Unity/test/expectdata/testsample_mock_new1.su ./Unity/test/expectdata/testsample_mock_new2.d ./Unity/test/expectdata/testsample_mock_new2.o ./Unity/test/expectdata/testsample_mock_new2.su ./Unity/test/expectdata/testsample_mock_param.d ./Unity/test/expectdata/testsample_mock_param.o ./Unity/test/expectdata/testsample_mock_param.su ./Unity/test/expectdata/testsample_mock_run1.d ./Unity/test/expectdata/testsample_mock_run1.o ./Unity/test/expectdata/testsample_mock_run1.su ./Unity/test/expectdata/testsample_mock_run2.d ./Unity/test/expectdata/testsample_mock_run2.o ./Unity/test/expectdata/testsample_mock_run2.su ./Unity/test/expectdata/testsample_mock_yaml.d ./Unity/test/expectdata/testsample_mock_yaml.o ./Unity/test/expectdata/testsample_mock_yaml.su ./Unity/test/expectdata/testsample_new1.d ./Unity/test/expectdata/testsample_new1.o ./Unity/test/expectdata/testsample_new1.su ./Unity/test/expectdata/testsample_new2.d ./Unity/test/expectdata/testsample_new2.o ./Unity/test/expectdata/testsample_new2.su ./Unity/test/expectdata/testsample_param.d ./Unity/test/expectdata/testsample_param.o ./Unity/test/expectdata/testsample_param.su ./Unity/test/expectdata/testsample_run1.d ./Unity/test/expectdata/testsample_run1.o ./Unity/test/expectdata/testsample_run1.su ./Unity/test/expectdata/testsample_run2.d ./Unity/test/expectdata/testsample_run2.o ./Unity/test/expectdata/testsample_run2.su ./Unity/test/expectdata/testsample_yaml.d ./Unity/test/expectdata/testsample_yaml.o ./Unity/test/expectdata/testsample_yaml.su

.PHONY: clean-Unity-2f-test-2f-expectdata

