#include "ann_swarm_mpi_swarm.h"


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
