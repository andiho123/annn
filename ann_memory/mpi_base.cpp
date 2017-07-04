#include <iostream>
#include <cstring>
#include <cmath>
#include <random>
#include <ctime>
#include <list>
#include <fstream>

#include <mpi.h>

#include <network.h>
#include <rate.h>

#define SPFR 2048
#define SCENLENGHT 100

using namespace std;

bool compare_scores(const Network net1, const Network net2) {
	return (net1.score > net2.score);
}

int world_rank;
int world_size;
int entity_count;

void write_genepool(list<Network> nets, char * fn) {
	ofstream outfile(fn, ios_base::out | ios_base::binary);
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

float mutation_rate = 1;

int main_master(int argc, char ** argv) {
	
	cout << "[Master] Initialized\n";
	
	
	char * filename = (char *) malloc(1);
	bool combine_best = true;
	int combine_mode = 0;
	bool lognn = false;
	
	if (argc == 1) { // Dry run
		*filename = 0x00;
		goto dry_run;
	}
	
	if (argc >= 2) {
		filename = argv[1];
	} else {
		cout << "[Master] No file name specified, aborting!\n";
		exit(0);
	}
	
	if (argc >= 3) {
		if (strcmp(argv[2], "--simple") == 0) {
			combine_best = false;
		} else if (strcmp(argv[2], "--combinative") == 0) {
			combine_best = true;
		} else {
			cout << "[Master] Invalid argument\n";
			exit(0);
		}
	} else {
		cout << "[Master] Too few arguments\n";
		exit(0);
	}
	
	
	if (argc >= 4) {
		if (strcmp(argv[3], "--average") == 0) {
			combine_mode = 0;
		} else if (strcmp(argv[3], "--neuron-unit") == 0) {
			combine_mode = 1;
		} else if (strcmp(argv[3], "--mutation-combination") == 0) {
			combine_mode = 2;
		} else if (strcmp(argv[3], "--hybridnm") == 0) {
			combine_mode = 3;
		} else if (strcmp(argv[3], "--hybridam") == 0) {
			combine_mode = 4;
		} else {
			cout << "[Master] Invalid argument\n";
			exit(0);
		}
	} else {
		cout << "[Master] Too few arguments\n";
		exit(0);
	}
	
	
	
	if (argc >= 5) {
		if (strcmp(argv[4], "--lognn") == 0) {
			lognn = true;
		}
	}
	
	dry_run: 
	
	if ((world_size-1) % 2 == 1) {
		cout << "[Master] Uneven number of slave processes, aborting!\n";
		exit(0);
	}
	
	
	
	float rho[LC][NW][NDC] = {0.0};
	
	
	list<Network> networks;
	
	ifstream file(filename, ios_base::in | ios_base::binary);
	if (file.is_open()) {
		for (int s=0;s<entity_count;s++) {
			Network * netptr = (Network *) malloc(sizeof(Network));
			cout << "[Master] Loading neural network " << s << "\n";
			file.read(reinterpret_cast<char*>(netptr), sizeof(Network));
			
			networks.push_back(*netptr);
		}
		file.close();	
	} else {
		for (int i=0;i<entity_count;i++) {
			Network n(rho, true, 0);
			networks.push_back(n);
		}
	}
	
	
	
	char * logfilename = (char *) malloc(sizeof(char)*(strlen(filename)+7));
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
			
			it->score = score;
			
			avg += ((float) it->score) / entity_count;
			slave++;
		}
		
		networks.sort(compare_scores);
		
		for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
			it->score = 0;
		}
		
		
		list<Network> new_nets;
		
		int count=0;
		
		if (!combine_best) {
			for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
				count++;
				if (count > (entity_count/2)) {
					break;
				}
				
				Network net1(it->nn, true, mutation_rate);
				Network net2(it->nn, true, mutation_rate);
				
				new_nets.push_back(net1);
				new_nets.push_back(net2);
			}
			
			networks = new_nets;
		} else {
			
			bool g = false;
			Network * gnet;
			
			
			for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
				count++;
				if (count > (entity_count/2)) {
					break;
				}
				
				if (!g) {
					g = true;
					gnet = &(*it);
					continue;
				}
				
				g = false;
				
				for (int i=0;i<4;i++) {
					
					float nn_median[LC][NW][NDC] = {0};
					
					for (int l=0;l<LC;l++) {
						for (int n=0;n<NW;n++) {
							
							if (combine_mode == 0) {
								for (int d=0;d<NDC;d++) {
									nn_median[l][n][d] = (it->nn[l][n][d]+gnet->nn[l][n][d])/2;
								}
							} 
							
							else if (combine_mode == 1) {
								if (rand() % 100 < ( ((float) it->score) / (it->score+gnet->score))) {
									memcpy(nn_median[l][n], it->nn[l][n], sizeof(nn_median[l][n]));
								} else {
									memcpy(nn_median[l][n], gnet->nn[l][n], sizeof(nn_median[l][n]));
								}
							} 
							
							else if (combine_mode == 2) {
								
								for (int d=0;d<NDC;d++) {
									if (gnet->mutation_map[l][n][d] > it->mutation_map[l][n][d]) {
										nn_median[l][n][d] = gnet->nn[l][n][d];
									}
									
									else if (gnet->mutation_map[l][n][d] < it->mutation_map[l][n][d]) {
										nn_median[l][n][d] = it->nn[l][n][d];
									}
									
									else {
										nn_median[l][n][d] = (gnet->nn[l][n][d]+it->nn[l][n][d])/2;
									}
								}
							}
							
							else if (combine_mode == 3 || combine_mode == 4) { 
								
								bool gmut = false;
								bool itmut = false;
								
								for (int d=0;d<NDC;d++) {
									if (it->mutation_map[l][n][d]) {
										itmut = true;
									}
									
									if (gnet->mutation_map[l][n][d]) {
										gmut = true;
									}
								}
								
								if (gmut > itmut) {
									memcpy(nn_median[l][n], gnet->nn[l][n], sizeof(nn_median[l][n]));
								} else if (itmut > gmut) {
									memcpy(nn_median[l][n], it->nn[l][n], sizeof(nn_median[l][n]));
								}
								
								else if (itmut == gmut) {
									
									if (combine_mode == 3) {
										if (rand() % 100 < ( ((float) it->score) / (it->score+gnet->score))) {
											memcpy(nn_median[l][n], it->nn[l][n], sizeof(nn_median[l][n]));
										} else {
											memcpy(nn_median[l][n], gnet->nn[l][n], sizeof(nn_median[l][n]));
										}
									} else if (combine_mode == 4) {
										for (int d=0;d<NDC;d++) {
											nn_median[l][n][d] = (it->nn[l][n][d]+gnet->nn[l][n][d])/2;
										}
									}
									
								}
							}
						}
					}
				
				
					Network net(nn_median, true, mutation_rate);
					
					new_nets.push_back(net);
				}	
				
			}
			
			networks = new_nets;
			
		}
		
		
		
		write_genepool(networks, filename);
		
		last_scores[gen%128] = avg;
		
		float lavg = 0.0;
		if (gen < 128) {
			for (int i=0;i<gen;i++) {
				lavg += last_scores[i]/gen;
			}
		} else {
			for (int i=0;i<128;i++) {
				if (last_scores[i] >= 1000000) {
					lavg += last_scores[i]/128;
				}
			}
		}
		
		
		
		//mutation_rate = ((SPFR*SCENLENGHT*0.704375)-lavg)/(SPFR*SCENLENGHT*0.704375);
		
		cout << gen << "\t" << avg << "\t" << lavg << "\n";
		logfile << avg << "," << lavg << "\n";
		logfile.flush();	
		
		if (lognn && (gen % 32 == 0)) {
			char * tmpsavefn = (char *) malloc(strlen(filename)+16+1);
			sprintf(tmpsavefn, "lognn/%09d.%s", gen, filename);
			write_genepool(networks, tmpsavefn);
			free(tmpsavefn);
		}
		
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
		Network network(nn, false, 0);
		
		int score = rate_network(network, SPFR, SCENLENGHT);

		MPI_Send(&score, 1, MPI_INT, 0, 2, MPI_COMM_WORLD);
		
	}
	
	return 0;
}

int main(int argc, char ** argv) {
	
	MPI_Init(NULL, NULL);
	
	MPI_Comm_size(MPI_COMM_WORLD, &world_size);
	MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
	
	entity_count = world_size-1;
	
	srand(time(0)+((2+world_rank)<<4));
	
	if (argc >= 2) {
		if (strcmp(argv[1], "--dry") == 0) {
			float rho[LC][NW][NDC];
			Network net(rho, true, -1);
			while (1==1) {
				rate_network(net, 1, 1);
			}
			return 0;
		}
	}
	
	int slave_seed = rand();
	
	if (world_rank == 0) {
		main_master(argc, argv);
	} else {
		srand(slave_seed);
		main_slave();
	}
}


