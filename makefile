.PHONY	:= all
CC		:= clang
SRC		:= $(wildcard ./*.c)
OBJ		:= $(SRC:%.c=%.o)
CFLAGS	:= -Wall -Wextra -g


arena:	$(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

%.o:	%.c
	$(CC) -c -g $< $(CFLAGS)

clean:
	rm -rf *.dSYM *.o arena
