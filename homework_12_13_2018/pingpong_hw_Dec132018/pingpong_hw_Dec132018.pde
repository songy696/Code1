Ball ball;
Paddle p1;
Paddle p2;

boolean p1up, p1down, p2up, p2down;
int score1;
int score2;
float xPos;
float yPos;
float angle;

char myChar = 'a';

void keyPressed(){
  if(key != CODED){
    if(key == 'w'){
      p1up = true;
  }else if (key == 's'){
      p1down = true;
   }
  }else { 
    if(keyCode == UP){
      p2up = true;
      //rotate(radians(angle));
    } else if ( keyCode == DOWN){
      p2down = true;
    }
  }
}

void keyReleased(){
    if(key != CODED){
    if(key == 'w'){
      p1up = false;
  }else if (key == 's'){
      p1down = false;
   }
  }else { 
    if(keyCode == UP){
      p2up = false;
    } else if ( keyCode == DOWN){
      p2down = false;
    }
  }
}

void setup(){
  size(1000, 600);
  ball = new Ball();
  p1 = new Paddle(1);
  p2 = new Paddle(2);
  
  xPos = width/2;
  yPos = height - 550;
  
}

void draw(){
  angle += 1;
  background(0);
  ball.update();
  ball.display();
  
  p1.update(p1up, p1down, 45);
  p1.display();
  
  p2.update(p2up, p2down, 45);
  p2.display();
  
  ball.checkCollision(p1);
  ball.checkCollision(p2);
  
    
  float r = random(4);
  if(int(r) == 0) {
    xPos +=10;
  } else if (int(r) == 1){
    xPos -= 10;
  } else if (int(r) == 2){
    yPos +=10;
  } else if (int(r) == 2){
    yPos -=10;
  }
  
  fill(255);
  textSize(48);
  textAlign(CENTER,CENTER);
  text(score1, r + width/2 - 25, r + height/8);
  text(score2, r + width /2 + 25, r+ height/8);
  
  drawCenterLine();
  
}

void drawCenterLine(){
  rectMode(CENTER);
  fill(255);
  for (int i = 0; i < height; i += 80){
    rect(xPos, i, 15, 15);
  }
  
}
