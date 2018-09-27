int size = 25;

void setup(){
  size(500,500);
}

void draw(){
   for (int i = 0; i < width; i+=size) {
     for(int j = 0; j < height; j += size){
       int b = int(map(i,0,width,0,255));
       int g = int(map(j,0,height,0,243));
       
       float dist = dist(i,j,mouseX, mouseY);
       
       int o = int(map(dist,0,80,0,255));
       
       fill(129,g,b,o);
       
       if (mouseX > i && mouseX < i + 25 && mouseY > j && mouseY < j + 25)
       rect(i,j,size,size);
     }
   }
}
