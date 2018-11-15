
//String letters = "hi";
//WordStorsge w;

void setup() {
  size(600, 600);
  textSize(16);
  //textAlign(CENTER);
  wordsOnScreen = new ArrayList <WordStorage>();
 wordsOnScreen.add(new WordStorage(50, 50, "hello"));
}

void draw() {
  background(100);
  for(int i = 0; i < wordsOnScreen.size(); i++){
    wordsOnScreen.get(i).display();
    println(i);
  }
}

void keyPressed() {
  enter();
}

  String [] letters = new String[10];
  ArrayList<WordStorage> wordsOnScreen;

class WordStorage {
  //String [] letters = new String[10];
  //ArrayList<String> wordsOnScreen;
  String word;
  float x, y;
  
  WordStorage(float x, float y, String words) {
    word = words;
    this.x = x;
    this.y = y;
  }
  
  void display() {
    //for(int i = 0; i < letters.length; i++){
      text(word, x, y);
    //}
    
  }
}
  void enter(){
    if ((key == ENTER) || (key == RETURN)) {
    //println(word);
    //letters = "ddd";
    wordsOnScreen.add(new WordStorage(50, wordsOnScreen.size() * 50+50, "bye"));
  } else if ((key > 31) && (key != CODED)) {
    wordsOnScreen.get(wordsOnScreen.size() - 1).word += key;
  }
  }
