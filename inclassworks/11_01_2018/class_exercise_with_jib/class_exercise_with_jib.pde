PImage dog;
void setup(){
  size(400,400);
  imageMode(CENTER);
  dog = loadImage("dog.jpeg");
  
}

void draw(){
  background(255);
  noStroke();
  float speed;
 
  //image(woman, 0, 0, woman.width, woman.height);
  
  
  for(int x = 0; x < dog.width; x+=3){
    for(int y = 0; y< dog.height; y+=10){
      color gotColor = dog.get(x,y);
      speed = 5;
      //stroke(gotColor);
      fill(color(gotColor));
      //float size = map(brightness(gotColor), 0, 255, 0, 20);
      pushMatrix();
      translate(x*2, y*2);
      rotate(radians(map(color(gotColor), 0, 255, 0, 180) + frameCount));
      rectMode(CENTER);
      rect(0 , 0, 18, 10);
      popMatrix();

    }
  }
}
