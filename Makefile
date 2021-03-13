main: bamcat.o samToErrorRate.o
	g++ -o samToErrorRate bamcat.o samToErrorRate.o -lz -lpthread 
	rm -f bamcat.o
	rm -f samToErrorRate.o

bamcat.o: bamcat.c
	gcc -g -c bamcat.c

samToErrorRate.o: samToErrorRate.C
	g++ -g -c samToErrorRate.C

clean:
	rm -f bamcat.o
	rm -f samToErrorRate.o
	rm -f samToErrorRate
