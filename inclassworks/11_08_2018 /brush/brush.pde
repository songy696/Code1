int [] size = new int[4];
color c;
void setup(){
  size(600, 600);
  for (int i = 0; i < 4; i ++){
    size [i] = i * 10;
  }
  
  c = color(random(0,255), random(0,255), random(0,255));
}

void draw(){
  //how can we change our brush size, based on what key pressed
  // if im pressing number 1 key, set brush size to 10
  for ( int i = 0; i < 4; i ++){
  if(mousePressed){
    noStroke();
    fill(c);
    ellipse(mouseX, mouseY, size[i], size[i]);
    }
  }
}

void mouseMoved(){
  c +=100;
  if(c > 255) {
    c = 0;
  }
}
