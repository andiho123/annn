CC=g++
CFLAGS=-Wall -std=c++0x -I.

MPICC=mpic++

main_mpi: main_mpi.cpp network.cpp
	$(MPICC) $(CFLAGS) -o main_mpi main_mpi.cpp
