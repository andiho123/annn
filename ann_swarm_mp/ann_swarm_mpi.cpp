#include <mpi.h>
#include <iostream>
#include <cstring>
#include <cmath>
#include <list>
#include <random>
#include <fstream>

using namespace std;

#define LC 2
#define NW 10
#define WW 11

#define ANTS_PER_SWARM 32
#define HONEYPOT_COUNT 4
#define DURATION 1024

#define SIZE_X 512
#define SIZE_Y 512

int world_size;
int world_rank;

default_random_engine generator;
normal_distribution<float> distribution(0.0,0.5);

bool debug = false;


void valdump(float val[NW]) {
	printf("[");
	for (int i=0;i<NW;i++) {
		printf("%f, ", val[i]);
	}
	
	printf("]\n");
}

void nndump(float nn[LC][NW][WW]) {
	printf("[ ");
	for (int l=0;l<LC;l++) {
		printf("[ ");
		for (int n=0;n<NW;n++) {
			printf("[ ");
			for (int w=0;w<WW;w++) {
				printf("%f, ", nn[l][n][w]);
			}
			printf("],\n");
		}
		printf("],\n\n");
	}
	printf("]\n");
}


class Swarm {
	
	public:
	
	float nn[LC][NW][WW];
	int score = 0;
	
	int ants[ANTS_PER_SWARM][3]; // (x, y, ph_emit)
	int honeypots[HONEYPOT_COUNT][2]; // (x, y)
	
	float memory[4] = {0};
	
	void propagate(float input[NW], float output[NW]) {
			
		float activations[NW] = {0.0};
		memcpy(activations, input, sizeof(activations));
		
		for (int layer=0;layer<LC;layer++) {
			
			float new_activations[NW] = {0};
			for (int neuron=0;neuron<NW;neuron++) {
				float a = 0.0;
				for (int weight=0;weight<NW;weight++) {
					a += activations[weight]*nn[layer][neuron][weight];
					
				}
				
				new_activations[neuron] = a;//+nn[layer][neuron][WW-1];//sigmoid(a);
			}
			
			//printf("New Activations = ");
			//valdump(new_activations);
			memcpy(activations, new_activations, sizeof(activations));
		}
		
		memcpy(output, activations, sizeof(activations));
	}

	
	void calculate_scent(int antid, float scent[4]) {
		
		int pos[2];
		memcpy(pos, ants[antid], sizeof(pos));
		
		
		int cant = -1;
		float cd = 100000;
		
		for (int i=0;i<ANTS_PER_SWARM;i++) {
			if (ants[i][2] == 1) {
				float d = sqrtf(pow(pos[0]-ants[i][0], 2)+pow(pos[1]-ants[i][1], 2));
				if (d < cd) {
					cd = d;
					cant = i;
				}
			}
		}
		
		if (cant == -1) {
			scent[0] = 0;
			scent[1] = 0;
			scent[2] = 0;
			scent[3] = 0;
		}
		
		int dpos[2] = {ants[cant][0]-pos[0], ants[cant][1]-pos[1]};
		
		scent[0] = (dpos[1]<0)?(1.0/(-dpos[1]+1)):0;
		scent[1] = (dpos[1]>=0)?(1.0/(dpos[1]+1)):0;
		
		scent[2] = (dpos[0]<0)?(1.0/(-dpos[0]+1)):0;
		scent[3] = (dpos[0]>=0)?(1.0/(dpos[0]+1)):0;
		
	}
	
	bool in_honeypot(int antid) {
		for (int i=0;i<HONEYPOT_COUNT;i++) {
			if (sqrtf(pow(ants[antid][0]-honeypots[i][0], 2)+pow(ants[antid][1]-honeypots[i][1], 2)) < 5) {
				return true;
			}
		}
		return false;
	}
	
	
	void update() {
		
		
		for (int i=0;i<ANTS_PER_SWARM;i++) {
			
			bool hp = in_honeypot(i);
			
			if (hp) { score ++; }
			
			float scent[4];
			calculate_scent(i, scent);
			
			float input[NW] = {1, scent[0], scent[1], scent[2], scent[3], (float) hp, memory[0], memory[1], memory[2], memory[3]};
			float output[NW] = {0};
			//cout << "Ant " << i << "\n";
			//printf("Input  = (%f|%f|%f|%f|%f)\n", input[0], input[1], input[2], input[3], input[4]);
			propagate(input, output);
			
			float vx = output[1]-output[0];
			float vy = output[3]-output[2];
			
			for (int m=0;m<4;m++) {
				memory[m] = 2.0/(1+exp(-output[5+m])) - 2.0;
			}
			
			float v = sqrtf(pow(vx, 2)+pow(vy, 2));
			if (v > 2) {
				vx = (vx/v)*2;
				vy = (vy/v)*2;
			}
			
			//printf("Output = (%f|%f|%f|%f|%f)\n", output[0], output[1], output[2], output[3], output[4]);
			//printf("Speed = (%f|%f)\n\n", vx, vy);
			
			ants[i][0] += vx;
			ants[i][1] += vy;
			
			ants[i][0] = ants[i][0] % (SIZE_X-1);
			ants[i][1] = ants[i][1] % (SIZE_Y-1);
			
			if (output[4] > 0.5) {
				ants[i][2] = 1;
			} else {
				ants[i][2] = 0;
			}
			
		}
	}
	
	
	Swarm (float nn_template[LC][NW][WW], bool mutate) {
		
		memcpy(nn, nn_template, sizeof(nn));
		
		if (mutate) {
			for (int l=0;l<LC;l++) {
				for (int n=0;n<NW;n++) {
					for (int w=0;w<WW;w++) {
						nn[l][n][w] += distribution(generator);
					}
				}
			}
		}
		
		for (int a=0;a<ANTS_PER_SWARM;a++) {
			ants[a][2] = 0;
			
			ants[a][0] = rand() % (SIZE_X-1);
			ants[a][1] = rand() % (SIZE_Y-1);
		}
		
		for (int h=0;h<HONEYPOT_COUNT;h++) {
			honeypots[h][0] = rand() % (SIZE_X-1);
			honeypots[h][1] = rand() % (SIZE_Y-1);
		}
		memset(memory, 0, sizeof(memory));
	}
	
};






bool compare_scores(Swarm swarm1, Swarm swarm2) {
	return (swarm1.score > swarm2.score);
}


void write_genepool(list<Swarm> swarms, char * fn) {
	ofstream outfile(fn, ios_base::out | ios_base::binary);
	for (list<Swarm>::iterator it=swarms.begin();it!=swarms.end();it++) {
		outfile.write(reinterpret_cast<char*>(&(*it)), sizeof(Swarm));
	}
	outfile.close();
}




void sendnn(float nn[LC][NW][WW], int slave) {
	
	for (int l=0;l<LC;l++) {
		for (int n=0;n<NW;n++) {
			for (int w=0;w<WW;w++) {
				MPI_Send(&nn[l][n][w], 1, MPI_FLOAT, slave, 1, MPI_COMM_WORLD);
			}
		}
	}
	
}





void main_master(int argc, char **argv) {
	
	float rho[LC][NW][WW];
	memset(rho, 0, sizeof(rho));
	
	bool new_gp = false;
	
	char * filename;

	for (int i=0;i<argc;i++) {
		if ((strcmp(argv[i], "--filename") == 0 || strcmp(argv[i], "-f") == 0) && argc >= (i+2)) {
			cout << i << "--filename=" << argv[i+1] << "\n"; 
			filename = argv[i+1];
		}
		if (strcmp(argv[i], "--new") == 0|| strcmp(argv [i], "-n") == 0) {
			cout << i << "--new\n";
			new_gp = true;
		} 
	}
	
	
	
	
	list<Swarm> swarms;
	int swarm_count = world_size-1;
	if (swarm_count % 2 == 1) {
		printf("[MASTER] Uneven number of swarms!\n");
		exit(1);
	}
	
	
	if (new_gp || filename[0] == 0x00) {
		for (int i=0;i<swarm_count;i++) {
			cout << "[MASTER] Generating neural network" << i << "\n";
			Swarm swarm(rho, true);
			/*for (int l=0;l<LC;l++) {
				for (int n=0;n<NW;n++) {
					for (int w=0;w<WW;w++) {
						cout << swarm.nn[l][n][w] << "\n";
					}
				}
			}*/
			
			swarms.push_back(swarm);
		}
	}
	else {
		
		ifstream file(filename, ios_base::in | ios_base::binary);
		for (int s=0;s<swarm_count;s++) {
			Swarm swarm(rho, false);
			cout << "[MASTER] Loading neural network" << s << "\n";
			file.read(reinterpret_cast<char*>(&swarm), sizeof(Swarm));
			swarms.push_back(swarm);
		}
		file.close();
	}
	
	while (1) {
		
		int slave = 1;
		for (list<Swarm>::iterator it=swarms.begin();it != swarms.end();it++) {
			if (debug) {cout << "[MASTER] Sending neural network to " << slave << "\n"; }
			sendnn((*it).nn, slave); // FLAG: 1 = SENDNN; 2 = SENDSCORE
			slave ++;
		}
		
		slave = 1;
		for (list<Swarm>::iterator it=swarms.begin();it != swarms.end();it++) {
			int score = 0;
			MPI_Recv(&score, 1, MPI_INT, slave, 2, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
			cout << "[MASTER] Slave " << slave << " finished with score " << score << "\n";
			(*it).score = score;
			slave ++;
		}
		 
		
		float avg = 0.0;
		
		for (list<Swarm>::iterator it=swarms.begin();it != swarms.end(); it++) {
			avg += (float) (*it).score/swarm_count;
		}
		
		swarms.sort(compare_scores);
		
		int c = 0;
		float uavg = 0.0; // Upper average
		list<Swarm> new_swarms;
		for (list<Swarm>::iterator it=swarms.begin();it != swarms.end(); it++) {
			if (c == swarm_count/2) { break; }
			uavg += (float) (*it).score/(swarm_count/2);
			Swarm swarm1((*it).nn, true);
			Swarm swarm2((*it).nn, true);
			
			new_swarms.push_back(swarm1);
			new_swarms.push_back(swarm2);
			c++;
		}
		
		
		swarms = new_swarms;
		
		write_genepool(swarms, filename);
		printf("[MASTER] ===============================\n[MASTER] A=%f\n", avg);
		
	}
}


void main_slave() {
	
	
	cout << "[" << world_rank << "] Initialized\n";
	
	
	while (1) {
		
		float nn[LC][NW][WW];
		for (int l=0;l<LC;l++) {
			for (int n=0;n<NW;n++) {
				for (int w=0;w<WW;w++) {
					MPI_Recv(&nn[l][n][w], 1, MPI_FLOAT, 0, 1, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
				}
			}
		}
		if (debug) {cout << "[" << world_rank << "] Received neural net\n"; }
		//nndump(nn);
		
		
		Swarm swarm(nn, false);
		for (int tick=0;tick<DURATION;tick++) {
			swarm.update();
			/*if (tick % 100 == 0) {
				cout << "[" << world_rank << "] Tick " << tick << "\n";
			}*/
		}
		
		int score = swarm.score;
		
		if (debug) { cout << "[" << world_rank << "] Finished simulation with score " << score << "\n"; }
		MPI_Send(&score, 1, MPI_INT, 0, 2, MPI_COMM_WORLD);
		
	}
}

int main(int argc, char ** argv) {
	
	cout << "Start ";
	MPI_Init(NULL, NULL);
	
	MPI_Comm_size(MPI_COMM_WORLD, &world_size);
	MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
	
	cout << world_rank << "\n";
	
	for (int i=0;i<argc;i++) {
		if (strcmp(argv[i], "--debug") == 0) {
			debug = true;
			cout << "========================================DEBUG MODE==============================================\n";
		}
		
	}
	
	
	if (world_rank == 0) {
		main_master(argc, argv);
	}
	
	else {
		main_slave();
	}
	
	
	MPI_Finalize();
}









