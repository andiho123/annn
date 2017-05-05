#include <iostream>
#include <cstring>
#include <cmath>
#include <random>
#include <list>
#include <fstream>

#include "opencv2/core/core.hpp"
#include "opencv2/flann/miniflann.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/photo/photo.hpp"
#include "opencv2/video/video.hpp"
#include "opencv2/features2d/features2d.hpp"
#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/calib3d/calib3d.hpp"
#include "opencv2/ml/ml.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/contrib/contrib.hpp"



#define LC 2
#define NW 8

#define ANTCOUNT 32
#define FOODCOUNT 1024
#define ZAPPERCOUNT 8

#define DURATION 1024



using namespace std;

int SIZE[2] = {640, 480};

int food[FOODCOUNT][3]; // [x, y, eaten]
int zappers[ZAPPERCOUNT][3];

default_random_engine generator;
normal_distribution<float> distribution(0.0,0.5);



class Ant {
	private:
		
		void propagate(float input[NW], float output[NW]) {
			
			float activations[NW] = {0.0};
			memcpy(activations, input, sizeof(activations));
			
			for (int layer=0;layer<LC;layer++) {
				
				float new_activations[NW] = {0};
				for (int neuron=0;neuron<NW;neuron++) {
					float a = 0.0;
					for (int weight=0;weight<NW;weight++) {
						a += activations[weight]*nn[layer][neuron][weight];
					}
					new_activations[neuron] = a;
				}
				
				
				memcpy(activations, new_activations, sizeof(activations));
			}
			
			for (int i=0;i<NW;i++) {
				output[i] = activations[i];
			}
		}
		
		
		
		
		void calculate_attraction(float atrc[4]) {
			
			for (int i=0;i<4;i++) atrc[i] = 0;
			
			float closest_distance = 10000000.0;
			int closest_index = -1;
			int dpos[2] = {0, 0};
			
			for (int i=0;i<FOODCOUNT;i++) {
				
				float d = sqrtf(powf(pos[0]-food[i][0], 2)+powf(pos[1]-food[i][1], 2));
				if (d < closest_distance && food[i][2] == 1) {
					closest_distance = d;
					closest_index = i;
					
					dpos[0] = food[i][0]-pos[0];
					dpos[1] = food[i][1]-pos[1];
				}
			}
			
			//cout << "D(" << dpos[0] << "|" << dpos[1] << ")\n";
			
			if (closest_index == -1) {
				return;
			}
			
			if (closest_distance < 1) {
				food[closest_index][2] = 0; // "alive"
				score ++;
				return;
			}
			
			
			atrc[0] = (dpos[1]<0)?(1.0/(-dpos[1]+1)):0;
			atrc[1] = (dpos[1]>=0)?(1.0/(dpos[1]+1)):0; //GRRRRRRRRR
			
			atrc[2] = (dpos[0]<0)?(1.0/(-dpos[0]+1)):0;
			atrc[3] = (dpos[0]>=0)?(1.0/(dpos[0]+1)):0;
		}
		
		void calculate_zapper_attraction(float atrc[4]) {
			
			for (int i=0;i<4;i++) atrc[i] = 0;
			
			float closest_distance = 10000000.0;
			int closest_index = -1;
			int dpos[2] = {0, 0};
			
			for (int i=0;i<ZAPPERCOUNT;i++) {
				
				float d = sqrtf(powf(pos[0]-zappers[i][0], 2)+powf(pos[1]-zappers[i][1], 2));
				if (d < closest_distance && zappers[i][2] == 1) {
					closest_distance = d;
					closest_index = i;
					
					dpos[0] = zappers[i][0]-pos[0];
					dpos[1] = zappers[i][1]-pos[1];
				}
			}
			
			
			if (closest_index == -1) {
				return;
			}
			
			if (closest_distance < 5) {
				score -= 1.0/(pow(closest_distance, 2)+1);
			}
			
			
			
			atrc[0] = (dpos[1]<0)?(1.0/(-dpos[1]+1)):0;
			atrc[1] = (dpos[1]>=0)?(1.0/(dpos[1]+1)):0; 
			
			atrc[2] = (dpos[0]<0)?(1.0/(-dpos[0]+1)):0;
			atrc[3] = (dpos[0]>=0)?(1.0/(dpos[0]+1)):0;
		}
		
	public:
		int score = 0;
		int pos[2] = {0, 0};
		float ppos[2] = {0, 0};
		float nn[LC][NW][NW];
		
		Ant(float nn_template[LC][NW][NW]) {
			//cout << "Ant created\n";
			
			score = 0;
			
			pos[0] = rand() % (SIZE[0]-1);
			pos[1] = rand() % (SIZE[1]-1);
			ppos[0] = (float) pos[0];
			ppos[1] = (float) pos[1];
			
			memcpy(nn, nn_template, sizeof(nn));
			
			for (int l=0;l<LC;l++) {
				for (int n=0;n<NW;n++) {
					for (int w=0;w<NW;w++) {
						nn[l][n][w] += distribution(generator);
						
					}
				}
			}
			
		}
		
		void update() {
			
				float atrc[4];
				float zatrc[4];
				calculate_attraction(atrc);
				calculate_zapper_attraction(zatrc);
				
				float input[8] = {atrc[0], atrc[1], atrc[2], atrc[3],
					 zatrc[0], zatrc[1], zatrc[2], zatrc[3]};
				float output[8] = {0};
				propagate(input, output);
				
				//cout << output[0] << "|" << output[1] << "|" << output[2] << "|" << output[3] << "\n";
				
				float vx = output[3]-output[2];
				float vy = output[0]-output[1];
				
				float v = sqrt(pow(vx, 2)+pow(vy, 2));
				
				if (v > 2) {
					vx = (vx/v)*2;
					vy = (vy/v)*2;
				}
				
				ppos[0] += vx;
				ppos[1] += vy;
				
				ppos[0] = fmod(ppos[0], (float) SIZE[0]-1);
				ppos[1] = fmod(ppos[1], (float) SIZE[1]-1);
				if (ppos[0] < 0) {ppos[0] += SIZE[0];}
				if (ppos[1] < 0) {ppos[1] += SIZE[1];}
				
				pos[0] = (int) ppos[0];
				pos[1] = (int) ppos[1];
				
				
				
			
		}
};


bool compare_scores(const Ant first, const Ant second) {
	return (first.score > second.score);
}


cv::Mat screen(SIZE[1], SIZE[0], CV_8UC3, cv::Scalar(0, 0, 0));
list<Ant> ants;

int delay = 1;

void draw(int tick) {
	screen = cv::Scalar(0, 0, 0);
	for (int i=0;i<tick;i++) {
		screen.at<cv::Vec3b>(cv::Point((int)(((float)i)/DURATION)*SIZE[0], 0)) = cv::Vec3b(255, 255, 255);
	}
	
	for (int i=0;i<FOODCOUNT;i++) {
		if (food[i][2]) {
			screen.at<cv::Vec3b>(cv::Point(food[i][0], food[i][1])) = cv::Vec3b(255, 0, 0);
		}
	}
	
	for (int i=0;i<ZAPPERCOUNT;i++) {
		if (zappers[i][2]) {
			screen.at<cv::Vec3b>(cv::Point(zappers[i][0], zappers[i][1])) = cv::Vec3b(0, 0, 255);
		}
	}
	
	for (list<Ant>::iterator it=ants.begin();it!=ants.end();it++) {
		screen.at<cv::Vec3b>(cv::Point((*it).pos[0], (*it).pos[1])) = cv::Vec3b(0, 255, 255);
		//cout << "P(" << (*it).pos[0] << "|" << (*it).pos[1] << ")\n";
	}
	
	cv::imshow("screen", screen);
	
	if (cv::waitKey(delay) == 's') {
		if (delay == 1) {
			delay = 100;
		} else if (delay == 100) {
			delay = 2;
		} else if (delay == 2) {
			delay = 1;
		}
	}	
}

void write_genepool(char * filename) {
	ofstream outfile(filename, ios_base::out | ios_base::binary);
	for (list<Ant>::iterator it=ants.begin();it!=ants.end();it++) {
		outfile.write(reinterpret_cast<char*>(&(*it)), sizeof(Ant));
	}
	outfile.close();
}



int gen = 0;

int main() {
	
	float rho[LC][NW][NW] = {0.0};
	
	char filename[20];
	
	cout << "File name: ";
	cin.getline(filename, 20);
	
	bool nf = false;
	
	if (filename[0] == 0x00) {
		cout << "No file name entered, starting new gene pool...\n";
		nf = true;
	} else {
		ifstream file(filename, ios_base::in | ios_base::binary);
		for (int a=0;a<ANTCOUNT;a++) {
			Ant ant(rho);
			file.read(reinterpret_cast<char*>(&ant), sizeof(Ant));
			ants.push_back(ant);
		}
		file.close();
	}
	
	
	srand(time(NULL));
	
	if (nf) {
		for (int i=0;i<ANTCOUNT;i++) {
			Ant ant(rho);
			ants.push_back(ant);
		}
	}
	
	if (nf) {
		cout << "New file name: ";
		cin.getline(filename, 20);
		write_genepool(filename);
	} 
	
	
	// Main
	cout << "Start\n";
	
	
	
	while (1==1) {
		
		for (int i=0;i<FOODCOUNT;i++) {
			food[i][0] = rand() % (SIZE[0]-1);
			food[i][1] = rand() % (SIZE[1]-1);
			
			food[i][2] = 1;
		}
		
		for (int i=0;i<ZAPPERCOUNT;i++) {
			zappers[i][0] = rand() % (SIZE[0]-1);
			zappers[i][1] = rand() % (SIZE[1]-1);
			zappers[i][2] = 1; // For compability with food array
		}
		
		for (int tick=0;tick<1000;tick++) {
			for (list<Ant>::iterator it=ants.begin();it != ants.end(); it++) {
				(*it).update();
			}
			if (tick % 100 == 0 || delay != 2) {
				draw(tick);
			}
		}
		
		float avg = 0.0;
		
		for (list<Ant>::iterator it=ants.begin();it != ants.end(); it++) {
			avg += (float) (*it).score/ANTCOUNT;
		}
		
		ants.sort(compare_scores);
		
		int c = 0;
		float uavg = 0.0; // Upper average
		list<Ant> new_ants;
		for (list<Ant>::iterator it=ants.begin();it != ants.end(); it++) {
			if (c == ANTCOUNT/2) { break; }
			uavg += (float) (*it).score/(ANTCOUNT/2);
			Ant ant1((*it).nn);
			Ant ant2((*it).nn);
			
			new_ants.push_back(ant1);
			new_ants.push_back(ant2);
			c++;
		}
		
		ants = new_ants;
		
		
		cout << gen << "\t" << avg << "\t" << uavg << "\n";
		write_genepool(filename);
		gen++;
		
	}
	

	
	
	cout << "End\n";
	
	return 0;
	
}









