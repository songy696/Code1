int w = 1000;
int h = 600;

void setup(){
 size (1000,600); 
}

void draw() {
 
  background(30,240,100);
  
  line(mouseX,mouseY,0,0);
  
  //line(0,300,1000,300);
  
 //noFill();
 fill(80,250,255);
 //ellipse(mouseX,mouseY,70,70);
 stroke(255,30,120);
 ellipse(width/2, height/2, w,h);
 w = w + 16;
 h = h - 2;
 
 
 //line (500,300,mouseX,mouseY);
 
 //rect(mouseX,mouseY,w/3,h/3,10);
 //w = w + w/2;
 //h = h + 2;
}
