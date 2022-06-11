CC = clang++-9
pythonPath = -I/usr/include/python2.7 -lpython2.7

main: graph.o
	$(CC) $(pythonPath) graph.o -o main

graph.o: graph.cpp
	$(CC) $(pythonPath) -c graph.cpp

clean: 
	rm -f *.o a.out main *.png