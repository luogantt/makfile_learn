src = $(wildcard ./src/*.c) # ./src/hello.c ./src/add.c ...

obj = $(patsubst ./src/%.c, ./obj/%.o, $(src)) # ./obj/hello.o ./obj/add.o ...

inc_path = ./inc

myArgs = -Wall -g

ALL : a.out

$(obj) : ./obj/%.o : ./src/%.c
	gcc -c $< -o $@ $(myArgs) -I $(inc_path)

a.out : $(obj)
	gcc $^ -o $@ $(myArgs)

clean :
	-rm -rf $(obj) a.out

.PHONY : clean ALL

