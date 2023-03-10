################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/netif/bridgeif.c \
../src/netif/bridgeif_fdb.c \
../src/netif/ethernet.c \
../src/netif/lowpan6.c \
../src/netif/lowpan6_ble.c \
../src/netif/lowpan6_common.c \
../src/netif/slipif.c \
../src/netif/zepif.c 

OBJS += \
./src/netif/bridgeif.o \
./src/netif/bridgeif_fdb.o \
./src/netif/ethernet.o \
./src/netif/lowpan6.o \
./src/netif/lowpan6_ble.o \
./src/netif/lowpan6_common.o \
./src/netif/slipif.o \
./src/netif/zepif.o 

C_DEPS += \
./src/netif/bridgeif.d \
./src/netif/bridgeif_fdb.d \
./src/netif/ethernet.d \
./src/netif/lowpan6.d \
./src/netif/lowpan6_ble.d \
./src/netif/lowpan6_common.d \
./src/netif/slipif.d \
./src/netif/zepif.d 


# Each subdirectory must supply rules for building sources it contributes
src/netif/%.o src/netif/%.su: ../src/netif/%.c src/netif/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-src-2f-netif

clean-src-2f-netif:
	-$(RM) ./src/netif/bridgeif.d ./src/netif/bridgeif.o ./src/netif/bridgeif.su ./src/netif/bridgeif_fdb.d ./src/netif/bridgeif_fdb.o ./src/netif/bridgeif_fdb.su ./src/netif/ethernet.d ./src/netif/ethernet.o ./src/netif/ethernet.su ./src/netif/lowpan6.d ./src/netif/lowpan6.o ./src/netif/lowpan6.su ./src/netif/lowpan6_ble.d ./src/netif/lowpan6_ble.o ./src/netif/lowpan6_ble.su ./src/netif/lowpan6_common.d ./src/netif/lowpan6_common.o ./src/netif/lowpan6_common.su ./src/netif/slipif.d ./src/netif/slipif.o ./src/netif/slipif.su ./src/netif/zepif.d ./src/netif/zepif.o ./src/netif/zepif.su

.PHONY: clean-src-2f-netif

