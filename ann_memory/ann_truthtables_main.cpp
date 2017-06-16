#include <iostream>
#include <cstring>
#include <cmath>
#include <random>
#include <ctime>
#include <list>

using namespace std;


#define ENTITY_COUNT 32


#define NACTION 4
#define NSTATE 4


#define MEMW 8

#define LC 4
#define NW NACTION+MEMW
#define NDC NW+2 // Neuron data count


#define MUTATION_RATE 0.5
#define MUTATION_COUNT 0.01

#define BIAS_MUTATION_RATIO 16

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

void nrdump(float nr[NW]) {
	cout << "[";
	for (int n=0;n<NW;n++) {
		cout << nr[n] << ", ";
	}
	cout << "]\n";
}

void sdump(bool states[NSTATE]) {
	cout << "[";
	for (int s=0;s<NSTATE;s++) {
		cout << states[s] << ", ";
	}
	cout << "]\n";
}


class Network {
	public:
	
	int score = 0;
	
	float nn[LC][NW][NDC];
	float last_a[LC][NW];
	
	float memory[MEMW];
	
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
	
	Network(float nn_template[LC][NW][NDC], bool mutate) {
		
		memcpy(nn, nn_template, sizeof(nn));
		memset(memory, 0, sizeof(memory));
		memset(last_a, 0, sizeof(last_a));
		
		if (mutate) {
			for (int l=0;l<LC;l++) {
				for (int n=0;n<NW;n++) {
					for (int d=0;d<NDC;d++) {
						if (rand() % ((int) (1.0/MUTATION_COUNT)) == 0) {
							float delta_w = distribution(generator);
							
							if (d == NW+1) {
								delta_w /= BIAS_MUTATION_RATIO; 
							}
							nn[l][n][d] += delta_w;
							
							if (d == NW && nn[l][n][d] < 0) {
								nn[l][n][d] = 0;
							}
						}
					}
				}
			}
		}
		
		
	}
	
	Network() {
		float rho[LC][NW][NDC];
		Network(rho, true);
	}
};


int rate_network(Network network, int cycles, int iterations) {
	
	int score = 0;
	
	bool states[NSTATE] = {0};
	
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
			score -= states[3];
			
		}
		
		
		network.reset();
		
	}
	
	return score;

}



bool compare_scores(const Network net1, const Network net2) {
	return (net1.score > net2.score);
}

int main() {
	
	float rho[LC][NW][NDC] = {0.0};
	srand(time(0));
	
	list<Network> networks;
	
	for (int i=0;i<ENTITY_COUNT;i++) {
		Network n(rho, true);
		networks.push_back(n);
	}
	
	while (1==1) {
		
		float avg = 0.0;
		
		for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
			it->score = rate_network(*it, 100, 100);
			avg += (float) it->score / ENTITY_COUNT;
		}
		
		for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
			cout << "Score: " << it->score << "\n";
		}
		
		networks.sort(compare_scores);
		list<Network> new_nets;
		
		int count=0;
		for (list<Network>::iterator it=networks.begin();it!=networks.end();it++) {
			count++;
			if (count > (ENTITY_COUNT/2)) {
				break;
			}
			
			Network net1(it->nn, true);
			Network net2(it->nn, true);
			
			new_nets.push_back(net1);
			new_nets.push_back(net2);
		}
		
		networks = new_nets;
		
		cout << avg << "\n";
		
	}
	
	return 0;
}

