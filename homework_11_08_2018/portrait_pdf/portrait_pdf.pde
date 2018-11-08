// code 1 FA 18
// bryan ma

// Saves one PDF of the contents of the display window each time the mouse is pressed.

// this code is taken from the processing examples in libraries/pdf export. 

// adapt this code to your portrait, and print out the resulting PDF.

import processing.pdf.*;

//boolean saveOneFrame = false;

PImage img;

void setup() {
  size(785, 785);
  frameRate(100);
  img = loadImage("doggo.jpg");
  //background(255);
  beginRecord(PDF, "doggo_hw4.pdf");
}

void draw() {
 int i = int(random(width));
  int j = int(random(width));
      color c = img.get(i,j);
      float size = map(red(c), 255, 0, 10, 40);
      fill(red(c),blue(c),200);
      fill(c);
      noStroke();
      ellipse(i, j, size, size);
}

//void mousePressed() {
//  saveOneFrame = true; 
//}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}
