

ann_truthtables_mpi: network.o mpi_base.o rate_truthtables.o
	mpic++ -o ann_truthtables_mpi mpi_base.o rate_truthtables.o


network.o: network.cpp
	g++ -Wall -std=c++11 -I. -o network.o -c network.cpp

rate_truthtables.o: rate_truthtables.cpp
	g++ -Wall -std=c++11 -I. -o rate_truthtables.o -c rate_truthtables.cpp

mpi_base.o: mpi_base.cpp
	mpic++ -Wall -std=c++11 -I. -o mpi_base.o -c mpi_base.cpp

