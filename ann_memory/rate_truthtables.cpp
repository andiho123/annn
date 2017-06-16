#include <cstring>
#include <random>

#include <network.h>

using namespace std;

bool  AND[2][2] = {{0, 0}, {0, 1}};
bool   OR[2][2] = {{0, 1}, {1, 1}};

bool NAND[2][2] = {{1, 1}, {1, 0}};
bool  NOR[2][2] = {{1, 0}, {0, 0}};

bool  XOR[2][2] = {{0, 1}, {1, 0}};
bool XNOR[2][2] = {{1, 0}, {0, 1}};


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
			
			float input[NSTATE] = {0.0};
			for (int i=0;i<NSTATE;i++) {
				input[i] = states[i]?1.0:0.0;
			}
			
			float output[NACTION] = {0.0};
			
			network.iteration(input, output);
			
			bool new_states[NACTION] = {false};
			for (int i=0;i<NACTION;i++) {
				new_states[i] = (output[i]>sigmoid(0))?1:0;
			}
			
			
			for (int s=0;s<NSTATE;s++) {
				bool con1 = actions[dep_actions[s][0]];
				bool con2 = actions[dep_actions[s][1]];
				
				new_states[s] = conditions[s][con1][con2];
			}
			
			
			memcpy(states, new_states, sizeof(states));
			
			
			score += states[0];
			score -= states[3];
		}
		
		network.reset();
		
	}
	
	return score;
 
}
