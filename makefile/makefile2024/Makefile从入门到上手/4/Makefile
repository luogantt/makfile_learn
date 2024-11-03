ALL : a.out

hello.o : hello.c
	gcc -c hello.c -o hello.o -I ./

add.o : add.c
	gcc -c add.c -o add.o

sub.o : sub.c
	gcc -c sub.c -o sub.o

mul.o : mul.c
	gcc -c mul.c -o mul.o

div.o : div.c
	gcc -c div.c -o div.o

a.out : hello.o add.o sub.o mul.o div.o
	gcc hello.o add.o sub.o mul.o div.o -o a.out

