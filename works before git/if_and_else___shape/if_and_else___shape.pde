//creat a shape moving left to right across the screen
//once the shape is off the side the screen,
//go back to the left, and down a littble bit
//and continue moving to the right.

float xPos = -50;
float yPos = 20;


void setup () {
  size (600,600);
 
}

void draw (){
  rectMode(CENTER);
  translate (xPos, yPos);
  rotate(radians(xPos));
  rect(0, 0, 30,30);
  xPos = xPos + 40;
  
  //if the rectangle position is off the right screen
  if (xPos > width + 50){
    xPos = 0;
    yPos = yPos + 40;
  }
  
  
}
