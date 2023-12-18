build=build/
cc= gcc
macro1= -DDECORATE1
macro2= -DDECORATE2
INC_DIR= $(wildcard *.h ExtHeader/*.h)
CFLAGS= -I -W $(INC_DIR)

final: app.o sampleAdd.o ./ExtLib/libSample.a
	$(cc) $(build)app.o $(build)sampleAdd.o -L./ExtLib -lSample $(CFLAGS) -o final && mkdir -p out && mv final out/ || echo "file faild to move in directory!!"

app.o: app.c sampleAdd.h ./ExtHeader/sampleLib.h
	$(cc) $(macro1) -c app.c $(macro2) && mkdir -p build && mv app.o build/

sampleAdd.o: sampleAdd.c
	$(cc) -c sampleAdd.c && mkdir -p build && mv sampleAdd.o build/

./ExtLib/libSample.a:
	ar -rs ./ExtLib/libSample.a app.o

.PHONY= clean  
clean: 
	rm -rf build out


