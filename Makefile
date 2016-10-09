
# avoid implicit rules for clarity
.SUFFIXES: .asm .o .gb
.PHONY: all gbjam2016/game.gb

ASMS := $(wildcard *.asm)
OBJS := $(ASMS:.asm=.o)

all: gbjam2016rom.js

gbjam2016/game.gb:
	cd gbjam2016 && $(MAKE)
	
gbjam2016rom.js: gbjam2016/game.gb
	bgtojs gbjam2016/game.gb gbjam2016rom.js
