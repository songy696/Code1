void setup() {
  size(1000,600);
}

void draw() {
  
  dinosaur(width/2, height/2, 300);
  
}

void dinosaur(int x, int y, int size) {
  dinosaurBody(x + 40,y);
  dinosaurHead(x - 200,y - 100);
  //dinosaurEye();
  //dinosaurTail();
  
}

void dinosaurBody(int x, int y){
  fill(255,105,180);
  noStroke();
  rectMode(CENTER);
  rect(x ,y ,320,220,30);
}

void dinosaurHead(int x, int y){
  fill(255,105,180);
  noStroke();
  rectMode(CENTER);
  rect(x , y,210,180,30);
}

//void dinosaurEye(float x, float y){
  
//}


//void dinosaurTail(float x, float y){
  
//}
