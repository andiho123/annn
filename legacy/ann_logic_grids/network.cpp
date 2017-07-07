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
	
	Network(int lc, int * ls, float * nn) {
		layer_count = lc;
		layer_sizes = (int *) malloc(sizeof(int)*(lc+1)); // + input layer
		memcpy(layer_sizes, ls, sizeof(int)*(lc+1));
		
		nn_size = 0;
		for (int l=1;l<(lc+1);l++) {
			nn_size += (*(layer_sizes+l))*(*(layer_sizes+l-1));
		}
		
		ac_size = 0;
		for (int l=0;l<lc;l++) {
			ac_size += *(layer_sizes+1+l);
		}
		
		network = (float *) malloc(sizeof(float)*nn_size);
		memcpy(network, nn, sizeof(float)*nn_size);
		
		activations = (float *) malloc(sizeof(float)*ac_size);
	}
	
	void mutate(float rate, float sigma) {
		
		for (int i=0;i<nn_size;i++) {
			if (rand() % ((int) (1.0/rate)) == 0) {
				*(network+i) += (( ((float) (rand() % 1024)) / 512)-1)*sigma;
				
			}
		}
		
	}
	
	float * nnGet(int layer, int neuron, int weight) {
		int offset = 0;
		
		for (int l=0;l<layer;l++) {
			offset += (*(layer_sizes+1+l))*(*(layer_sizes+l));
		}
		
		for (int n=0;n<neuron;n++) {
			offset += (*(layer_sizes+layer));
		}
		
		offset += weight;
		
		return network+offset;
	}
	
	float  * acGet(float * activations, int layer, int neuron) {
		int offset = 0;
		
		for (int l=0;l<layer;l++) {
			offset += (*(layer_sizes+layer+1));
		}
		offset += neuron;
		
		return activations+offset;
	}
	
	float * propagate(float * input) {
		int nrsize = *(layer_sizes+layer_count);
		float * ll = (float *) malloc(sizeof(float)*nrsize);
		
		memcpy(activations, input, sizeof(float)*(*layer_sizes));
		
		for (int layer=0;layer<layer_count;layer++) {
			for (int neuron=0;neuron<*(layer_sizes+layer+1);neuron++) {
				float a=0;
				for (int weight=0;weight<*(layer_sizes+layer);weight++) {
					a += (*nnGet(layer, neuron, weight))*(*acGet(activations, (layer-1), weight));
				}
				
				*(acGet(activations, layer, neuron)) = a;
			}
		}
		
		memcpy(ll, acGet(activations, layer_count-1, 0), sizeof(float)*nrsize);
		
		return ll;
	}
};

