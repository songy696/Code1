class Paddle{
  PVector pos;
  int w, h;
  float angle;
  
  Paddle(int whichPlayer){
    w = 25;
    h = 100;
    angle -=2;
    
    if(whichPlayer == 1){
      pos = new PVector(50, height/2 - h/2);
    }
    else if(whichPlayer == 2){
      pos = new PVector(width-50 -w, height/2 - h/2);
    }
    
  }
      
  void update(boolean up, boolean down, float counter){
    // cehck if appropriate booleans are true?
    // check against player number?
    
    
    if(up && pos.y > 5){
      pos.y -= 5;
      pos.x = width/2 + sin(counter*5) * sin(radians(frameCount)) * 200;
    }
    
    if(down && pos.y + h < height -5){
      pos.y += 5;
    }
  }
  
  void display(){
    pushMatrix();
    translate(300,300);
    rectMode(CORNER);
    rotate(radians(angle));
    fill(255);
    rect(pos.x, pos.y, w, h);
    popMatrix();
  }
  
}
