################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/micro/kernels/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/micro/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/kernels/internal/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/kernels/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/core/api/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/tensorflow/lite/c/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/porting/stm32-cubeai/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/dsp/kissfft/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/dsp/image/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/dsp/dct/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/dsp/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/classifier/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/subdir.mk
-include Middlewares/Third_Party/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/subdir.mk
-include Drivers/STM32G4xx_HAL_Driver/Src/subdir.mk
-include Core/edge_impulse_model/tflite-model/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := IA_ADXL345
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
IA_ADXL345.elf \

MAP_FILES += \
IA_ADXL345.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
IA_ADXL345.list \


# All Target
all: main-build

# Main-build Target
main-build: IA_ADXL345.elf secondary-outputs

# Tool invocations
IA_ADXL345.elf IA_ADXL345.map: $(OBJS) $(USER_OBJS) /home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/STM32G474RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-g++ -o "IA_ADXL345.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/home/gustavo/STM32CubeIDE/workspace_1.10.1/IA_ADXL345/STM32G474RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="IA_ADXL345.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -u _printf_float -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

IA_ADXL345.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "IA_ADXL345.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) IA_ADXL345.elf IA_ADXL345.list IA_ADXL345.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
