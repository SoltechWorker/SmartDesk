#MakeFile Sample

CC=gcc

AR =ar

CFLAGS += -c  -g

INCLUDE = -I ../inc

LIBS = -L./ -lmyio

LIBTARGET = libmyio.a

SRCS = read.c write.c

OBJS = $(SRCS:.c=.o)

.SUFFIXES:.c.o

test: $(objs)
	$(CC) -o test $(objs)

main.o:io.h main.c
	gcc -c main.c

read.o:io.h read.c
	gcc -c read.c

write.o:io.h write.c
	gcc -c write.c

clean : 
	rm -rf *.o
