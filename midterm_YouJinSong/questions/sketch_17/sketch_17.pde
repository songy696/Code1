// this array creates two arrays of floats but with 
// no size, and with no effect in the draw loop. 

// fix the sketch so that the arrays have some size 
// and values, and are then used to draw something to 
// the screen in the draw loop. 

// finally, add behavior that changes the value of each 
// float in the loop every frame. try to add more arrays 
// (for colors, angles, etc) if there is behavior that 
// you want to change that doesn't involve positions.
int manyRects = 300;
float[] xPositions = new float[manyRects];
float[] yPositions = new float [manyRects];

void setup() {
  size(600, 600);
  for (int i = 0; i < xPositions.length; i++) {
    
    xPositions[i] = random(width);
    yPositions[i] = random(height);

  }
}

void draw() {
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] += random(-10, 12);
    yPositions[i] += random(-10,12);
    //float move = map(i, 0, 50, 1 ,50);
    rect(xPositions[i], yPositions[i], 30, 30);
    fill(random(0,255));
  }
}
