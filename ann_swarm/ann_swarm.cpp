#include <iostream>
#include <mpi.h>
#include <cmath>
#include <cstring>
#include <random>
#include <ctime>

//Network parameters
#define L 2
#define N 32 //6*4+8
#define W 33 //+b

//Swarm parameters
#define EPS 16384
#define SQRT_EPS 128

//Arena parameters
#define SIZE_X 1024
#define SIZE_Y 1024

using namespace std;

default_random_engine generator;
normal_distribution<double> distribution(0.0,0.5);

class Swarm {
	public:
	
	
	float nn[L][N][W];
	
	int posmatrix[SIZE_X*SIZE_Y];
	
	struct entity {
		int x;
		int y;
		float mem[8];
		
		//Temporary speed attrs
		int vx;
		int vy;
		
		//Color
		uint8_t r;
		uint8_t g;
		uint8_t b;
	};
	
	struct entity entities[EPS];
	
	
	Swarm(float nn_t[L][N][W]) {
		memcpy(nn, nn_t, sizeof(nn));
		
		memset(entities, 0, sizeof(entities));
		memset(posmatrix, -1, sizeof(posmatrix)); // -1 single
		
		for (struct entity * e = entities;e<entities+EPS;e++) {
			e->x = ( (e-entities) % SQRT_EPS )+SIZE_X/2-SQRT_EPS/2;
			e->y = ( ((int) (e-entities)) / SQRT_EPS )+SIZE_Y/2-SQRT_EPS/2;
			posmatrix[SIZE_X*e->x+e->y] = (e-entities);
		}
		
		
		
	}
	
	void mutate() {
		
		for (int d=0;d<(L*N*W);d++) {
			
			if (rand() % 128 == 0) {
				if (d % W != 32) { // editing a bias?
					nn[0][0][d] += distribution(generator);
				} else {
					nn[0][0][d] += distribution(generator)/8;
				}
			}
		}
	}
	
	
	void propagate(float a[N]) {
		
		for (int l=0;l<L;l++) {
			float new_a[N] = {0};
			for (int n=0;n<N;n++) {
				for (int w=0;w<W;w++) {
					new_a[n] = a[w]*nn[l][n][w];
				}
			}
			
			memcpy(a, new_a, sizeof(new_a));
		}
		
	}
	
	
	void tick(float wall_input[8], float wall_output[8]) {
		
		int seeing[EPS][4]; //F R B L
		memset(seeing, -1, sizeof(seeing));
		
		
		//NN ticks
		float input[32];
		struct entity seen;
		for (struct entity * e = entities;e<entities+EPS;e++) {
			
			memset(input, 0, sizeof(input));
			
			for (int d=0;d<4;d++) {
				if (seeing[e-entities][d] != -1) {
					
					seen = entities[seeing[e-entities][d]];
					
					input[4+d*6] = d%2?1.0/fabs(seen.x-e->x):1.0/fabs(seen.y-e->y); // Distance^-1
					input[0+d*6] = ((float) seen.r)*input[4+d*6]/255;
					input[1+d*6] = ((float) seen.g)*input[4+d*6]/255;
					input[2+d*6] = ((float) seen.b)*input[4+d*6]/255;
					
					
				}
				
				else {
					if (d%2) {
						
						bool found = false;
						
						int lx = e->x+16*(d==1?1:-1);
						for (int x=e->x+(d==1?1:-1);x>=0 && x<SIZE_X && x!=lx;x+=d==1?1:-1) {
							if (posmatrix[x*SIZE_X+e->y] != -1) {
								seen = entities[posmatrix[x*SIZE_X+e->y]];
					
								input[4+d*6] = 1.0/fabs(seen.x-e->x); // Distance^-1
								input[0+d*6] = ((float) seen.r)*input[4+d*6]/255;
								input[1+d*6] = ((float) seen.g)*input[4+d*6]/255;
								input[2+d*6] = ((float) seen.b)*input[4+d*6]/255;
								input[3+d*6] = 0;
								
								seeing[posmatrix[x*SIZE_X+e->y]][(d+2)%4] = (e-entities);
								
								
								found = true;
								break;
							}
						}
						
						
						if (!found) {
							input[4+d*6] = 1.0/fabs((d==1)?(SIZE_X-e->x):(e->x+1));
							input[5+d*6] = 1;
							input[3+d*6] = (d==0)?wall_input[e->x*8/1024+4]:0;
						}
						
						
						
					} else {
						
						bool found = false;
						
						int ly = e->y+16*(d==2?1:-1);
						for (int y=e->y+(d==2?1:-1);y>=0 && y<SIZE_Y && y!=ly;y+=d==2?1:-1) {
							if (posmatrix[e->x*SIZE_X+y] != -1) {
								seen = entities[posmatrix[e->x*SIZE_X+y]];
					
								input[4+d*6] = 1.0/fabs(seen.y-e->y); // Distance^-1
								input[0+d*6] = ((float) seen.r)*input[4+d*6]/255;
								input[1+d*6] = ((float) seen.g)*input[4+d*6]/255;
								input[2+d*6] = ((float) seen.b)*input[4+d*6]/255;
								input[3+d*6] = 0;
								
								seeing[posmatrix[e->x*SIZE_X+y]][(d+2)%4] = (e-entities);
								
								found = true;
								break;
							}
						}
						
						if (!found) {
							input[4+d*6] = 1.0/fabs((d==2)?(SIZE_Y-e->y):(e->y+1));
							input[5+d*6] = 1;
							input[3+d*6] = (d==3)?wall_input[e->y*8/1024]:0;
						}
						
						
					}
				}
			}
			
			propagate(input); // now, the "input" is the output
			
					
		}
		
		//movement
	
	
	}		
	
};


int world_rank;
int world_size;

int main(int argc, char ** argv) {
	MPI_Init(NULL, NULL);
	
	MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
	MPI_Comm_size(MPI_COMM_WORLD, &world_size);
	
	float rho[L][N][W] = {0};

	Swarm swarm(rho);
	
	swarm.mutate();
	swarm.mutate();
	
	
	float in[8];
	float out[8];
	
	cout << "Start" << time(NULL) << "\n";
	for (int i=0;i<100;i++) {
		swarm.tick(in, out);
	}
	cout << "End" << time(NULL) << "\n";
	
	MPI_Finalize();
}
