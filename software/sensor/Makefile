

############################################################################
###
###  LEDController
###  Makefile
###
###  Yatekii
###                  
############################################################################

TARGET  	= firmware-sensor
ARCH		= armv6-m
MCU     	= cortex-m0plus
SPECS 		= nosys.specs
STD 		= c11
TOOLCHAIN 	= arm-none-eabi-
CC			= gcc
CFLAGS		= -mthumb -march=$(ARCH) -mtune=$(MCU) -std=$(STD) -specs=$(SPECS)

OBJS 		= $(addprefix $(OBJDIR)/,main.o)
INCDIR 	= include
SRCDIR 	= src
OBJDIR 	= obj
BINDIR 	= bin

# main rules

all: $(TARGET).bin

$(TARGET).bin: $(TARGET)
	$(TOOLCHAIN)objcopy -O binary $(BINDIR)/$< $(BINDIR)/$@
	rm $(BINDIR)/$<

$(TARGET): $(OBJS)
	$(TOOLCHAIN)$(CC) $(CFLAGS) -o $(BINDIR)/$@ $^

$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	$(TOOLCHAIN)$(CC) $(CFLAGS) -c $< -o $@

# helpers

$(OBJDIR):
	mkdir $(OBJDIR)

# flashing

flash: $(TARGET).hex
	avrdude -c USBasp -p atmega48 -U flash:w:$(TARGET).hex -v

# cleaning

clean:
	rm -rf $(OBJDIR) $(BINDIR)