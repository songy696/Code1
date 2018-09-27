void setup(){
  size(600,600);
}
float count = 0;

void draw () {
  //background(205);
  pushMatrix();
  translate(width/2,height/2);
  float degs = count;
  count = count + 1;
  float rads = radians(degs);
  print(rads);
  rotate(rads);
  rectMode(CENTER);
  rect(0,0,200,200);
  
  pushMatrix();
  translate(100,0);
  fill(count,mouseX,0);
  rotate(radians(count * 4));
  rect(0,0,30,30);
  popMatrix();
  
  
  pushMatrix();
  translate(300,0);
  rotate(radians(count *2));
  rect(0,0,50,50);
  popMatrix();
  
  //pushMatrix();
  //translate(200,0);
  //rect(0,0,100,100);
  //popMatrix();
  popMatrix();
  
  ellipse(0,0,200,200);
}
