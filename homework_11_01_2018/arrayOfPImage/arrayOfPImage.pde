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

String[] arrayOfImageFilenames;
PImage[] arrayOfPImages = new PImage[3];
PImage[] arrayOfIamgePaths;

void setup() {
  //arrayOfPImages[0] = loadImage("animal_1.tiff");
  //arrayOfPImages[1] = loadImage("animal_2.tiff");
  //arrayOfPImages[2] = loadImage("animal_3.tiff");
  
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    arrayOfPImages[i] = loadImage("animal_" + i + "tiff");
  }
}

void draw() {
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    
    arrayOfPImages[0] = loadImage("animal_1.tiff");
  arrayOfPImages[1] = loadImage("animal_2.tiff");
  arrayOfPImages[2] = loadImage("animal_3.tiff");
  }
}
