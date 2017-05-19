#include <iostream>
#include <cstring>
#include <cmath>
#include <random>
#include <ctime>
#include <list>
#include <fstream>
#include <unistd.h>

#include <mpi.h>

using namespace std;


#define NACTION 4
#define NSTATE 4

#define MEMW 16

#define LC 4
#define NW 20//(NACTION+MEMW)
#define NDC 22//(NW+2) // Neuron data count


#define MGLC 1



#define MUTATION_RATE 0.5
#define MUTATION_COUNT 0.01

#define BIAS_MUTATION_RATIO 16

#define SPFR 2048
#define SCENLENGHT 100


float mutation_rate = 1.0;
float mutation_factor = 1.0;

default_random_engine generator;
normal_distribution<float> distribution(0.0, MUTATION_RATE);

bool  AND[2][2] = {{0, 0}, {0, 1}};
bool   OR[2][2] = {{0, 1}, {1, 1}};

bool NAND[2][2] = {{1, 1}, {1, 0}};
bool  NOR[2][2] = {{1, 0}, {0, 0}};

bool  XOR[2][2] = {{0, 1}, {1, 0}};
bool XNOR[2][2] = {{1, 0}, {0, 1}};


float sigmoid(float z) {
	return z;
}

float memory_sigmoid(float a) {
	return 2.0/(1+expf(-a))-1.0;
}

void nndump(float nn[LC][NW][NDC]) {
	cout << "[";
	for (int l=0;l<LC;l++) {
		cout << "[";
		for (int n=0;n<NW;n++) {
			cout << "[";
			for (int d=0;d<NDC;d++) {
				cout << nn[l][n][d] << ", ";
			}
			cout << "], \n";
		}
		cout << "], \n\n";
	}
	cout << "]\n\n\n\n";
}


class MGNetwork {
	public:
	
	int score = 0;
	float * nn = 0; //[MGLC][LC*NW*NDC][LC*NW*NDC];
	
	
	void mutatenn(float tmnetwork[LC][NW][NDC]) {
		
		float activations[LC*NW*NDC] = {0};
		
		for (int i=0;i<(LC*NW*NDC);i++) {
			activations[i] = distribution(generator);
		}
		
		for (int layer=0;layer<MGLC;layer++) {
			
			float new_activations[LC*NW*NDC] = {0};
			for (int neuron=0;neuron<LC*NW*NDC;neuron++) {
				for (int weight=0;weight<LC*NW*NDC;weight++) {
					new_activations[neuron] += activations[weight]*nn[layer*(LC*NW*NDC*LC*NW*NDC)+neuron*(LC*NW*NDC)+weight];
				}
			}
			memcpy(activations, new_activations, sizeof(activations));
		}
		
		float a = 0;
		for (int d=0;d<LC*NW*NDC;d++) {
			a += powf(activations[d], 2);
		}
		a = sqrtf(a);
		
		for (int d=0;d<LC*NW*NDC;d++) {
			activations[d] = activations[d]/(a/2);
		}		
		
		
		for (int l=0;l<LC;l++) {
			for (int n=0;n<NW;n++) {
				for (int d=0;d<NDC;d++) {
					tmnetwork[l][n][d] += activations[(l*(NW*NDC))+(n*NDC)+d];
					//cout << activations[(l*(NW*NDC))+(n*NDC)+d] << " ";
				}
			}
		}
		
		//cout << endl;
		
		
	}
	
	
	MGNetwork(float * nn_template, bool mutate) {
		nn = (float *) malloc(sizeof(float) * MGLC * LC*NW*NDC * LC*NW*NDC);
		
		if (nn == nullptr) {
			cout << "Couldn't allocate nn\n";
		}
		
		memcpy(nn, nn_template, sizeof(float)*MGLC*LC*NW*NDC*LC*NW*NDC);
		score = 0;
		
		
		
		if (mutate) {
			for (int l=0;l<MGLC;l++) {
				for (int n=0;n<LC*NW*NDC;n++) {
					for (int w=0;w<LC*NW*NDC;w++) {
						if (rand() % ((int) (1.0/MUTATION_COUNT)) == 0) {
							nn[l*(LC*NW*NDC*LC*NW*NDC)+n*(LC*NW*NDC)+w] += distribution(generator);
						}
					}
				}
			}
		}
		
	}
	
	MGNetwork() {
		nn = (float *) malloc(sizeof(float) * MGLC* LC*NW*NDC* LC*NW*NDC);
		
		if (nn == nullptr) {
			cout << "Couldn't allocate nn\n";
		}
		
		memset(nn, 0, sizeof(float)*MGLC*LC*NW*NDC*LC*NW*NDC);
		score = 0;
		
		for (int l=0;l<MGLC;l++) {
			for (int n=0;n<LC*NW*NDC;n++) {
				for (int w=0;w<LC*NW*NDC;w++) {
					if (rand() % ((int) (1.0/MUTATION_COUNT)) == 0) {
						nn[l*(LC*NW*NDC*LC*NW*NDC)+n*(LC*NW*NDC)+w] += distribution(generator);
					}
				}
			}
		}
	}
	
};


class Network {
	public:
	
	int score = 0;
	
	float nn[LC][NW][NDC];
	float last_a[LC][NW];
	
	float memory[MEMW];
	
	MGNetwork * mgnn;
	
	void propagate(float input[NW], float output[NW]) {
		
		float activations[NW];
		memcpy(activations, input, sizeof(activations));
		
		
		for (int l=0;l<LC;l++) {
			
			float new_activations[NW] = {0};
			
			
			for (int n=0;n<NW;n++) {
				for (int w=0;w<NW;w++) {
					new_activations[n] += nn[l][n][w] * activations[w]; // GRRRR jhh<aefigaef ddgki adf kgladf kgl
				}
				
				new_activations[n] += nn[l][n][NW+1];
				
				new_activations[n] = (sigmoid(new_activations[n])-last_a[l][n])*(1.0/(1+nn[l][n][NW+0]))+last_a[l][n];
				last_a[l][n] = new_activations[n];
			}
			memcpy(activations, new_activations, sizeof(new_activations));
			
		}
		memcpy(output, activations, sizeof(activations));
		
	}
	
	void get_actions(bool states[NSTATE], bool actions[NACTION]) {
		
		float input[NW] = {0};
		
		for (int i=0;i<NSTATE;i++) {
			input[i] = states[i]?1.0:0.0;
		}
		
		for (int i=0;i<MEMW;i++) {
			input[i+NSTATE] = memory_sigmoid(memory[i]);
		}
		
		float output[NW] = {0.0}; 
		propagate(input, output);
		
		
		
		
		for (int i=0;i<NACTION;i++) {
			actions[i] = (output[i] > sigmoid(0));
		}
		
		memcpy(memory, &output[NACTION], sizeof(memory));
	}
	
	void reset() {
		memset(memory, 0, sizeof(memory));
		memset(last_a, 0, sizeof(last_a));
	}
	
	Network(float nn_template[LC][NW][NDC], bool mutate, MGNetwork * mgnnptr) {
		
		mgnn = mgnnptr;
		
		memcpy(nn, nn_template, sizeof(nn));
		memset(memory, 0, sizeof(memory));
		memset(last_a, 0, sizeof(last_a));
		
		
		
		if (mutate) {
			mgnn->mutatenn(nn);
		}
		
		
	}

};




int score_dist[SCENLENGHT] = {0};
int rate_network(Network network, int cycles, int iterations) {
	
	int score = 0;
	
	bool states[NSTATE] = {0};
	
	memset(score_dist, 0, sizeof(score_dist));
	
	int dep_actions[NSTATE][2];
	bool conditions[NSTATE][2][2];
	
	for (int cycle=0;cycle<cycles;cycle++) {
		
		for (int s=0;s<NSTATE;s++) {
			dep_actions[s][0] = rand() % NACTION;
			dep_actions[s][1] = rand() % NACTION;
			
			
			int function = rand() % 6;
			
			//cout << s << ": " << function << " " << dep_actions[s][0] << dep_actions[s][1] << "\n";
			
			switch (function) {
				case 0:
					memcpy(conditions[s], AND, 2*2*sizeof(bool));
					break;
				case 1:
					memcpy(conditions[s], OR, 2*2*sizeof(bool));
					break;
				case 2:
					memcpy(conditions[s], NAND, 2*2*sizeof(bool));
					break;
				case 3:
					memcpy(conditions[s], NOR, 2*2*sizeof(bool));
					break;
				case 4:
					memcpy(conditions[s], XOR, 2*2*sizeof(bool));
					break;
				case 5:
					memcpy(conditions[s], XNOR, 2*2*sizeof(bool));
					break;
			}
			
		}
		
		for (int i=0;i<iterations;i++) {
			bool actions[NACTION] = {false};
			

			network.get_actions(states, actions);
			
			
			
			bool new_states[NSTATE] = {false};
			
			for (int s=0;s<NSTATE;s++) {
				bool con1 = actions[dep_actions[s][0]];
				bool con2 = actions[dep_actions[s][1]];
				
				new_states[s] = conditions[s][con1][con2];
			}
			
			//cout << "Actions: "; sdump(actions);
			//cout << "States:  "; sdump(new_states);
			//cout << "\n";
			
			memcpy(states, new_states, sizeof(states));
			
			
			score += states[0];
			score_dist[i] += states[0];
			
			score -= states[3];
			score_dist[i] -= states[3];
		}
		
		network.reset();
		
	}
	/*for (int i=0;i<iterations;i++) {
		cout << score_dist[i] << "\t";
	}
	cout << "\n";
	*/
	
	return score;

}



bool compare_scores(const Network net1, const Network net2) {
	return (net1.score > net2.score);
}

bool compare_scores_mgn(const MGNetwork net1, const MGNetwork net2) {
	return (net1.score > net2.score);
}


int world_rank;
int world_size;
int entity_count;

void write_genepool(list<Network> nets, list<MGNetwork> mgnets, char * fn) {
	ofstream outfile(fn, ios_base::out | ios_base::binary);
	
	for (list<MGNetwork>::iterator it=mgnets.begin();it!=mgnets.end();it++) {
		outfile.write(reinterpret_cast<char*>(it->nn), sizeof(*(it->nn)));
	}
	
	for (list<Network>::iterator it=nets.begin();it!=nets.end();it++) {
		it->reset();
		outfile.write(reinterpret_cast<char*>(&(*it)), sizeof(Network));
	}
	
	outfile.close();
}

void sendnn(float nn[LC][NW][NDC], int slave) {
	
	for (int l=0;l<LC;l++) {
		for (int n=0;n<NW;n++) {
			for (int d=0;d<NDC;d++) {
				MPI_Send(&nn[l][n][d], 1, MPI_FLOAT, slave, 1, MPI_COMM_WORLD);
			}
		}
	}
	
}

float last_scores[128] = {0};
int gen = 0;

int main_master(int argc, char ** argv) {
	
	cout << "[Master] Initialized\n";
	
	
	char * filename;
	
	if (argc >= 2) {
		filename = argv[1];
	} else {
		cout << "[MASTER] No file name specified, aborting!\n";
		exit(0);
	}
	
	
	if ((world_size-1) % 2 == 1) {
		cout << "[MASTER] Uneven number of slave processes, aborting!\n";
		exit(0);
	}
	
	
	
	float rho[LC][NW][NDC] = {0.0};
	
	
	list<Network> networks;
	
	int mgnn_count = entity_count/2;
	list<MGNetwork> mgnns;
	
	
	ifstream file(filename, ios_base::in | ios_base::binary);
	if (file.is_open()) {
		for (int s=0;s<mgnn_count;s++) {
			MGNetwork mgnet;
			
			cout << "[MASTER] Loading MutaGen network " << s << "\n";
			file.read(reinterpret_cast<char*>(mgnet.nn), sizeof( *(mgnet.nn) ));
			
			mgnet.score = 0;
			
			mgnns.push_back(mgnet);
		}
		
		for (int s=0;s<entity_count;s++) {
			Network * netptr = (Network *) malloc(sizeof(Network));
			
			
			cout << "[MASTER] Loading neural network " << s << "\n";
			file.read(reinterpret_cast<char*>(netptr), sizeof(Network));
			
			list<MGNetwork>::iterator it = mgnns.begin();
			advance(it, s/2);
			netptr->mgnn = &(*it);
			
			
			networks.push_back(*netptr);
		}
		
		
			
		file.close();	
	} else {
		for (int i=0;i<mgnn_count;i++) {
			MGNetwork mgnet;
			mgnns.push_back(mgnet);
		}
		
		for (int i=0;i<entity_count;i++) {
			list<MGNetwork>::iterator it = mgnns.begin();
			advance(it, i/2);
			Network net(rho, true, &(*it));
			
			networks.push_back(net);
		}
		
	}
	
	
	
	char * logfilename = (char *) malloc(sizeof(char)*(strlen(filename)+5));
	strcpy(logfilename, filename);
	strcat(logfilename, ".flog");
	
	ofstream logfile(logfilename, ios_base::out | ios_base::app);
	
	
	
	
	while (1==1) {
		
		float avg = 0.0;
		
		int slave = 1;
		for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
			sendnn(it->nn, slave);
			slave++;
		}
		
		
		
		slave = 1;
		for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
			int score = 0;
			MPI_Recv(&score, 1, MPI_INT, slave, 2, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
			
			
			for (int i=0;i<SCENLENGHT;i++) {
				int s;
				MPI_Recv(&s, 1, MPI_INT, slave, 3, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
				score_dist[i] += s;
			}
			
			
			
			it->score = score;
			it->mgnn->score += score;
			
			
			avg += ((float) it->score) / entity_count;
			slave++;
		}
		
		if ((gen+1) % 4 == 0) {
			mgnns.sort(compare_scores_mgn);
			
			int count = 0;
			
			list<MGNetwork> new_mgnns;

			for (list<MGNetwork>::iterator it=mgnns.begin();it!=mgnns.end();it++) {
				if (count == (mgnn_count/2)) { break; }
				
				MGNetwork n1(it->nn, true);
				MGNetwork n2(it->nn, true);
				
				new_mgnns.push_back(n1);
				new_mgnns.push_back(n2);
				
				free(it->nn);
			}
			
			mgnns = new_mgnns;
			
			count = 0;
			
			for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
				
				list<MGNetwork>::iterator net_it=mgnns.begin();
				advance(net_it, count/2); 
				it->mgnn = &(*net_it);
				
				count++;
			}
		}	
				
				
		
		
		cout << "[MASTER] SD=";
		for (int i=0;i<SCENLENGHT;i++) {
			cout << score_dist[i] << ",";
		}
		cout << "\n";
		
		networks.sort(compare_scores);
		
		
		for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
			it->score = 0;
			it->mgnn->score = 0;
		}
		
		
		
		list<Network> new_nets;
		
		int count=0;
		
		bool g = false;
		float gnn[LC][NW][NDC] = {0};
		
		for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
			count++;
			if (count > (entity_count/2)) {
				break;
			}
			
			if (!g) {
				g = true;
				memcpy(gnn, it->nn, sizeof(gnn));
				continue;
			}
			
			g = false;
			
			
			float nn_median[LC][NW][NDC] = {0};
			
			for (int l=0;l<LC;l++) {
				for (int n=0;n<NW;n++) {
					for (int d=0;d<NDC;d++) {
						nn_median[l][n][d] = (it->nn[l][n][d]+gnn[l][n][d])/2;
					}
				}
			}
			
			for (int i=0;i<4;i++) {
				list<MGNetwork>::iterator it = mgnns.begin();
				advance(it, rand() % mgnn_count);
				
				Network net(nn_median, true, &(*it));
				
				new_nets.push_back(net);
			}	
			
		}
		
		networks = new_nets;
			
				
		write_genepool(networks, mgnns, filename);
		
		last_scores[gen%128] = avg;
		
		float lavg = 0.0;
		if (gen < 128) {
			for (int i=0;i<gen;i++) {
				lavg += last_scores[i]/gen;
			}
		} else {
			for (int i=0;i<128;i++) {
				lavg += last_scores[i]/128;
			}
		}
		
		
		
		mutation_factor = ((SPFR*SCENLENGHT*0.704375)-lavg)/(SPFR*SCENLENGHT*0.704375);
		
		cout << gen << "\t" << avg/(SPFR*SCENLENGHT) << "\t" << lavg/(SPFR*SCENLENGHT) << "\n";
		logfile << avg/(SPFR*SCENLENGHT) << "," << lavg/(SPFR*SCENLENGHT) << "\n";
		logfile.flush();	
		
		gen++;
	}
	
	return 0;
}



int main_slave() {
	cout << "[" << world_rank << "] Initialized\n";
	while (1==1) {
		
		float nn[LC][NW][NDC] = {0.0};
		for (int l=0;l<LC;l++) {
			for (int n=0;n<NW;n++) {
				for (int d=0;d<NDC;d++) {
					MPI_Recv(&nn[l][n][d], 1, MPI_FLOAT, 0, 1, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
					
				}
			}
		}
		
		Network network(nn, false, NULL);
		int score = rate_network(network, SPFR, SCENLENGHT);
		
		
		MPI_Send(&score, 1, MPI_INT, 0, 2, MPI_COMM_WORLD);
		
		for (int i=0;i<SCENLENGHT;i++) {
			MPI_Send(&score_dist[i], 1, MPI_INT, 0, 3, MPI_COMM_WORLD);
		}	
	}
}

int main(int argc, char ** argv) {
	
	MPI_Init(NULL, NULL);
	
	MPI_Comm_size(MPI_COMM_WORLD, &world_size);
	MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
	
	
	
	
	entity_count = world_size-1;
	
	srand(time(0)+(world_rank<<4));
	
	if (world_rank == 0) {
		main_master(argc, argv);
	} else {
		main_slave();
	}
}




