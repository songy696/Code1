//int[][] myarr = {
//  {1, 100, 1000}, 
//  {2, -2, 222}, 
//  {9, 987, 789}
//};

int[][] myarr;
int numCells = 10;
int[] otherarr = new int[100];
//multidimensional arrays sotre ino tha tcan also be stored by a single dimensiontal array
//its just about if mutiple dimensions make sense for the context.

void setup(){
  size(500, 500);
  myarr = new int [numCells][numCells];
  
  //loop through all the positions in the array to assign values.
  for (int i =0; i< myarr.length ; i++) {
    for (int j = 0; j< myarr[0].length; j++){
      //println(i + " - " + j);
      myarr[i][j] = int(map(i+j, 0, myarr.length*2, 0, 255)); //casting the returned value of map from a float to the int
      
    }
 
  }
}


void draw(){
   for (int i = 0; i < myarr.length; i++){
      for (int j = 0; j < myarr[0].length; j++){
        myarr[i][j]++;
        if (myarr[i][j] >255){
          myarr[i][j] = 0;
        }
        
        noStroke();
        fill(myarr[i][j]);
        pushMatrix();
        translate(map(i, 0,myarr.length, 0, width), map(j, 0,myarr.length, 0, height));
        rotate(radians(frameCount + i + j));
        rect(0, 0, width/numCells, height/numCells);
        //point(i,j);
        popMatrix();
      }
   }
}
