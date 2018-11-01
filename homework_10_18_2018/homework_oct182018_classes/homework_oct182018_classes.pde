// Code_1_FA18
// Week 7
// Bryan Ma

// this is the "Cookie" class sketch we wrote in class.

// create 2 or more additional class definitions. 
// these classes aren't used for actually programming any visuals so they can 
//  be totally abstract and print text only just as the Cookie class does. 

// The first new class you make should represent some other kind of common object.
// give it fields and methods, as well as a custom constructor.
// The second new class you create should have its own object instance of the Cookie 
//  (or other) class. For example, maybe a Cookie Jar class would have an 
//  ArrayList of type Cookie. 

ArrayList<Brownie> brownie = new ArrayList<Brownie>();

void setup() {

    
  Cookie aCookie = new Cookie("delicious", "tiny");
  Cookie anotherCookie = new Cookie ("choco", "Big");
  aCookie.cookieInfo();
  anotherCookie.cookieInfo();
  aCookie.eat("yummy");
  
  Brownie aBrownie = new Brownie("Chocolate", "Not so sweet");
  Brownie anotherBrowine = new Brownie("Caramel", "Extremely sweet");
  aBrownie.brownieInfo();
  anotherBrowine.brownieInfo();
  aBrownie.eat("vigorously");
  
  //ITried atried = new ITried("worked", "really");
  //atried.iTriedInfo();
  //aBrownie.eat("vigorously");

}

void draw() {}

class Cookie {
  String kind;
  String size;
  
  
  Cookie(String whatKind, String whatSize) {
    println("baked new " + whatSize + " " + whatKind + " cookie!");
    kind = whatKind;
    size = whatSize;
  }
  
  void cookieInfo() {
    println("This cookie is a " + size + " " + kind + " cookie!");
  }
  
  void eat(String modifier) {
    println("You eat the cookie " + modifier);
  }
  
  String getSize() {
    return size;
  }
  
}

class Brownie {
  String sweetness;
  String kind;
  
  Brownie(String whatKind, String howsweet) {
    println("This is " + howsweet + " " + whatKind + " brownie!");
    kind = whatKind;
    sweetness = howsweet;
  }
  
  void brownieInfo() {
    println("This " + sweetness + " and " + kind + " brownie is good!");
  }
  
  void eat(String modifier) {
    println("You eat the cookie " + modifier);
  }
  
  class ITried {
  String sweetness;
  String kind;
  
  ITried(String whatKind, String howsweet) {
    println("I " + howsweet + " " + whatKind + " my best!");
    kind = whatKind;
    sweetness = howsweet;
  }
  
  void iTriedInfo() {
    println("This " + sweetness + " test me and " + kind + " !");
  }
  
  void eat(String modifier) {
    println("You eat the cookie " + modifier);
  }
  
  }
  
  class Milk{
   String type;
   float amount;
   int daysUntilExpiration;
   
   Milk(String type, float amount, int days){
     this.type = type;
     this.amount = amount;
     this.daysUntilExpiration = days;
   }
   
   void drink(float houMuch){
     if(this.amount > houMuch){
       this.amount -= howMuch;
       println("you drank " + howMuch + " milk!");
       
     }
   }
  
  }
  
  class CookieJar{
    ArrayList<Cookie> cookies = new ArrayList<Cookie>();
    CookieJar(){
      for(int i = 0; i < 10; i++){
        cookies.add(new Cookie("chocolate chip", "small"));
      }
    }
    cookies takeCookie(){
       
    }
  }
  
}
