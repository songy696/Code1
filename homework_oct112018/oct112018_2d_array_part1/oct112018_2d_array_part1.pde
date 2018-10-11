// Code 1 FA_18
// Bryan Ma

// 2d arrays part 1

// this code uses a 2d array to hold strings showing the value of the i and j values
//  in the nested loop used to count through the arrays. the draw loop prints those
//  strings directly to the canvas with the text() function. use this as a guide to 
//  visually understand what's happening as we loop through the 2d array.

// experiment with changing the size of the 2d array and displaying different values
//  in the draw loop, then move on to the next sketch.

int gridW = 3;
int gridH = 14;

String[][] my2dArray = new String[gridW][gridH];

void setup() {
  size(800, 700);
  textAlign(LEFT, TOP);
  noFill();
  stroke(255);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      my2dArray[i][j] = "Yolo=" + i + ", Awesome=" + j;
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      textSize(15);
      text(my2dArray[i][j], i * width/gridW, j * height/gridH);
    }
  }
}
