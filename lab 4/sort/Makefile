all:
	gcc -o sort sort.c
	gcc -E sort.c > sort.i 
	gcc -S -masm=intel sort.i
	as -o sort.o sort.s
	objdump -M intel -d sort.o > sort.dump