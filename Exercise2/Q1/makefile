build=build
cc= gcc
macro1= -DDECORATE1 
macro2= -DDECORATE2
INC_DIR= $(wildcard *.h) 
CFLAGS= -I -W $(INC_DIR)

final: app.o sampleAdd.o libSample.a
	$(cc) $(build)/app.o $(build)/sampleAdd.o -L. -lSample $(CFLAGS) -o final && mkdir -p out && mv final out || echo "file faild to move in directory!!"

app.o: app.c sampleAdd.h sampleLib.h
	$(cc) -c $(macro1) app.c $(macro2) && mkdir -p build && mv app.o build/

sampleAdd.o: sampleAdd.c
	$(cc) -c  sampleAdd.c && mv sampleAdd.o build/

libSample.a:
	ar -rs libSample.a app.o

  
clean: 
	rm -rf  build out


