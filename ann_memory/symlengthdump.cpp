#include <iostream>
#include <fstream>

using namespace std;

struct dpoint {
	float priceavg[7];
	float dpriceavg[7];
	
	bool new_file;
};



int main(int argc, char ** argv) {
	if (argc < 2) {
		return 1;
	}

	FILE * f = fopen(argv[1], "r");

	int l = 0;
	int i = -1;
	while (1==1) {
		struct dpoint d;
		fread(&d, sizeof(struct dpoint), 1, f);

		if (d.new_file) {
			cout << i << " " << l << "\n";
			i++;
			l = 0;
			continue;
		}

		l++;
	}
}
