build: pre compile asm linker 

pre: 
	cpp hello.c > hello.i

compile:
	gcc -S hello.i

asm:
	as -o hello.o hello.s

linker:
	sudo gcc -Wall -pthread -o hello.exe -lpigpio  hello.c	

run:
	sudo ./hello.exe

clean:
	rm hello.i hello.s hello.o hello.exe