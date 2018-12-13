boolean colorActive;

void setup(){
  size(600, 600);
  colorActive = false;
}

void draw(){
  if(colorActive){
    background(255, 0, 255);
  } else {
    background(0);
  }
}

void mousePressed(){
  colorActive = true;
}

void mouseReleased(){
  colorActive = false;
}
