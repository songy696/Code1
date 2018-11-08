PImage img;


void setup() {
  size(785, 785);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
}

void draw() {
  background(255);
  for (int i = 0; i < img.width; i+=20) {
    for (int j = 0; j < img.height; j+=20) {
      color c = img.get(i,j);
      float size = map(red(c), 255, 0, 10, 40);
      fill(red(c),blue(c),200);
      fill(c);
      ellipse(i, j, size, size);
    }
  }
}
