// Code_1_FA18
// Week 7
// Bryan Ma

// this sketch creates 10 instances of a ball class. 
// it does this in the setup() function in a loop instead of 
//  doing it based on mouse presses as we did in class.

// review this approach, then create your own class that draws
//  a different visual to the screen with its own behavior. 
//  it could be abstract or more explicit. think about how to 
//  parameterize your object's constructor. once you've created 
//  a class like this, create a number of instances of your 
//  class on the canvas by any means you prefer.

ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(800, 800);
  
  for (int i = 0; i < 100; i++) {
    balls.add(new Ball(width/2, height/2));
  }
}

void draw() {
  background(30);
  for (int i = 0; i < balls.size(); i++) {
    Ball ball = balls.get(i);
    ball.display();
    ball.update();
  }
}

class Ball {
  // what does it have and do? 
  // create the variables
  // position x,y
  // velocity x,y
  float posX;
  float posY;
  float velX;
  float velY;
  float size;
  int i;
  float colors = color(200);

  // create the constructor
  Ball(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(-5, 10);
    this.velY = random(-5, 10);
    this.size = random(5, 100);
    fill(colors);
  }

  // draw to the screen
  void display() {
    for(int i =0; i < 100; i++){
      float d = dist(mouseX, mouseY, posX, posY);
      colors = color(map(d, 0, 200, 255, 200), map(d, 0, 20, 255, 200), map(d, 0, 200, 255, 200));
      fill(colors);
    }
    
   
    ellipse(this.posX, this.posY, size, size);
  }

  // update its position and velocity.
  void update() {
    this.posX += this.velX;
    this.posY += this.velY;

    // check if it goes off
    if (this.posX > width-this.size/2 || this.posX < this.size/2) {
      this.velX *= -1;
    }
    if (this.posY > height-this.size/2 || this.posY < this.size/2) {
      this.velY *= -1;
    }
    
    
  }
}
