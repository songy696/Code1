Word w;

//void setup() {
//  size(600, 600);
//  w = new Word(50, 50, "hello!");
//}

//void draw() {
//  background(0);
//  w.display();
//}

class Word {
  String theWord;
  float x, y;
  
  Word(float x, float y, String text) {
    theWord = text;
    this.x = x;
    this.y = y;
  }
  
  void display() {
    text(theWord, x, y);
    stroke(random(255),random(255),random(255));
    line(0,y,width,y+5);
  }
}
