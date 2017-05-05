#include <string.h>
#include <random>
#include <math.h>
#include <stdlib.h>

class Network {
	public:
	float * network;
	int * layer_sizes;
	int layer_count;
	
	int nn_size;
	int ac_size;
	
	float * activations;
	
	Network(int lc, int * ls, float * nn);
	void mutate(float rate, float sigma);
	float * nnGet(int layer, int neuron, int weight);
	float * acGet(float * activations, int layer, int neuron);
	float * propagate(float * input);
	
};
