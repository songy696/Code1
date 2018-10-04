float xPos = -10;
float yPos = 40;
float degs = 0;
boolean oppositeSide;


void setup () {
  size (600,600);
  noStroke();
}

void draw () {
  
  pattern();
  
  // I wanted to create some kind of rectangle rotation in the middle while pattern is going on
  // It turns out some random rectangles and words dispersed in some kind of radial patterns
  pushMatrix();
  if (xPos > width/2 && yPos > height/2) {
  oppositeSide = true;
  } 
  
  if (oppositeSide == true) {
  translate(width/2,height/2);
  float rads = radians(degs);
  rotate(rads + 200);
  rectMode(CENTER);
  rect(0,0,mouseX * 0.5, mouseY * 0.5);
  text("pattern making yey:)", width, height);
  }
  popMatrix();
  
}
  
// this is the pattern of rotating rectangles in every row
void pattern () {
  fill(-RGB,mouseX,mouseY);
  rectMode(CENTER);
  translate (xPos, yPos);
  degs = degs + 7;
  float rads = radians(degs);
  rotate(rads + 20);
  rect(0, 0, 50, 80);
  xPos = xPos + 10;
  
  
  if (xPos > width +10) {
    xPos = 0;
    yPos = yPos + 50;
}

}
