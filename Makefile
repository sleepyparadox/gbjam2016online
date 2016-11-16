
all: gbjam2016rom.js

gbjam2016rom.js: game.gb
	wine bgtojs.exe game.gb gbjam2016rom.js
