################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/system/OS/sys_arch.c 

OBJS += \
./src/system/OS/sys_arch.o 

C_DEPS += \
./src/system/OS/sys_arch.d 


# Each subdirectory must supply rules for building sources it contributes
src/system/OS/%.o src/system/OS/%.su: ../src/system/OS/%.c src/system/OS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-src-2f-system-2f-OS

clean-src-2f-system-2f-OS:
	-$(RM) ./src/system/OS/sys_arch.d ./src/system/OS/sys_arch.o ./src/system/OS/sys_arch.su

.PHONY: clean-src-2f-system-2f-OS

