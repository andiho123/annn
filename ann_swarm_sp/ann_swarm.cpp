#include <iostream>
#include <cstring>
#include <cmath>
#include <random>
#include <list>
#include <fstream>


#define LC 2
#define NW 28 // 4*rgb*sight + 4*rgb*pheronomes + 4*memory

#define SWARMCOUNT 32
#define ANTS_PER_SWARM 32

#define FOODCOUNT 1024*SWARMCOUNT

#define SIZE_X 640
#define SIZE_Y 480

using namespace std;

int pheronomes[SIZE_X][SIZE_Y][3] = {0};

int food[FOODCOUNT][3] = {0}; // pos + swarmid

default_random_engine generator;
normal_distribution<float> distribution(0.0,0.5);


class Swarm {
	
	public:
	int swarm_id;
	float ants[ANTS_PER_SWARM][6]; // position + memory
	
	
	
	private: 
	void propagate(float input[NW], float output[NW]) {
		float activations[NW] = {0};
		memcpy(activations, input, sizeof(activations));
		
		for (int layer=0;layer<LC;layer++) {
			
			float new_activations[NW] = {0};
			for (int neuron=0;neuron<NW;neuron++) {
				float a = 0.0;
				for (int weight=0;weight<NW;weight++) {
					a += activations[weight]*nn[layer][neuron][weight];
				}
				new_activations[neuron] = a;
			}
			
			
			memcpy(activations, new_activations, sizeof(activations));
		}
		
		for (int i=0;i<NW;i++) {
			output[i] = activations[i];
		}
	}
	
	void calculate_sight(int pos[2], float sight[4][3]) {
		
		memset(sight, 0, sizeof(float)*4*3);
		
		for (int i=0;i<=ANTS_PER_SWARM;i++) {
			int dx = ants[i][0]-pos[0];
			int dy = ants[i][1]-pos[1];
			
			float d = sqrtf(pow(dx, 2)+pow(dy, 2));
			
			float st = 10.0/(d+1);
			
			if (dx >= 0 && dy > 0) {
				sight[0][0] += st;
			}
			if (dx >= 0 && dy < 0) {
				sight[1][0] += st;
			}
			if (dx < 0 && dy < 0) {
				sight[2][0] += st;
			}
			if (dx < 0 && dy >= 0) {
				sight[3][0] += st;
			}
		}
		
		for (int i=0;i<FOODCOUNT;i++) {
			if (food[i][2] != swarm_id) { continue; }
			
			int dx = food[i][0]-pos[0];
			int dy = food[i][1]-pos[1];
			
			float d = sqrtf(pow(dx, 2)+pow(dy, 2));
			if (d > 20) { break; } //VERY IMPORTANT!
			if (d == 0) {
				score += 1;
				food[i][0] = rand() % SIZE_X;
				food[i][1] = rand() % SIZE_Y;
			}
			
			float st = 10.0/(d+1);
			
			if (dx >= 0 && dy >= 0) {
				sight[0][1] += st;
			}
			if (dx >= 0 && dy < 0) {
				sight[1][1] += st;
			}
			if (dx < 0 && dy < 0) {
				sight[2][1] += st;
			}
			if (dx < 0 && dy >= 0) {
				sight[3][1] += st;
			}
		}
		
	}
	
	void calculate_scent(int pos[2], float scent[4][3]) {
		memset(scent, 0, sizeof(float)*4*3);
		
		for (int x=0;x<SIZE_X;x++) {
			for (int y=0;x<SIZE_Y;y++) {
				int dx = x-pos[0];
				int dy = y-pos[1];
				
				float d = sqrtf(pow(dx, 2)+pow(dy, 2));
				float st = 5.0/(d+1);
				
				if (dx >= 0 && dy >= 0) {
					for (int j=0;j<3;j++) {
						scent[0][j] += st*pheronomes[x][y][j]/255;
					}
				}
				if (dx >= 0 && dy < 0) {
					for (int j=0;j<3;j++) {
						scent[1][j] += st*pheronomes[x][y][j]/255;
					}
				}
				if (dx < 0 && dy < 0) {
					for (int j=0;j<3;j++) {
						scent[2][j] += st*pheronomes[x][y][j]/255;
					}
				}
				if (dx < 0 && dy >= 0) {
					for (int j=0;j<3;j++) {
						scent[3][j] += st*pheronomes[x][y][j]/255;
					}
				}
			}
		}
		
	}
	
	public:
	
	int score;
	float nn[LC][NW][NW]; 
	
	void update() {
		for (int i=0;i<ANTS_PER_SWARM;i++) {
			
			int pos[2];
			pos[0] = ants[i][0];
			pos[1] = ants[i][1];
			
			float input[NW] = {0};
			
			float sight[4][3];
			float scent[4][3];
			
			calculate_sight(pos, sight);
			calculate_scent(pos, scent);
			
			memcpy(input, sight, sizeof(sight));
			memcpy(input+4, scent, sizeof(scent));
			
			
			for (int j=0;j<4;j++) {
				input[j+8] = ants[i][j+2];
			}
			
			
			float output[NW] = {0};
			
			propagate(input, output);
			
			float vx = output[0];
			float vy = output[1];
			
			float v = sqrtf(powf(vx, 2)+powf(vy, 2)); 
			if (v > 2) {
				vx = vx/v*2;
				vy = vy/v*2;
			}
			
			for (int j=0;j<3;j++) {
				pheronomes[pos[0]][pos[1]][0] = (int) output[2];
				pheronomes[pos[0]][pos[1]][1] = (int) output[3];
				pheronomes[pos[0]][pos[1]][2] = (int) output[4];
			}
			
			
			ants[i][0] += vx;
			ants[i][1] += vy;
			
		}
	}
	
	
	Swarm(int swarmid, float nn_template[LC][NW][NW]) {
		memset(nn, 0, sizeof(nn));
		memset(ants, 0, sizeof(nn));
		swarm_id = swarmid;
		score = 0;
		
		
		for (int l=0;l<LC;l++) {
			for (int n=0;n<NW;n++) {
				for (int w=0;w<NW;w++) {
					nn[l][n][w] += distribution(generator);
				}
			}
		}
		
		for (int i=0;i<ANTS_PER_SWARM;i++) {
			ants[i][0] = (float) (rand() % SIZE_X);
			ants[i][1] = (float) (rand() % SIZE_Y);
		}			
	}
	
	
};

bool compare_scores(Swarm first, Swarm second) {
	return (first.score > second.score);
}



char * filename;
list<Swarm> swarms;


int main() {
	startup:
	char mode;
	cout << "Mode ([n]ew or [l]oad): ";
	cin >> mode;
	
	
	if (mode == 'n') {
		cin >> "File name: ";
		cin >> filename;
		cout << "Generating new gene pool ... ";
		
		float rho[LC][NW][NW] = {0.0};
		
		for (int i=0;i<SWARMCOUNT;i++) {
			Swarm swarm(i, rho);
			swarms.push_back(swarm);
			for (int j=0;j<FOODCOUNT/SWARMCOUNT;j++) {
				food[i*(FOODCOUNT/SWARMCOUNT)+j][2] = i;
			}
		}
	} else if (mode == 'l') {
		cout << "File name: ";
		cin >> filename;
		if (filename[0] == 0x00) {
			cout << "No file name entered!\n";
			goto startup;
		}
		
			
			
					
	while (1==1) {
		for (int i=0;i<FOODCOUNT;i++) {
			food[i][0] = rand() % (SIZE_X-1);
			food[i][1] = rand() % (SIZE_Y-1);
		}
		
		
		for (int tick=0;tick<1000;tick++) {
			for (list<Swarm>::iterator it = swarms.begin();it != swarms.end(); it++) {
				(*it).update();
			}
			
			swarms.sort(compare_scores);
			
			for (list<Swarm>::iterator it = swarms.begin();it != swarms.end();it++) {
				
			
			
		}
		
			
		
	}
	
			
}
