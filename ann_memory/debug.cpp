#include <iostream>

#include "network.h"
#include "rate_truthtables.h"


int main() {
	
	
	
	float rho[LC][NW][NDC] = {0.0};
	
	Network network(rho, true, 0);
	
	std::cout << rate_network(network, 2, 1) << "\n";
	
	
	return 0;
}
