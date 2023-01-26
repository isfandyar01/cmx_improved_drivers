################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/netif/ppp/polarssl/arc4.c \
../src/netif/ppp/polarssl/des.c \
../src/netif/ppp/polarssl/md4.c \
../src/netif/ppp/polarssl/md5.c \
../src/netif/ppp/polarssl/sha1.c 

OBJS += \
./src/netif/ppp/polarssl/arc4.o \
./src/netif/ppp/polarssl/des.o \
./src/netif/ppp/polarssl/md4.o \
./src/netif/ppp/polarssl/md5.o \
./src/netif/ppp/polarssl/sha1.o 

C_DEPS += \
./src/netif/ppp/polarssl/arc4.d \
./src/netif/ppp/polarssl/des.d \
./src/netif/ppp/polarssl/md4.d \
./src/netif/ppp/polarssl/md5.d \
./src/netif/ppp/polarssl/sha1.d 


# Each subdirectory must supply rules for building sources it contributes
src/netif/ppp/polarssl/%.o src/netif/ppp/polarssl/%.su: ../src/netif/ppp/polarssl/%.c src/netif/ppp/polarssl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-src-2f-netif-2f-ppp-2f-polarssl

clean-src-2f-netif-2f-ppp-2f-polarssl:
	-$(RM) ./src/netif/ppp/polarssl/arc4.d ./src/netif/ppp/polarssl/arc4.o ./src/netif/ppp/polarssl/arc4.su ./src/netif/ppp/polarssl/des.d ./src/netif/ppp/polarssl/des.o ./src/netif/ppp/polarssl/des.su ./src/netif/ppp/polarssl/md4.d ./src/netif/ppp/polarssl/md4.o ./src/netif/ppp/polarssl/md4.su ./src/netif/ppp/polarssl/md5.d ./src/netif/ppp/polarssl/md5.o ./src/netif/ppp/polarssl/md5.su ./src/netif/ppp/polarssl/sha1.d ./src/netif/ppp/polarssl/sha1.o ./src/netif/ppp/polarssl/sha1.su

.PHONY: clean-src-2f-netif-2f-ppp-2f-polarssl

