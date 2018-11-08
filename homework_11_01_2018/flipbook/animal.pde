 class Animal {
   float x, y;
   int numFrames;
   int currentFrames;
   PImage[] frames;
   
   Animal(float x, float y){
     numFrames = 5;
     currentFrames = 0;
     frames = new PImage[numFrames];
     frames[0]  = loadImage("animal_0.png");
    frames[1]  = loadImage("animal_1.png"); 
    frames[2]  = loadImage("animal_2.png");
   }
   
   void update(){
   currentFrames = (currentFrames+1) % numFrames;
     //x += 10;
     //if(x > width){
     //  x = 0;
     //}
     
   }
   
   void display(){
   image(frames[currentFrames], x, y);
   
   }

 }
