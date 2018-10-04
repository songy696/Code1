//draw 100 ellipsese to the screen in random locations
//every frame, we'll move each ellipse in some random amount, a few pixels in each time

float[] xPositions = new float[100];
float[] yPositions = new float[100];

//give the arrays random values
//random() --> 0 -1
//random(5) --> 0 - 5
//random (5, 10) --> 5 - 10

void setup(){
  size(1000, 1000);
  //xPositions.length is = float [100]
  for(int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(width);
    yPositions[i] = random(height);
  }
}

void draw () {
  background(150);
  noStroke();
  
  for (int i= 0; i < xPositions.length; i++); {
    fill(map(i, 0, xPositions[i]
    ellipse(xPositions[i], yPositions[i], 30, 30);
    xPositions[i] += random(-3,3);
    yPositions[i] += random(-3,3);
  }
}
