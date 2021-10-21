
SOURCE:=add.o sub.o main.o
EXE :=main

$(EXE):$(SOURCE)
	gcc  $^ -o $@
$@: $^
	gcc -c $^ -o $@


clean:
	rm -rf *.o main
