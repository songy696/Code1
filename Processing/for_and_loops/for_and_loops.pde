int size = 50;

void setup(){
  size(600,600);
  
  //simple for loops
  //counts from 0 to 4
  for(int i = 0; i<5; i++){
    println(i);
  }
  //simple for loop
  //counts by two's from 0,9
  for(int i = 0; i<10; i+=2) {
    println(i);
  }
}

void draw (){
  background (255);
  //for(int i = 0; i < 7; i++){
  //  for(int j = 0; j<7; j++){
  //  ellipse(i*100,j*100,50,50);
  //  }
  //}
  
  for(int i = 0; i <= width; i += size) {
    for(int j = 0; j <= width; j += size) {
      int b = int (map(i, 0, width, 0, 255));
      int g = int(map(j,0,height, 0, 255));
      
      //map the opacity of our cricle to how close our mouse is to the circle
      //calculate distance from mouse to cirlce 
      float dist = dist(i, j, mouseX, mouseY);
      //use map fuction to map from 0, width , 0 ,255
      int o = int(map(dist, 0, 80, 0 ,255));
      fill(0,g,b,o);
    ellipse (i, j, size, size);
    }
  }

}
