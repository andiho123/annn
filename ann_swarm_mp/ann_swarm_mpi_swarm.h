
class Swarm {
	public:
	
	float nn[LC][NW][WW];
	int score;
	int ants[ANTS_PER_SWARM][3];
	int honeypots[HONEYPOT_COUNT][2];
	
	float memory[4] = 0;
	
	void propagate(float input[NW], float output[NW]);
	
	void calculate_scent(int antid, float scent[4]);
	
	bool in_honeypot(int antid);
	
	void update();
	
	Swarm(float nn_template[LC][NW][WW], bool mutate);
	
	
	
	
};
