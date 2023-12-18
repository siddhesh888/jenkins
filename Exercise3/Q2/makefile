BUILD=build
CC=gcc
MACRO1= -DDECORATE1
MACRO2= -DDECORATE2
SOURCE=$(shell find . -name "*.c")
HEADER=$(shell find "*.h")
INCLUDE_DIR= -IcommonMod1 -IcommonMod2
CFLAGS= -Wno-implicit-function-declaration $(INCLUDE_DIR)


final: %.o
	$(CC) $(BUILD)/* -o final && mkdir -p out && mv final out/ || echo "file faild to move in directory!!"

%.o: $(SOURCE) 
	$(CC) $(MACRO1) -c $^ $(CFLAGS)  $(MACRO2) && mkdir -p build && mv *.o build/


clean:
	rm -rf build out
