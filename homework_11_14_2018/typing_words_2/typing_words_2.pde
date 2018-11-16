// code 1 FA 18
// bryan ma

// typing words 2

// see previous sketch for instructions.

String letters = "";
ArrayList<Word> words = new ArrayList<Word>();
int counter = 0;

void setup() {
  size(600, 600);
  textSize(16);
  textAlign(CENTER);
}

void draw() {
  background(100);
  text(letters, width/2, 50);
  for(Word each : words){
      each.display();
    }
}

void keyPressed() {
  if ((key == ENTER) || (key == RETURN)) {
    println(letters);
    Word w = new Word(width/2, 50 + counter, letters);
    words.add(w);
  
    letters = "";
    counter += 20;
  } else if ((key > 31) && (key != CODED)) {
    //words.get(words.size() - 1).theWord += key;
    letters = letters + key;
  }
}
