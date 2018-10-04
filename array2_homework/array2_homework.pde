// Code 1 FA_18
// Bryan Ma

// use the foundation of the last code challenge, and instead of drawing 5 ellipses, 
// draw a large number of shapes (ellipses or whatever) using a larger array to store their x positions.
// use map to affect the parameters of them being drawn, like size or color.

// once you've done that, try adding another corresponding array to store their y positions.

// finally, try modifying the values you've stored every frame to make the shapes change their positions somehow.

float[] xPositions = new float[50];
float[] yPositions = new float[20];
float[] tPositions = new float[20];

void setup() {
  size(600, 600);
  noStroke();
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = map(i, 0, 50, 40, 570);
  }
  for (int j = 0; j < yPositions.length; j++){
    yPositions[j] = random(width);
    tPositions[j] = random(height);
  }
}

void draw() {
    background(50,80,20);
    for(int i = 0; i < xPositions.length; i ++){
      fill(random(0,255));
      ellipse(xPositions[i], height/2, 80, map(mouseY, 0, height, 100, 500));
  }
  
   for (int j = 0; j < yPositions.length; j++){
      ellipse(yPositions[j], tPositions[j], random(10, 20), random (10, 20));
      yPositions[j] += random(-3,3);
      tPositions[j] += random(-3,3);
  }
}
