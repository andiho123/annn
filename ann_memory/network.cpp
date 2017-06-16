#include <iostream>
#include <random>
#include <cstring>
#include <cmath>

#include "network.h"

#define NACTION 4
#define NSTATE 4

#define MEMW 16

#define LC 4
#define NW (NACTION+MEMW)
#define NDC (NW+2) // Neuron data count


#define MUTATION_RATE 0.5
#define MUTATION_COUNT 0.01

#define BIAS_MUTATION_RATIO 16


float sigmoid(float z) {
	return z; // 1.0/(1-expf(-z));
}

float memory_sigmoid(float a) {
	return 2.0/(1+expf(-a))-1.0;
}


std::default_random_engine generator;
std::normal_distribution<float> distribution(0.0, MUTATION_RATE);


void Network::propagate(float input[NW], float output[NW]) {
	
	float activations[NW];
	memcpy(activations, input, sizeof(activations));
	
	
	for (int l=0;l<LC;l++) {
		
		float new_activations[NW] = {0};
		
		
		for (int n=0;n<NW;n++) {
			for (int w=0;w<NW;w++) {
				new_activations[n] += nn[l][n][w] * activations[w];
			}
			
			new_activations[n] += nn[l][n][NW+1];
			
			new_activations[n] = (sigmoid(new_activations[n])-last_a[l][n])*(1.0/(1+nn[l][n][NW+0]))+last_a[l][n];
			last_a[l][n] = new_activations[n];
		}
		memcpy(activations, new_activations, sizeof(new_activations));
		
	}
	memcpy(output, activations, sizeof(activations));
	
}

void Network::iteration(float input[NSTATE], float output[NACTION]) {
	
	for (int i=0;i<MEMW;i++) {
		input[i+NSTATE] = memory_sigmoid(this->memory[i]);
	}
	
	propagate(input, output);
	
	memcpy(this->memory, &output[NACTION], sizeof(this->memory));
}

void Network::reset() {
	memset(memory, 0, sizeof(memory));
	memset(last_a, 0, sizeof(last_a));
}

Network::Network(float nn_template[LC][NW][NDC], bool mutate, float mutation_rate) {
	
	memcpy(nn, nn_template, sizeof(nn));
	memset(memory, 0, sizeof(memory));
	memset(last_a, 0, sizeof(last_a));
	memset(mutation_map, 0, sizeof(mutation_map));
	
	
	
	if (mutate) {
		for (int l=0;l<LC;l++) {
			for (int n=0;n<NW;n++) {
				for (int d=0;d<NDC;d++) {
					if (rand() % ((int) (1.0/MUTATION_COUNT)) == 0) {
						float delta_w = distribution(generator)*mutation_rate*0.5;
						
						if (d == NW+1) {
							delta_w /= BIAS_MUTATION_RATIO; 
						}
						nn[l][n][d] += delta_w;
						
						if (d == NW && nn[l][n][d] < 0) {
							nn[l][n][d] = 0;
						}
						
						mutation_map[l][n][d] = true;
						
					}
					
				}
			}
		}
	}
	
	
}
	
	
