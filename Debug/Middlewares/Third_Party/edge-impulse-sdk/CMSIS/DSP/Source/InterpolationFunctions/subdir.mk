################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c \
../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c 

C_DEPS += \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.d \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.d 

OBJS += \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o \
./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/%.o Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/%.su Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/%.cyclo: ../Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/%.c Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Core/edge_impulse_model" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-InterpolationFunctions

clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-InterpolationFunctions:
	-$(RM) ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.su ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.d ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o ./Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-CMSIS-2f-DSP-2f-Source-2f-InterpolationFunctions
