################################################################################
# Automatically-generated file. Do not edit!
################################################################################

ifdef SystemRoot
	SHELL = cmd.exe
	MK_DIR = mkdir
else
	ifeq ($(shell uname), Linux)
		MK_DIR = mkdir -p
	endif

	ifeq ($(shell uname | cut -d _ -f 1), CYGWIN)
		MK_DIR = mkdir -p
	endif

	ifeq ($(shell uname | cut -d _ -f 1), MINGW32)
		MK_DIR = mkdir -p
	endif

	ifeq ($(shell uname | cut -d _ -f 1), MINGW64)
		MK_DIR = mkdir -p
	endif
endif

# List the subdirectories for creating object files
SUB_DIRS += \
gcc \
hal/hpl/core \
hal/src \
utils/src \
hal/hpl/pm \
hal/hpl/gclk \
hal/hpl/sysctrl \
hal/hpl/port \
hal/hpl/dmac \
hal/hpl/sercom \
gcc/gcc \
hal/hpl/adc

# List the object files
OBJS += \
hal/hpl/gclk/hpl_gclk1_v210_base.o \
main.o \
hal/hpl/port/hpl_port_v100.o \
utils/src/utils_assert.o \
hal/src/hal_adc_async.o \
hal/hpl/core/hpl_init.o \
hal/hpl/sercom/hpl_sercom_v200.o \
utils/src/utils_list.o \
hal/hpl/pm/hpl_pm1_v211c.o \
hal/hpl/adc/hpl_adc1_v120.o \
hal/src/hal_gpio.o \
hal/src/hal_init.o \
utils/src/utils_event.o \
hal/src/hal_delay.o \
hal/hpl/sysctrl/hpl_sysctrl_v202.o \
utils/src/utils_syscalls.o \
atmel_start.o \
hal/src/hal_atomic.o \
gcc/gcc/startup_samd09.o \
hal/src/hal_io.o \
hal/hpl/core/hpl_core_m0plus_base.o \
utils/src/utils_ringbuffer.o \
hal/src/hal_usart_async.o \
gcc/system_samd09.o

OBJS_AS_ARGS += \
"hal/hpl/gclk/hpl_gclk1_v210_base.o" \
"main.o" \
"hal/hpl/port/hpl_port_v100.o" \
"utils/src/utils_assert.o" \
"hal/src/hal_adc_async.o" \
"hal/hpl/core/hpl_init.o" \
"hal/hpl/sercom/hpl_sercom_v200.o" \
"utils/src/utils_list.o" \
"hal/hpl/pm/hpl_pm1_v211c.o" \
"hal/hpl/adc/hpl_adc1_v120.o" \
"hal/src/hal_gpio.o" \
"hal/src/hal_init.o" \
"utils/src/utils_event.o" \
"hal/src/hal_delay.o" \
"hal/hpl/sysctrl/hpl_sysctrl_v202.o" \
"utils/src/utils_syscalls.o" \
"atmel_start.o" \
"hal/src/hal_atomic.o" \
"gcc/gcc/startup_samd09.o" \
"hal/src/hal_io.o" \
"hal/hpl/core/hpl_core_m0plus_base.o" \
"utils/src/utils_ringbuffer.o" \
"hal/src/hal_usart_async.o" \
"gcc/system_samd09.o"

# List the dependency files
DEPS := $(OBJS:%.o=%.d)

DEPS_AS_ARGS += \
"hal/hpl/gclk/hpl_gclk1_v210_base.d" \
"main.d" \
"hal/hpl/port/hpl_port_v100.d" \
"utils/src/utils_assert.d" \
"hal/src/hal_adc_async.d" \
"hal/hpl/core/hpl_init.d" \
"hal/hpl/sercom/hpl_sercom_v200.d" \
"utils/src/utils_list.d" \
"hal/hpl/pm/hpl_pm1_v211c.d" \
"hal/hpl/adc/hpl_adc1_v120.d" \
"hal/hpl/dmac/hpl_dmac_v100_base.d" \
"hal/src/hal_gpio.d" \
"hal/src/hal_init.d" \
"utils/src/utils_event.d" \
"hal/src/hal_delay.d" \
"hal/hpl/sysctrl/hpl_sysctrl_v202.d" \
"utils/src/utils_syscalls.d" \
"atmel_start.d" \
"hal/src/hal_atomic.d" \
"gcc/gcc/startup_samd09.d" \
"hal/src/hal_io.d" \
"hal/hpl/core/hpl_core_m0plus_base.d" \
"utils/src/utils_ringbuffer.d" \
"hal/src/hal_usart_async.d" \
"gcc/system_samd09.d"

OUTPUT_FILE_NAME :=AtmelStart
QUOTE := "
OUTPUT_FILE_PATH +=$(OUTPUT_FILE_NAME).elf
OUTPUT_FILE_PATH_AS_ARGS +=$(OUTPUT_FILE_NAME).elf

vpath %.c ../

# All Target
all: $(SUB_DIRS) $(OUTPUT_FILE_PATH)

# Linker target
$(OUTPUT_FILE_PATH): $(OBJS)
	@echo Building target: $@
	@echo Invoking:ARM/GNU Linker
	$(QUOTE)arm-none-eabi-gcc$(QUOTE)  -o $(OUTPUT_FILE_NAME).elf $(OBJS_AS_ARGS) -Wl,--start-group -lm  -Wl,--end-group  -mthumb -Wl,-Map="$(OUTPUT_FILE_NAME).map" --specs=nano.specs -Wl,--gc-sections -T"../gcc/gcc/samd09d14a_flash.ld" -L"../gcc/gcc" -mcpu=cortex-m0plus
	@echo Finished building target: $@

	"arm-none-eabi-objcopy" -O binary "$(OUTPUT_FILE_NAME).elf" "$(OUTPUT_FILE_NAME).bin" 
	"arm-none-eabi-objcopy" -O ihex -R .eeprom -R .fuse -R .lock -R .signature  "$(OUTPUT_FILE_NAME).elf" "$(OUTPUT_FILE_NAME).hex"
	"arm-none-eabi-objcopy" -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O binary "$(OUTPUT_FILE_NAME).elf" "$(OUTPUT_FILE_NAME).eep" || exit 0
	"arm-none-eabi-objdump" -h -S "$(OUTPUT_FILE_NAME).elf" > "$(OUTPUT_FILE_NAME).lss"
	"arm-none-eabi-size" "$(OUTPUT_FILE_NAME).elf"

# Compiler target(s)

%.o: %.c
	@echo Building file: $<
	@echo ARM/GNU C Compiler
	$(QUOTE)arm-none-eabi-gcc$(QUOTE) -x c -mthumb  -D__SAMD09D14A__ -DDEBUG -O1 -ffunction-sections -mlong-calls -g3 -Werror -c -std=gnu99  -I"../" -I"../hal/hri" -I"../hal/hpl/gclk" -I"../hal/include" -I"../hal/hpl/include" -I"../hal/hpl/dmac" -I"../CMSIS/Include/" -I"../hal/hpl/sysctrl" -I"../include" -I"../config" -I"../hal/hpl/core" -I"../hal/hpl/port" -I"../hal/hpl/pm" -I"../hal/hpl/adc" -I"../hal/hpl/sercom" -I"../utils/include" -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"  -o "$@" "$<" -mcpu=cortex-m0plus
	@echo Finished building: $<


# Detect changes in the dependent files and recompile the respective object files.
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(DEPS)),)
-include $(DEPS)
endif
endif

$(SUB_DIRS):
	$(MK_DIR) "$@"

clean:
	rm -f $(OBJS_AS_ARGS)
	rm -f $(OUTPUT_FILE_PATH)
	rm -f $(DEPS_AS_ARGS)
	rm -f $(OUTPUT_FILE_NAME).a $(OUTPUT_FILE_NAME).hex $(OUTPUT_FILE_NAME).bin $(OUTPUT_FILE_NAME).lss $(OUTPUT_FILE_NAME).eep $(OUTPUT_FILE_NAME).map $(OUTPUT_FILE_NAME).srec

flash: AtmelStart.bin
	openocd -f atsamd09.cfg -c "program $< verify reset exit"
