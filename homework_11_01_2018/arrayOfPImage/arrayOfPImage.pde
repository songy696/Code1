// code 1 FA 18
// bryan ma

// this code starts setting up two arrays - 
// one to hold strings, another to hold PImages.

// set up the sketch so that the arrayOfImagePaths
// is set up to contain a collection of image filenames
// located in the sketch folder. make sure the arrayOfPImages 
// is also set up to contain the same number of items. 

// once the arrays are working, use the draw loop to display
// all the images by looping through the results of filling the
// arrayOfPImages. 

String[] arrayOfImageFilenames = new String[3];//{"animal_0.png", "animal_1.png", "animal_2.png"};
PImage[] arrayOfPImages = new PImage[arrayOfImageFilenames.length];
PImage[] arrayOfIamgePaths;

void setup() {
   size(600,600);
   imageMode(CENTER);
  
  for(int i = 0; i < arrayOfImageFilenames.length; i++){
    arrayOfImageFilenames[i] = "animal_" + i + ".png";
  }
  
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    arrayOfPImages[i] = loadImage(arrayOfImageFilenames[i]);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < arrayOfPImages.length; i++) {
    float x = map(i, 0, arrayOfPImages.length - 1, 100, width);
    //float prop = arrayOfPImages[i].width/arrayOfPImages[i].height;
    image(arrayOfPImages[i], x, height/2, 100, 100);
    
  }
}
