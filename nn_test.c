#include <stdio.h>

#define LC 4
#define NW 10


void propagate(float nn[LC][NW][NW], float activations[NW]) {
	
	for (int l=0;l<LC;l++) {
		float na[NW] = {0};
		for (int n=0;n<NW;n++) {
			for (int w=0;w<NW;w++) {
				na[n] += nn[l][n][w]*activations[w];
			}
		}
	}
}


int main() {
	float nn[LC][NW][NW];
	float act[NW];
	
	propagate(nn, act);
	
	return 0;
}
