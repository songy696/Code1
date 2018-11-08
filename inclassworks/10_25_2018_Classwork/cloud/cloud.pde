 Cloud c = new Cloud(300, 300);
 Cloud[] clouds = new Cloud[10];
 
 void setup(){
    size(600, 600);
    for (int i = 0; i < clouds.length; i++){
      clouds[i] = new Cloud (random(width), random(height));
      
    }
  }
  
void draw(){
  background (120,120,255);
  for (int i = 0; i < clouds.length; i++){
      clouds[i].update();
      c.display();
    }
  //c.update();
  //c.display();
  }


class Cloud {
  float x, y;
  float s; //size
  
  Cloud(float x, float y){
    this.x = x;
    this.y = y;
    this.s = random(5,20);
  }
  
  void display(){
    noStroke();
    ellipse(x, y, 5*s, 5*s);
    ellipse(x +50, y, 5*s, 5*s);
    ellipse(x +25, y+10, 5*s, 5*s);
    ellipse(x-30, y+10, 5*s, 5*s);
    ellipse(x, y-40, 5*s, 5*s);
  }
  
  void update(){
    x -= 0.5;
    if(x < -200){
      x = width + 200;
    }
  }
}
