CC=g++
CFLAGS=-s -DNDEBUG -O2 -lcomctl32 -lcomdlg32

all: main.cpp resource.o
	$(CC) main.cpp

resource.o: resource.rc
	windres resource.rc -o resource.o
