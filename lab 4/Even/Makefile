CC = gcc
CFLAGS = -I.
DEPS = evenmake.h
OBJS = evenmake.o evenfunc.o

all:
	gcc -o even even.c
	gcc -E even.c > even.i 
	gcc -S -masm=intel even.i
	as -o even.o even.s
	objdump -M intel -d even.o > even.dump
	gcc -c -o even.o even.c
	objdump -M intel -d even.o > even2.dump

evenmake: evenmake.c evenfunc.c
	gcc -o evenmake evenmake.c evenfunc.c -I.

evenmake2: evenmake.o evenfunc.o
	$(CC) -o evenmake evenmake.o evenfunc.o $(CFLAGS)

# evenmake.o: evenmake.c
# 	gcc -c -o evenmake.o evenmake.c -I.

# evenfunc.o: evenfunc.c
# 	gcc -c -o evenfunc.o evenfunc.c -I.

evenmake3: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c $(DEPS) 
	gcc -c -o $@ $< -I.

.PHONY: clean

clean:
	rm -f *.o

assembler:
	C:\masm32\bin\ml /c /coff /Cp prog1.asm
	C:\masm32\bin\link -entry:main /evensystem:console prog1.obj
	prog1