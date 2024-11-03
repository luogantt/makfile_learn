src=add.o div.o multi.o sub.o main.o
target=app
$(target):$(src)
	$(CC) $^ -o $@
 
%.o:%.c
	$(CC) -c $< -o $@
