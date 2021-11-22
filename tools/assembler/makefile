
CC=gcc
CFLAGS=-g

main.o: main.c
	$(CC) $(CFLAGS) main.c -c

main.out: main.o
	$(CC) $(CFLAGS) main.o -o main.out

run: main.out
	python3 -c "print('='*50)"; ./main.out
