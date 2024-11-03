src = $(wildcard *.c) # hello.c add.c sub.c mul.c  div.c

obj = $(patsubst %.c, %.o, $(src)) # hello.o add.o sub.o mul.o div.o

ALL : a.out

%.o : %.c
	gcc -c $< -o $@

a.out : $(obj)
	gcc $^ -o $@

clean :
	-rm -rf $(obj) a.out

