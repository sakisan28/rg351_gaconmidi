all : gaconmidi

midi : midi.c
	gcc -o midi midi.c -lasound

joy : joy.c
	gcc -o joy joy.c -lSDL2

curses : curses.c
	gcc -o curses curses.c -lncurses

gaconmidi : gaconmidi.c
	gcc -o gaconmidi gaconmidi.c -lncurses -lSDL2 -lasound

install : gaconmidi gaconmidi.sh
	sudo cp gaconmidi gaconmidi.sh /roms/ports

clean :
	rm joy midi curses
