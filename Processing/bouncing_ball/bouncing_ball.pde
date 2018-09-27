int x, y;
int size;

int xSpeed, ySpeed;

color bgColor;
int r, g, b;
int colorRange;

void setup (){
  size(600, 600);
  x = width/2;
  y = height/2;
  
  //xSpeed = int(random(-5,5));
  //ySpeed = int(random(-5,5));
  size = 100;
}


void draw (){
  
  background(bgColor);
  
  colorRange = int(map(x, 0, width, 0, 150));
  //first two varibales are the natural range of value "x"
  //the second two variables are the new range you wnat to map
  //your variable too
  
  bgColor = color(colorRange, colorRange, 100);
  
  noStroke();
  g = int(map(y,0,height,0,255));
  b = int(map(mouseX, 0, width, 0, 255));
  fill(0,g,b);
  ellipse (x, y, size, size);
  
  if(xSpeed==0 || ySpeed == 0 || xSpeed == ySpeed) {
    xSpeed = int(random(-5,5));
    ySpeed = int(random(-5,5));
  }
  println ("x: " + xSpeed + "y: " + ySpeed);

  x = x + xSpeed;
  y = y + ySpeed;
  
  if (x <= size/2 || x >= width - size/2){
    //xSpeed = int(random(-5,5));
    xSpeed = - xSpeed;
    
  }
  
  if (y <= size/2 || y >= height- size/2){
    ySpeed = - ySpeed;
    //ySpeed = int(random(-5,5));
  }

}
