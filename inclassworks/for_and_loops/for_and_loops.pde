void setup(){
  size(600, 600);
}

void draw() {
  //float bgcolor = map(mouseX, 0, width, 0, 255);
  //background(bgcolor);
  //println(bgcolor);
  
  //this loops over till i < 10
  for (int i =0; i <10; i++) {
    float c = map (i, 0, 10, 0 ,255);
    fill(c);
    ellipse(map(i, 0, 10, 0, width) + i *60, height/2, 50 -(i * 5), 50 + i * 10);
  }
  
  rect(0, 0, map(mouseX, 0, width, 0, 100), mouseY);
  
}
