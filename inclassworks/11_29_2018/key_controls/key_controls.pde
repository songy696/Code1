boolean up; 
boolean down;
boolean right;
boolean left;

float x, y;

void setup(){
  size(600, 600);
  x = width/2;
  y = height/2;
}

void draw(){
  background(0);
  ellipse(x, y, 50, 50);
  if(up){
    y-=5;
  }
  if(down){
    y+=5;
  }
  if(right){
    x+=5;
  }
  if(left){
    x-=5;
  }
  
      up = false;
    down = false;
    right = false;
    left = false;
}

void keyPressed(){
  if(key == CODED){
    if(keyCode ==UP){
      up = true;
    }
    if(keyCode == DOWN){
      down = true;
    }
    if(keyCode == RIGHT){
      right = true;
    }
    if(keyCode == LEFT){
      left = true;
    }
    
    //up = false;
    //down = false;
    //right = false;
    //left = false;
  }
  
}

void keyReleased(){
  if(key == CODED){
    if(keyCode ==UP){
      up = false;
    }
    if(keyCode == DOWN){
      down = false;
    }
    if(keyCode == RIGHT){
      right = false;
    }
    if(keyCode == LEFT){
      left = false;
    }
  }
  
}
