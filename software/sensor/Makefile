

############################################################################
###
###  LEDController
###  Makefile
###
###  Yatekii
###                  
############################################################################

TARGET  		= firmware-sensor
ARCH			= armv6-m
MCU     		= cortex-m0plus
CHIP			= SAMD09D14A
SPECS 			= nano.specs
STD 			= c11
TOOLCHAIN 		= arm-none-eabi-
CC				= gcc
OPTIMIZATION	= -O2
CFLAGS			= -mthumb -march=$(ARCH) -mtune=$(MCU) -std=$(STD) $(OPTIMIZATION)
CFLAGS			+=\
					-D __$(CHIP)__\
					-D BOARD=USER_BOARD\
					-D ARM_MATH_CM0PLUS=true\
					-D SPI_CALLBACK_MODE=true

# Config directories and files. Please do adjust here!

INCDIR 			= include
SRCDIR 			= src
OBJDIR 			= obj
BINDIR 			= bin

# Include headers from the following dirs
INCDIR_EXTERN	= \
					common/utils\
					sam0/drivers/port\
					sam0/drivers/sercom\
					sam0/drivers/sercom/spi\
					sam0/drivers/system\
					sam0/drivers/system/clock\
					sam0/drivers/system/clock/clock_samd09_d10_d11\
					sam0/drivers/system/clock/clock_samd09_d10_d11/module_config/\
					sam0/drivers/system/interrupt\
					sam0/drivers/system/interrupt/system_interrupt_samd09\
					sam0/drivers/system/pinmux\
					sam0/drivers/system/power\
					sam0/drivers/system/power/power_sam_d_r\
					sam0/drivers/system/reset\
					sam0/drivers/system/reset/reset_sam_d_r\
					sam0/utils\
					sam0/utils/header_files\
					sam0/utils/preprocessor\
					sam0/utils/cmsis/samd09/include\
					sam0/utils/cmsis/samd09/source\
					thirdparty/CMSIS/Include\
					thirdparty/CMSIS/Lib/GCC
# Prefix external source files with this dir
SRCDIR_EXTERN	=

# Include libraries from the following dirs
LIBDIR_EXTERN	= \
					thirdparty/CMSIS/Lib/GCC
# Project sources
CSRCS 			= \
					main.c\
					led.c
# Framework sources
CSRCS_EXTERN 	= \
					common/utils/interrupt/interrupt_sam_nvic.c\
					sam0/drivers/port/port.c\
					sam0/drivers/sercom/sercom.c\
					sam0/drivers/sercom/sercom_interrupt.c\
					sam0/drivers/sercom/spi/spi.c\
					sam0/drivers/sercom/spi/spi_interrupt.c\
					sam0/drivers/system/clock/clock_samd09_d10_d11/clock.c\
					sam0/drivers/system/clock/clock_samd09_d10_d11/gclk.c\
					sam0/drivers/system/interrupt/system_interrupt.c\
					sam0/drivers/system/pinmux/pinmux.c\
					sam0/drivers/system/system.c\
					sam0/utils/cmsis/samd09/source/gcc/startup_samd09.c\
					sam0/utils/cmsis/samd09/source/system_samd09.c
# External libraries
LIBS 			= \
					arm_cortexM0l_math

LINKER_SCRIPT 	= \
					sam0/utils/linker_scripts/samd09/gcc/samd09d14a_flash.ld

# Generated names, please do not change!
# DO NOT CHANGE CODE BELOW THIS LINE #

# Source files required with full prefixed path
SRCS 			+= $(addprefix $(SRCDIR)/,$(CSRCS))
SRCS 			+= $(addprefix $(SRCDIR_EXTERN)/,$(CSRCS_EXTERN))

# Object file names with stripped path and prefixed OBJDIR
OBJS 			= $(addprefix $(OBJDIR)/,$(addsuffix .o,$(basename $(CSRCS))))
OBJS 			+= $(addprefix $(OBJDIR)/,$(addsuffix .o,$(basename $(CSRCS_EXTERN))))

# Flags for compiler and linker
CFLAGS			+= -I$(INCDIR)
CFLAGS			+= $(foreach INC, $(INCDIR_EXTERN),-I$(INC))
LDFLAGS			+= -Wl,-Map="$(TARGET).map"
LDFLAGS			+= -specs=$(SPECS)
LDFLAGS			+= -Wl,--start-group
LDFLAGS         += $(foreach LIB,$(LIBS),-l$(LIB))
LDFLAGS			+= -lm
LDFLAGS			+= -Wl,--end-group
LDFLAGS 		+= $(foreach LIB,$(LIBDIR_EXTERN),-L$(LIB))
LDFLAGS			+= -Wl,--gc-sections
LDFLAGS			+= -mcpu=$(MCU)
LDFLAGS			+= -Wl,--entry=Reset_Handler
LDFLAGS			+= -T $(LINKER_SCRIPT)

# main rules

all: $(TARGET).bin

$(TARGET).bin: $(TARGET)
	mkdir -p $(BINDIR)
	$(TOOLCHAIN)objcopy -O binary $(BINDIR)/$<.elf $(BINDIR)/$@
	#rm $(BINDIR)/$<

$(TARGET): $(OBJS)
	mkdir -p $(BINDIR)
	$(TOOLCHAIN)$(CC) $(CFLAGS) $(LDFLAGS) $(LIBFLAGS) -o $(BINDIR)/$@.elf $^

$(OBJDIR)/%.o: src/%.c
	mkdir -p $(dir $@)
	$(TOOLCHAIN)$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR)/%.o: %.c
	mkdir -p $(dir $@)
	$(TOOLCHAIN)$(CC) $(CFLAGS) -c $< -o $@


# size report

size: $(TARGET)
	$(TOOLCHAIN)size $(BINDIR)/$<.elf
	
# flashing (TODO: adjust for stlink v2 and binary)

flash: $(TARGET).bin
	openocd -f target/atsamd09.cfg -c "program bin/$< verify reset exit"
# cleaning

clean:
	rm -rf $(OBJDIR) $(BINDIR)
