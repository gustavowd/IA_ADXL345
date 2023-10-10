################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c 

C_DEPS += \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d 

OBJS += \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/%.o Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/%.su Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/%.cyclo: ../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/%.c Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Core/edge_impulse_model" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables:
	-$(RM) ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

