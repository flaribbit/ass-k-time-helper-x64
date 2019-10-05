CC=gcc
CFLAGS=-s -DNDEBUG -O2 -lcomctl32 -lcomdlg32 -m32

all: main.cpp resource.o
	$(CC) main.cpp $(CFLAGS) -o main.exe

resource.o: resource.rc
	windres resource.rc -o resource.o
