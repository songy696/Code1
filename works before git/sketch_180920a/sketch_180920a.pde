int size = 200;
int x,y;

void setup(){
  size (700,700);
  x = size/2;
  y = size/2;
  rectMode(CENTER);
}

void draw (){
  rect(x, y, size, size);
  x += 5;
  
  if (x > width || y > height){
    x = 0;
    y = y + size;
    println ("rectangle should move");
  }
  println (squareNumber(5));
}

int squareNumber(int num){ 
  return int(sq(num));
  //return int(pow(num,2));
}
