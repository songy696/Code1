//int X =200;
//int y =100;
int w = 600;
int h = 600;




//code that execute onely once at the beginning of the program
void setup() {
  // create canvas 600 x 600 pexels
  size (600,600);
  //draw a line from (0, 0) to the mouse
  //frameRate(10);
}


void draw() {

  //line(x,y,mouseX,mouseY);
  ellipse(mouseX, mouseY, 100, 100);
  
  //draw an ellipse to the center of the screen
  //evey frame, increase the width and height by 1
  noFill();
  ellipse(width/2, height/2, w, h);
  w = w - 12;
  h = h - 9;
}
