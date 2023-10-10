################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp \
../Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp 

OBJS += \
./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fft.o \
./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o 

CPP_DEPS += \
./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fft.d \
./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fftr.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/%.o Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/%.su Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/%.cyclo: ../Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/%.cpp Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/third_party/flatbuffers/include" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/third_party/gemmlowp" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/third_party/ruy" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Include" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Include" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party/edge-impulse-sdk/tensorflow" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Middlewares/Third_Party" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/Core/edge_impulse_model" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-dsp-2f-kissfft

clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-dsp-2f-kissfft:
	-$(RM) ./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fft.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fft.d ./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fft.o ./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fft.su ./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cyclo ./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fftr.d ./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o ./Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/kiss_fftr.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-edge-2d-impulse-2d-sdk-2f-dsp-2f-kissfft

