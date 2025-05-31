CC = gcc
CFLAGS = -I.
DEPS = towSummake.h
OBJS = towSummake.o towSumfunc.o

all:
	gcc -o towSum towSum.c
	gcc -E towSum.c > towSum.i 
	gcc -S -masm=intel towSum.i
	as -o towSum.o towSum.s
	objdump -M intel -d towSum.o > towSum.dump
	gcc -c -o towSum.o towSum.c
	objdump -M intel -d towSum.o > towSum2.dump

towSummake: towSummake.c towSumfunc.c
	gcc -o towSummake towSummake.c towSumfunc.c -I.

towSummake2: towSummake.o towSumfunc.o
	$(CC) -o towSummake towSummake.o towSumfunc.o $(CFLAGS)

# towSummake.o: towSummake.c
# 	gcc -c -o towSummake.o towSummake.c -I.

# towSumfunc.o: towSumfunc.c
# 	gcc -c -o towSumfunc.o towSumfunc.c -I.

towSummake3: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c $(DEPS) 
	gcc -c -o $@ $< -I.

.PHONY: clean

clean:
	rm -f *.o

assembler:
	C:\masm32\bin\ml /c /coff /Cp prog1.asm
	C:\masm32\bin\link -entry:main /towSumsystem:console prog1.obj
	prog1