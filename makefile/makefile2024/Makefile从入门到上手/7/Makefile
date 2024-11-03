src = $(wildcard *.c) # hello.c add.c sub.c mul.c  div.c

obj = $(patsubst %.c, %.o, $(src)) # hello.o add.o sub.o mul.o div.o

ALL : a.out

hello.o : hello.c
	gcc -c $< -o $@ -I ./

add.o : add.c
	gcc -c $< -o $@

sub.o : sub.c
	gcc -c $< -o $@

mul.o : mul.c
	gcc -c $< -o $@

div.o : div.c
	gcc -c $< -o $@

a.out : $(obj)
	gcc $^ -o $@

clean :
	-rm -rf $(obj) a.out

