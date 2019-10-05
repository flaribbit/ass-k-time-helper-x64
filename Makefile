CC=gcc
CFLAGS=-s -DNDEBUG -O2 -lcomctl32 -lcomdlg32 -lgdi32 -lwinmm -mwindows

all: main.cpp resource.o
	$(CC) main.cpp resource.o $(CFLAGS) -o main.exe

resource.o: resource.rc
	windres resource.rc -o resource.o
