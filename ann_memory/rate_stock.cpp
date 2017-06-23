#include <fstream>
#include <math.h>
#include <string.h>

#include "network.h"

struct dpoint {
	float price_avg[7];
	float dprice_avg[7];
	bool new_file;
};



int rate_network(Network network, int cycles, int iterations) {
	
	FILE * datafile = fopen("all.ash", "rb");
	fseek(datafile, 0, SEEK_END);
	
	long dcount = ftell(datafile)/sizeof(dpoint);
	
	fseek(datafile, 0, SEEK_SET);
	
	struct dpoint * data = (dpoint *) malloc(sizeof(dpoint)*dcount);
	
	fread(&data, sizeof(dpoint), dcount, datafile);
	
	int score = 0;
	
	for (int cycle=0;cycle<10;cycle++) {
		long offset = rand() % dcount;
		
		while (data[offset].new_file == false) {
			offset--;
		}
		
		if ((offset+6500) >= dcount) {
			offset -= 6000;
		}
		
		offset += rand() % 6000;
		
		
		int money = 100000;
		int stock = 0;
		
		
		for (int i=0;i<1000;i++) {
			
			float input[NSTATE] = {0};
			
			memcpy(input+0, data[offset+i].price_avg, sizeof(float)*7);
			memcpy(input+7, data[offset+i].dprice_avg, sizeof(float)*7);
			input[14] = money/100000;
			input[15] = stock/1000;			
			
			float output[NACTION];
			
			network.iteration(input, output);
			
			if (output[0] > sigmoid(0)) {
				int amount = output[1] * 1000;
				
				if (amount * data[offset+i].price_avg[0] > money) {
					amount = money / data[offset+i].price_avg[0];
				}
				
				money -= amount * data[offset+i].price_avg[0];
				stock += amount;
			}
			
			if (output[2] > sigmoid(0)) {
				int amount = output[3] * 1000;
				
				if (amount > stock) {
					amount = stock;
				}
				
				money += amount*data[offset+i].price_avg[0];
				stock -= amount;
			}
			
			if (data[offset+i+1].new_file) {
				score += ((money + stock*data[offset+i].price_avg[0])-100000)*1000/i;
				break;
			}
		}
		
		score += (money + stock*data[offset+999].price_avg[0])-100000;
		
	}
	
	free(data);
	
	return score;
	
}
