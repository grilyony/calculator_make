all: makedirs compile addlib link

makedirs:
	mkdir bin
	mkdir obj
	mkdir lib

compile:
	gcc -o obj/calculator.o -c calculator.cpp
	gcc -o obj/main.o -c main.cpp

addlib:
	ar ruv lib/libcalc.a obj/calculator.o
	ranlib lib/libcalc.a

link:
	gcc -o bin/main obj/main.o -lcalc -Llib

run:
	./bin/main

clean:
	rm -r bin
	rm -r obj
	rm -r lib
