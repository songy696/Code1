// this sketch uses a 2d array to store colors that 
// will be used to draw rectangles in a grid. 

// change the draw loop so that it draws evenly spaced 
// rectangles across the screen, and add a conditional 
// to make sure that once a color turns white, it returns 
// back to black as seen in the example gif.

int gridW = 10;
int gridH = 10;
float[][] greyColors = new float[gridW][gridH];

void setup() {
  size(600, 600);
  for (int i = 0; i < gridW; i = i+1) {
    for (int j = 0; j < gridH; j = j+1) {
      greyColors[i][j] = map(j * gridW + i, 0, gridW * gridH, 0, 255);
    }
  }
}

void draw() {
  for (int i = 0; i < gridW; i+=1) {
    for (int j = 0; j < gridH; j+=1) {
      // if( greyColors[i][j] == 255){
      //     greyColors[i][j]= 0;
      //}
      
      greyColors[i][j]+=1;
      fill(greyColors[i][j]);
      
       if( greyColors[i][j] == 255){
           greyColors[i][j]= 0;
      }
      int x = int(map(i, 0, 10, 0, 600));
      int y = int(map(j, 0, 10, 0, 600));
      rect(x, y, width/gridW, height/gridH);
      x += i;

    }
    
    
  }
}
