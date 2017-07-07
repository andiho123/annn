#include <iostream>
#include <cmath>
#include <cstring>

#include "network.h"

using namespace std;

struct dpoint {
	float price_avg[7];
	float dprice_avg[7];
	
	bool new_file;
};


int main(int argc, char ** argv) { // fn gpfile history-file symbol offset
	
	if (argc < 5) {
		cout << "Usage: ./stock_test <genepool> <ashfile> <symbol> <offset>\n";
		return 1;
	}
	
	float rho[LC][NW][NDC] = {0};

	FILE * gpfile = fopen(argv[1], "r");
	
	Network network(rho, 0, 0);
	fread(&network, sizeof(Network), 1, gpfile);
	fclose(gpfile);

	FILE * ashfile = fopen(argv[2], "r");
	struct dpoint d;
	for (int i=0;i<atoi(argv[3]);i++) {
		while (!d.new_file) {
			fread(&d, sizeof(struct dpoint), 1, ashfile);
		}
	}

	fseek(ashfile, atoi(argv[4])*sizeof(struct dpoint), SEEK_CUR);

	
	float money = 100000;
	int stock = 0;
	
	for (int i=0;i<1000;i++) {
		fread(&d, sizeof(struct dpoint), 1, ashfile);
		
		cout << money << "\t" << stock << "\t" << d.price_avg[0] << "\t" << d.dprice_avg[0] << "\t";
		
		float input[NSTATE];
		memcpy(input, d.price_avg, sizeof(d.price_avg));
		memcpy(input+7, d.dprice_avg, sizeof(d.dprice_avg));
		input[14] = money/100000;
		input[15] = stock/1000;
		
		float output[NACTION];
		network.iteration(input, output);

		if (output[0] > 0 && output[1] > 0) { // Buy
			int amount = output[1];
			if (amount*d.price_avg[0] > money) {
				amount = money/d.price_avg[0];
			}
			stock += amount;
			money -= amount*d.price_avg[0];
			cout << amount << "\t";
		} else {
			cout << "0\t";
		}

		if (output[2] > 0 && output[3] > 0) { // Sell
			int amount = output[3];
			if (amount > stock) {
				amount = stock;
			}

			stock -= amount;
			money += amount*d.price_avg[0];
			cout << amount << "\t";
		} else {
			cout << "0\t";
		}

		cout << "\n";

	}
}
