#include <mpi.h>
#include <iostream>
#include <cstring>


using namespace std;



int main() {
	int world_size;
	int world_rank;
	
	MPI_Init(NULL, NULL);
	
	MPI_Comm_size(MPI_COMM_WORLD, &world_size);
	MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
	
	if (world_rank == 0) {
		float nn[2][3][4] = {0};
		nn[0][0][0] = 4345;
		nn[1][2][3] = 2342314;
		MPI_Send(&nn[0][0][0], 2*3*4, MPI_FLOAT, 1, 0, MPI_COMM_WORLD);
	}
	
	else {
		float nn[2][3][4] = {0};
		
		MPI_Recv(&nn[0][0][0], 2*3*4, MPI_FLOAT, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		cout << nn[0][0][0];
		cout << nn[1][2][3];
	}
	
	MPI_Finalize();
}
