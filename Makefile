CC=gcc
CFLAGS=-O2 -ggdb -Iinclude
LDFLAGS=-lSDL -lSDL_ttf -lSDL_image
OBJ=karel.o lib/libkarel.a

karel: $(OBJ)
	$(CC) -o $@ $(OBJ) $(LDFLAGS)

clean:
	rm -f karel.o karel

run: karel
	./karel
