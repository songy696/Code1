// Code 1 FA_18
// Bryan Ma

// 2d arrays part 3

// this sketch uses a 2d array of floats, used to store values that will be used as 
//  angles for matrix transformations. it creates the array with random angles, 
//  then draws lines at those angles in the draw loop.

// change the sketch so that the angles in setup are mapped somehow to the value of 
//  i and/or j. then in the draw loop, change the value of the angle at every position
//  in the 2d array by some amount, to make each line rotate. (see the gif in this folder for an example)
// experiment with sizes, shapes, colors, and adding additional 2d arrays to create 
// more values to store, draw with, and modify at runtime. 

int gridW = 20;
int gridH = 20;

float[][] angles = new float[gridW][gridH];
float[][] rotateAngleBy = new float[gridW][gridH];
float[][] sizes = new float [gridW][gridH];

void setup() {
  size(800, 800);
  stroke(255);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      //angles[i][j] = map(j, 0, gridH, 0, 180);
      angles[i][j] = map(i, 0, gridW, 0, 180);
      rotateAngleBy[i][j] = map(i,0,gridW,-2, 2);
    sizes[i][j] = map(i, 0, gridW,1, 10);
  }
  }
}

void draw() {
  background(0);
  
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      pushMatrix();
      translate(i * width/gridW, j * height/gridH);
      angles[i][j] += int(random(0,15));//map(j, 0, gridH, -3, 3); //rotateAngleBy[i][j]
    
      //float degrees = angles[i][j];
      //angles[i][j] = angles[i][j] +5;
      //float rads = radians(degrees);
      //rotate(rads);
      
      rotate(radians(angles[i][j]));
      
      float x1 = -width/gridW*0.5 * 1;
      float x2 =  width/gridW*0.5 * 1;
      
      line(x1, 0, x2, 0);
      popMatrix();
    }
  }
}
