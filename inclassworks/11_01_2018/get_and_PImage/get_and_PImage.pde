PImage img;


void setup(){
   size(800, 800);
  //imageMode(CENTER);
  img = loadImage("forest.png");

}

void draw(){
  //image(img, 0, 0, img.width, img.height);
  //int x = int(random(width));
  //int y = int(random(height));
  //color gotColor = img.get(x/2, y/2);
  //fill(gotColor);
  noStroke();
  //ellipse(x, y, 10,10);
  
  for(int x = 0; x < img.width; x+=10){
    for(int y = 0; y< img.height; y+=10){
      color gotColor = img.get(x,y);
      //stroke(gotColor);
      fill(brightness(gotColor));
      float size = map(brightness(gotColor), 0, 255, 0, 20);
      pushMatrix();
      translate(x*2, y*2);
      rotate(radians(map(brightness(gotColor), 0, 255, 0, 180) + frameCount));
      rectMode(CENTER);
      rect(0 , 0, 20, 20);
      popMatrix();
      
  }
}
}

// get function is also a class method of PImage
