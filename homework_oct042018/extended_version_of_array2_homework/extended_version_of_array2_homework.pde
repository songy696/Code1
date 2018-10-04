int numShapes = 500;
float[] xPositions = new float[numShapes];
float[] yPositions = new float[numShapes];
//create array
//how big is it?
//give start values
//draw loop, doing something with it
//if we have stored the value, implies we need to remember it.
//

void setup() {
  size(600, 600);
  noStroke();
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(width);
    yPositions[i] = map(i, 0, yPositions.length, height/2, height - 150);
  }
}

void draw() {
  background(180);
    for(int i = 0; i < xPositions.length; i ++){
      float size = map(i, 0, xPositions.length, 310, 10);
      fill(map(i, 0, xPositions.length, 10, 255));
    ellipse(xPositions[i], yPositions[i], size, size);
    
       xPositions[i] -= map(i, 0, xPositions.length, 1, 10);
   
   if (xPositions[i] < -size/2){
     xPositions[i] = width + size/2;
  }
    yPositions[i] += map(noise(i * 0.001), 0, 1, 0, 1);
    }
  
  //do something to change the values
}
