void setup(){
  size(600,600);
}

void draw(){
 
  if (mouseX > width/2) {
    background(255,0,0);
  } else if (mouseX > width/4){
    background(0,255,0);
  } else {
    background(0);
  }
  
  line (width/2, 0, width/2, height);
  line (3 * width/4, 0, width/4, height);
  
}
