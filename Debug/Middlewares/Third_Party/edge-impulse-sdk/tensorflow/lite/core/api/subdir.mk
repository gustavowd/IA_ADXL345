################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/common.cc \
../Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc \
../Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc \
../Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc \
../Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc 

CC_DEPS += \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/common.d \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.d \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.d \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.d \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.d 

OBJS += \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/common.o \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o \
./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/%.o Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/%.su Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/%.cyclo: ../Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/%.cc Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/third_party/flatbuffers/include" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/third_party/gemmlowp" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/third_party/ruy" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Include" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Include" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/tensorflow" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Core/edge_impulse_model" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-tensorflow-2f-lite-2f-core-2f-api

clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-tensorflow-2f-lite-2f-core-2f-api:
	-$(RM) ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/common.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/common.d ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/common.o ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/common.su ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.d ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.su ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.d ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.su ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.d ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.su ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.d ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o ./Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-tensorflow-2f-lite-2f-core-2f-api

