# Makefile
LDFLAGS=-lncurses

SRCOS := $(wildcard *.o)
tinytetris.o: tinytetris.cpp
	$(CC) -c tinytetris.cpp

all: $(SRCOS)
	$(CC) -o tinytetris $(SRCOS) $(LDFLAGS)

clean:
	rm -f tinytetris tinytetris_backpack

test:
	@#This is test