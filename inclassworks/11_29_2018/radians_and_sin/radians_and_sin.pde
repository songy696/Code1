void setup(){
  size(600, 600);
}

float counter = 0;
void draw(){
  //background(200);
  //float s = sin(radians(frameCount))*100;
  ////sin(0 - TWO_PI) range
  //// PI = 180
  //ellipse(width/2, height/2, s, s);
  
  counter += TWO_PI/300; // speed
  float y = height/2 + sin(counter*5) * sin(radians(frameCount)) * 200;
  float x = height/2 + cos(counter*1) * cos(counter * 5) * 200;;
  //y *= sin(radians(frameCount)) * 10;
  //x *= cos(counter * 5) * 200;
  
  //fill(0);
  //ellipse(width/2, y, 50, 50);
  //ellipse(x, height/2, 50, 50);
  //fill(255);
  ellipse(x, y, 50, 50);
}
