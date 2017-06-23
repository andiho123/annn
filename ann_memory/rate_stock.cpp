#include <iostream>
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
	
	if (datafile == NULL) {
		std::cout << "Couldn't open all.ash!";
		exit(1);
	}
	
	fseek(datafile, 0, SEEK_END);
	
	long dcount = ftell(datafile)/sizeof(dpoint);
	
	fseek(datafile, 0, SEEK_SET);
	
	
	struct dpoint * data = (dpoint *) malloc(sizeof(dpoint)*dcount);
	
	int symbols = 0;
	
	for (int i=0;i<dcount;i++) {
		fread(&data[i], sizeof(dpoint), 1, datafile);
		if (data[i].new_file) {
			symbols++;
		}
	}
	fseek(datafile, 0, SEEK_SET);
	
	int symlength[symbols];
	
	int j=0;
	for (int i=0;i<dcount;i++) {
		fread(&data[i], sizeof(dpoint), 1, datafile);
		if (data[i].new_file) {
			j++;
			continue;
		}
		symlength[j] ++;
	}
	fseek(datafile, 0, SEEK_SET);
	
	
	struct dpoint ** quotes = (dpoint **) malloc(sizeof(dpoint *)*symbols);
	
	
	for (int i=0;i<symbols;i++) {	
		quotes[i] = (dpoint *) malloc(sizeof(dpoint)*symlength[i]);
		
		for (int j=0;j<symlength[i];j++) {
			fread(&quotes[i][j], sizeof(dpoint), 1, datafile);
		}
	}
		
	
	int score = 0;
	
	for (int cycle=0;cycle<10;cycle++) {
		int sym = rand() % symbols;
		int offset = rand() % (symlength[sym]-1000);
		
		if ((offset+6500) >= dcount) {
			offset -= 6000;
		}
		
		
		
		
		int money = 100000;
		int stock = 0;
		
		
		for (int i=0;i<1000;i++) {
			
			float input[NSTATE] = {0};
			
			memcpy(input+0, quotes[sym][offset].price_avg, sizeof(float)*7);
			memcpy(input+7, quotes[sym][offset].dprice_avg, sizeof(float)*7);
			input[14] = money/100000;
			input[15] = stock/1000;			
			
			float output[NACTION];
			
			network.iteration(input, output);
			
			if (output[0] > sigmoid(0)) {
				int amount = output[1] * 1000;
				
				if (amount * quotes[sym][offset].price_avg[0] > money) {
					amount = money / quotes[sym][offset].price_avg[0];
				}
				
				money -= amount * quotes[sym][offset].price_avg[0];
				stock += amount;
			}
			
			if (output[2] > sigmoid(0)) {
				int amount = output[3] * 1000;
				
				if (amount > stock) {
					amount = stock;
				}
				
				money += amount*quotes[sym][offset].price_avg[0];
				stock -= amount;
			}
			
			if (data[offset+i+1].new_file) {
				score += ((money + stock*quotes[sym][offset].price_avg[0])-100000)*1000/i;
				std::cout << "Offset " << offset << " Length " << i << " Money " << (money + stock*quotes[sym][offset].price_avg[0]) << "\n";
				break;
			}
		}
		std::cout << "Offset " << offset << " Length " << 999 << " Money " << (money + stock*data[offset+999].price_avg[0]) << "\n";
		score += (money + stock*data[offset+999].price_avg[0])-100000;
		
		
	}
	
	
	free(data);
	
	return score;
	
}
