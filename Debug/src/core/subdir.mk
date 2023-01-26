################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/core/altcp.c \
../src/core/altcp_alloc.c \
../src/core/altcp_tcp.c \
../src/core/def.c \
../src/core/dns.c \
../src/core/inet_chksum.c \
../src/core/init.c \
../src/core/ip.c \
../src/core/mem.c \
../src/core/memp.c \
../src/core/netif.c \
../src/core/pbuf.c \
../src/core/raw.c \
../src/core/stats.c \
../src/core/sys.c \
../src/core/tcp.c \
../src/core/tcp_in.c \
../src/core/tcp_out.c \
../src/core/timeouts.c \
../src/core/udp.c 

OBJS += \
./src/core/altcp.o \
./src/core/altcp_alloc.o \
./src/core/altcp_tcp.o \
./src/core/def.o \
./src/core/dns.o \
./src/core/inet_chksum.o \
./src/core/init.o \
./src/core/ip.o \
./src/core/mem.o \
./src/core/memp.o \
./src/core/netif.o \
./src/core/pbuf.o \
./src/core/raw.o \
./src/core/stats.o \
./src/core/sys.o \
./src/core/tcp.o \
./src/core/tcp_in.o \
./src/core/tcp_out.o \
./src/core/timeouts.o \
./src/core/udp.o 

C_DEPS += \
./src/core/altcp.d \
./src/core/altcp_alloc.d \
./src/core/altcp_tcp.d \
./src/core/def.d \
./src/core/dns.d \
./src/core/inet_chksum.d \
./src/core/init.d \
./src/core/ip.d \
./src/core/mem.d \
./src/core/memp.d \
./src/core/netif.d \
./src/core/pbuf.d \
./src/core/raw.d \
./src/core/stats.d \
./src/core/sys.d \
./src/core/tcp.d \
./src/core/tcp_in.d \
./src/core/tcp_out.d \
./src/core/timeouts.d \
./src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
src/core/%.o src/core/%.su: ../src/core/%.c src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"/CMX_AUDIO_Codec_drivers_2.0-main/lwip/src/include/lwip" -I"D:/Rapi_dev_isf/workspaces/cubeide_workspace/CMX_AUDIO_Codec_drivers_2.0-main/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-src-2f-core

clean-src-2f-core:
	-$(RM) ./src/core/altcp.d ./src/core/altcp.o ./src/core/altcp.su ./src/core/altcp_alloc.d ./src/core/altcp_alloc.o ./src/core/altcp_alloc.su ./src/core/altcp_tcp.d ./src/core/altcp_tcp.o ./src/core/altcp_tcp.su ./src/core/def.d ./src/core/def.o ./src/core/def.su ./src/core/dns.d ./src/core/dns.o ./src/core/dns.su ./src/core/inet_chksum.d ./src/core/inet_chksum.o ./src/core/inet_chksum.su ./src/core/init.d ./src/core/init.o ./src/core/init.su ./src/core/ip.d ./src/core/ip.o ./src/core/ip.su ./src/core/mem.d ./src/core/mem.o ./src/core/mem.su ./src/core/memp.d ./src/core/memp.o ./src/core/memp.su ./src/core/netif.d ./src/core/netif.o ./src/core/netif.su ./src/core/pbuf.d ./src/core/pbuf.o ./src/core/pbuf.su ./src/core/raw.d ./src/core/raw.o ./src/core/raw.su ./src/core/stats.d ./src/core/stats.o ./src/core/stats.su ./src/core/sys.d ./src/core/sys.o ./src/core/sys.su ./src/core/tcp.d ./src/core/tcp.o ./src/core/tcp.su ./src/core/tcp_in.d ./src/core/tcp_in.o ./src/core/tcp_in.su ./src/core/tcp_out.d ./src/core/tcp_out.o ./src/core/tcp_out.su ./src/core/timeouts.d ./src/core/timeouts.o ./src/core/timeouts.su ./src/core/udp.d ./src/core/udp.o ./src/core/udp.su

.PHONY: clean-src-2f-core

