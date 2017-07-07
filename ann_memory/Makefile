ann_stock_mpi: network.o mpi_base.o rate_stock.o
	mpic++ -o ann_stock_mpi network.o mpi_base.o rate_stock.o

stock_test: network.o stock_test.o
	g++ -o stock_test network.o stock_test.o


ann_truthtables_mpi: network.o mpi_base.o rate_truthtables.o
	mpic++ -o ann_truthtables_mpi network.o mpi_base.o rate_truthtables.o


network.o: network.cpp
	g++ -Wall $(CFLAGS) -std=c++11 -I. -o network.o -c network.cpp


rate_truthtables.o: rate_truthtables.cpp
	g++ -Wall $(CFLAGS) -std=c++11 -I. -o rate_truthtables.o -c rate_truthtables.cpp

rate_stock.o: rate_stock.cpp
	g++ -Wall $(CFLAGS) -std=c++11 -I. -o rate_stock.o -c rate_stock.cpp


mpi_base.o: mpi_base.cpp
	mpic++ -Wall $(CFLAGS) -std=c++11 -I. -o mpi_base.o -c mpi_base.cpp



stock_test.o: stock_test.cpp
	g++ -Wall $(CFLAGS) -std=c++11 -o stock_test.o -c stock_test.cpp

