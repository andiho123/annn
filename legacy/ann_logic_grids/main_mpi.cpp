#include <iostream>
#include <mpi.h>

#include <network.cpp>



using namespace std;

// Figur = Form (3) + Dicke (3) + Rotation (3)

int lc = 3;
int ls[4] = {9*9+4, 100, 25, 4};


int world_rank;
int world_size;

bool combine = false;

char * filename;

void main_master(int argc, char ** argv) {
	for (int i=0;i<argc;i++) {
		if (strcmp(argv[i], "--combine-best") == 0) {
			combine = true;
		} else if (strcmp(argv[i], "--filename") == 0) {
			if (i != (argc-1)) {
				filename = argv[i+1];
			}
		}
	}
	
	

}


int main(int argc, char ** argv) {
	MPI_Comm_size(MPI_COMM_WORLD, &world_size);
	MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
	
	if (world_rank == 0) {
		main_master();
	else {
		main_slave();
	}
}




