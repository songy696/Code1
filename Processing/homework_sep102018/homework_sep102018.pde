void setup(){
  size(1000,700);
  //I dont know the colorMode but I just wanted to put it here
  colorMode (RGB, 600);
  //writing
  iTried();
}

void draw(){
  //chaning the background colors as the airplane moves
  background(abs (mouseX - 200), 0, (mouseY - 200));
  paperAirplane(mouseX, mouseY);
}

void iTried(){
  println("I really Tried");
}

//paper airplane
void paperAirplane(int x, int y){
  //chaning airplane colors as it moves
  fill(abs (mouseY - 200), 0, (mouseX - 200));
  stroke(255);
  strokeWeight(8);
  //bottom part of the paper airplane
  triangle(x + 8, y + 32, x + 180, y + 100, x + 200, y + 40);
  
  stroke(255);
  //the big part of the airplane
  beginShape();
  vertex(x - 50,y + 20);
  vertex( x + 180, y - 100);
  vertex( x + 240, y + 80);
  endShape(CLOSE); 
  
  //bisection line
  stroke(255);
  line( x - 50, y + 20, x + 210, y - 10);
  
}
