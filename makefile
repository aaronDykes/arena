.PHONY	:= all
CC		:= clang
CFLAGS	:= -O2
SRC		:= $(wildcard ./*.c)
OBJ		:= $(SRC:%.c=%.o)


./lib/libarena.dylib:	$(OBJ)
	mkdir lib
	$(CC) -o $@ $^ $(CFLAGS) -dynamiclib

%.o:	%.c %.h
	$(CC) -c $< $(CFLAGS)

clean:
	rm -rf *.o ./lib/