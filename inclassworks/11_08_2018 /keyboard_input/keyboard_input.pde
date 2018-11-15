void setup(){
  size(500,500);
}

int y =0;
int x =0;
void draw(){
  //key Pressed is boolean
  //if(keyPressed){
  //  y++;
  //}
ellipse (x, y, 50, 50);
}

void keyPressed(){
  //if(key == 'A'){
  //  y--;
  //}
  
  if(key == CODED){
    if(keyCode == UP){
    y-= 10;
    } else if(keyCode == DOWN){
      y+= 10;
    } else if (keyCode == LEFT){
      x-= 10;
    }else if (keyCode == RIGHT) {
      x+= 10;
    }
  }
}
