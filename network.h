#define NACTION 16
#define NSTATE 16

#define MEMW 16

#define LC 4
#define NW (NACTION+MEMW)
#define NDC (NW+2) // Neuron data count


#define MUTATION_RATE 0.5
#define MUTATION_COUNT 0.01

#define BIAS_MUTATION_RATIO 16

float sigmoid(float z);
float memory_sigmoid(float a);

class Network {
	public:
	
	int score;
	float nn[LC][NW][NDC];
	bool mutation_map[LC][NW][NDC];
	float last_a[LC][NW];
	
	float memory[MEMW];
	
	void propagate(float input[NW], float output[NW]);
	
	void iteration(float input[NSTATE], float output[NACTION]);
	
	void reset();
	
	Network(float nn_template[LC][NW][NDC], bool mutate, float mutation_rate);
	
	
};


