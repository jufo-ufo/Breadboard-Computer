
main.o: main.c
	gcc -g main.c -c

main: main.o
	gcc -g main.o -o main

clean:
	touch null.o
	rm *.o

run: main
	python3 -c "print('='*100)"; ./main points.txt
	