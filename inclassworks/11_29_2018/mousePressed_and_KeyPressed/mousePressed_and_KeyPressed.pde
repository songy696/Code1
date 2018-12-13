color bgcolor;
color rectColor;

void setup(){
  size(600, 600);
  bgcolor = color(0);
  rectColor = color(255);
}

void draw(){
  //function of mousePressed
  //if(mousePressed){
  //  background(255);
  //} else {
  //  background(0);
  //}
  
  background(bgcolor);
  
  //if(keyPressed){
  //  bgcolor = color(random(255), random(255), random(255));
  //}
  
  rectMode(CENTER);
  if(mousePressed ){
    if(mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 - 50 && mouseY < height/2 + 50){
    fill(rectColor);
    }
  } else {
    fill(255);
  }
  rect(width/2, height/2, 100,100);
  
}

void mousePressed(){
  rectColor = color(random(255), random(255), random(255));
}

void keyPressed(){ //event: only called on the initial mouse/key press
  bgcolor = color(random(255), random(255), random(255));
}
