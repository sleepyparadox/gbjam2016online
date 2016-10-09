
# avoid implicit rules for clarity
.SUFFIXES: .asm .o .gb
.PHONY:

ASMS := $(wildcard *.asm)
OBJS := $(ASMS:.asm=.o)
GBS := $(wildcard *.gb)
JS := $(wildcard *.js)


gbjam2016rom.js: gbjam2016/game.gb
	cd gbjam2016 && $(MAKE)
	bgtojs D:\Temp\GameBoy-Online\gbjam2016\game.gb gbjam2016rom.js

all: gbjam2016rom.js