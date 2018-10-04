void setup(){
  size(500,500);
}

void draw(){
   for (int i = 0; i < width; i+=25) {
     for(int j = 0; j < height; j +=25){
       if((i+j) % 2 ==0) {
         fill(255);
       }else {
         fill (0);
       }
       
       if (mouseX > i && mouseX < i + 25 && mouseY > j && mouseY < j + 25)
       fill(129,243,255);
       rect(i,j,50,50);
     }
   }
}
