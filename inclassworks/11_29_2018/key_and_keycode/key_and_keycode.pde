void setup(){
  size(600, 600);
}

void draw(){
  println(keyCode == UP);
  
  if  (keyPressed){
    if(key == CODED){
      if(keyCode == UP){
      println(keyCode);
      }
    }else {
      println(key);
    }
  }
  
}


  //key variables stores last pressed alphanumeric/symbol key
  //KeyCode stores a number representation of the last key pressed
