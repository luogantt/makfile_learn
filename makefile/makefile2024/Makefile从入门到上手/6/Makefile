src = $(wildcard *.c) # hello.c add.c sub.c mul.c  div.c

obj = $(patsubst %.c, %.o, $(src)) # hello.o add.o sub.o mul.o div.o

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

a.out : $(obj)
	gcc $(obj) -o a.out 

clean :
	-rm -rf $(obj) a.out

