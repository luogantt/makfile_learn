src = $(wildcard *.c) # hello.c add.c sub.c mul.c  div.c

obj = $(patsubst %.c, %.o, $(src)) # hello.o add.o sub.o mul.o div.o

myArgs = -Wall -g

ALL : a.out

$(obj) : %.o : %.c
	gcc -c $< -o $@ $(myArgs)

a.out : $(obj)
	gcc $^ -o $@ $(myArgs)

clean :
	-rm -rf $(obj) a.out

.PHONY : clean ALL

