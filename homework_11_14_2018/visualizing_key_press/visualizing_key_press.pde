// code 1 FA18
// bryan ma

// visualizing key presses 2

// see previous sketch w11_05_visualizingInput2 for instructions.

int x;
int y;
boolean newKeyShape = false;
boolean newMouseShape = false;
int numChars = 26;  
color[] colors = new color[numChars];

void setup() {
  size(800, 800);
  colorMode(HSB, numChars);
  for(int i = 0; i < numChars; i++) {
    colors[i] = color(i, numChars, numChars);    
  }
}

void draw() {
  if (newKeyShape) {
    fill(random(numChars), random(numChars), random(numChars));
    ellipse(x, y, 100, 100);
    newKeyShape = false;
  }
  if (newMouseShape) {
    fill(random(numChars), random(numChars), random(numChars));
    rect(x, y, 80, 80);
    newMouseShape = false;
  }
}

void keyPressed() {
  setPosition();
  newKeyShape = true;
}

void mousePressed() {
  setPosition();
  newMouseShape = true;
}

void setPosition() {
  x = int(random(width));
  y = int(random(height));
}
