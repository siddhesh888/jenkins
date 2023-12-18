OBJ= main.o sum.o mul.o
build=build/
final: main.o sum.o mul.o
	gcc $(build)main.o $(build)sum.o $(build)mul.o -o final && mv final out/
main.o: main.c sum.h mul.h
	gcc -c main.c && mv main.o build/
sum.o: sum.c
	gcc -c sum.c && mv sum.o build/
mul.o: mul.c
	gcc -c mul.c && mv mul.o build/
clean:
	rm build/*.o 
	rm out/final
