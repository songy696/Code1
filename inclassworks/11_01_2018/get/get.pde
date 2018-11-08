//get 


void setup(){
  size(600,600);
    for(int i = 0; i < 100; i++){
    color c = color(random(255), random(255), random(255));
    fill(c);
    ellipse(random(width), random(height), 100, 100);
  }
}

void draw(){
  color gotColor = get(mouseX, mouseY);
  println("red: " + red(gotColor) + "green: " + green(gotColor) + "blue: " + blue(gotColor));
  
  fill(gotColor);
  noStroke();
  ellipse(mouseX, mouseY, 100, 100);
}
