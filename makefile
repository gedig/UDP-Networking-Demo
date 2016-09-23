# makefile for macosx

flags = -Wall -DDEBUG -std=c++14 # -O3

% : %.cpp Net.h
	g++ $< -o $@ ${flags}

all : Example
	
server : Example
	./Example

client : Example
	./Example 127.0.0.1
	
clean:
	rm -f Test Example