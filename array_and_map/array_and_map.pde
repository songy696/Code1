//float[] myArr = {100, 200, 300};

//println (myArr[2]);
//myArr[0] = -100;
//myArr[1] *= 2;
//myArr [2] -= 5;

//float[] myArr2 = new float [10];
//myArr2[0] = 10;
//myArr2[9] = -1000;

float[] positions = new float [1000];

void setup() {
  size(1000,1000);
  for (int i = 0; i <100; i++) {
  positions[i] = map(i,0,100, 0, width);
  }
}

void draw () {
  background(255);
  for (int i = 0; i <100; i++){
    ellipse(positions[i], map(mouseX, 0, width, 0, 500), 10,300);
    positions[i] += random(-1,1);
  }
}
