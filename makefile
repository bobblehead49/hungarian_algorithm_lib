CC = g++
CFLAGS = -std=c++11

test: mkdir main.o hung.o
	$(CC) -o bin/test bin/main.o bin/hung.o

hung.o: mkdir src/Hungarian.cpp include/hungarian_algorithm_lib/Hungarian.h
	$(CC) -c src/Hungarian.cpp -o bin/hung.o -I./include

main.o: mkdir src/testMain.cpp include/hungarian_algorithm_lib/Hungarian.h
	$(CC) $(CFLAGS) -c src/testMain.cpp -o bin/main.o

mkdir:
	-mkdir -p bin

clean:
	-rm -r bin/
