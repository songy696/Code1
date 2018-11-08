// code 1 FA 18
// bryan ma

// color variable as class field

// this sketch uses a basic ball or particle-type behavior
// to create a "painting" kind of effect. while the mouse is 
// pressed, a new instance is created every five frames. 

// change the class definition of "Brushstroke" to have a 
// color field. Then change the constructor arguments to accept 
// a color argument, which should set the object's color field. 

// finally, update the line of code which creates new brushstrokes
// to accept a color value. try using a color value which maps to 
// the position of the mouse on the screen. see the example gif
// to get an idea.

Brushstroke b;

void setup() {
  size(600, 600);
  noStroke();
  background(255);
}

void draw() {
  if (mousePressed) {
    if (frameCount % 5 == 0) {
      b = new Brushstroke(mouseX, mouseY);
    }

    if (b != null) {
      b.update();
      b.display(100);
    }
  }
}


class Brushstroke {
  float x, y;
  float vx, vy;
  float siz;
  float lifetime = 10;
  color c; 

  Brushstroke(float x, float y) {
    this.x = x;
    this.y = y;
    vx = random(-8, 8);
    vy = random(-8, 8);
    siz = random(30, 60);
   
  }

  void update() {
    x += vx;
    y += vy;
  }

  void display(color c) {
    c = color(mouseX,mouseY,0);
    fill(c);
    noStroke();
    ellipse(x, y, siz, siz);
  }
}
