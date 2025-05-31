CC = gcc
CFLAGS = -I.
DEPS = arraymake.h
OBJS = arraymake.o arrayfunc.o

all:
	gcc -o arraySub arraySub.c
	gcc -E arraySub.c > arraySub.i 
	gcc -S -masm=intel arraySub.i
	as -o arraySub.o arraySub.s
	objdump -M intel -d arraySub.o > arraySub.dump
	gcc -c -o arraySub.o arraySub.c
	objdump -M intel -d arraySub.o > arraySub2.dump

arraymake: arraymake.c arrayfunc.c
	gcc -o arraymake arraymake.c arrayfunc.c -I.

arraymake2: arraymake.o arrayfunc.o
	$(CC) -o arraymake arraymake.o arrayfunc.o $(CFLAGS)

# arraymake.o: arraymake.c
# 	gcc -c -o arraymake.o arraymake.c -I.

# arrayfunc.o: arrayfunc.c
# 	gcc -c -o arrayfunc.o arrayfunc.c -I.

arraymake3: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c $(DEPS) 
	gcc -c -o $@ $< -I.

.PHONY: clean

clean:
	rm -f *.o

assembler:
	C:\masm32\bin\ml /c /coff /Cp prog1.asm
	C:\masm32\bin\link -entry:main /arraySubsystem:console prog1.obj
	prog1