CC = gcc

CFLAGS=-O3 -g -fomit-frame-pointer -msse2avx -mavx2 -march=native -std=c99

all :
	$(CC) $(CFLAGS) -c RLizarMon.c main.c randombytes.c fips202.c bch.c ecc.c
	$(CC) $(CFLAGS) -o RLizarMon RLizarMon.o main.o randombytes.o fips202.o bch.o ecc.o
	
run : all
	./RLizarMon

clean :
	rm -f *.o
	rm -f RLizarMon

new :
	make clean
	make all
	./RLizarMon
