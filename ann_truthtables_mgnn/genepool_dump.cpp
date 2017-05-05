#include <iostream>
#include <fstream>

#define NACTION 4
#define NSTATE 4

#define MEMW 16

#define LC 4
#define NW NACTION+MEMW
#define NDC NW+2 // Neuron data count

using namespace std;

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

class Network {
	public:
	
	int score = 0;
	
	float nn[LC][NW][NDC];
	float last_a[LC][NW];
	
	float memory[MEMW];
	
	void propagate(float input[NW], float output[NW]);
	
	void get_actions(bool states[NSTATE], bool actions[NACTION]);
	
	void reset();
	
	Network(float nn_template[LC][NW][NDC], bool mutate);

};


int main(int argc, char ** argv) {
	
	if (argc > 2) {
		char * filename = argv[1];
		int entity_count = atoi(argv[2]);
		
		ifstream file(filename, ios_base::in | ios_base::binary);
		if (file.is_open()) {
			for (int s=0;s<entity_count;s++) {
				Network * netptr = (Network *) malloc(sizeof(Network));
				file.read(reinterpret_cast<char*>(netptr), sizeof(Network));
				
				nndump(netptr->nn);
				cout << "###";
			}
		}
		file.close();
	}
	
}
