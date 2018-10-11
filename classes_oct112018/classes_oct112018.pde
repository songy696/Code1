void setup(){
    Cookie cookie = new Cookie("delicious", "tiny");
    Cookie anotherCookie = new Cookie("triple chocolate", "gargantuan");
    //println("what kind of cookie?");
    //println(cookie.size);
    //println(anotherCookie.size);
    
    cookie.cookieInfo();
    anotherCookie.cookieInfo();
    cookie.eat(" ravenousely!!!!!");
    
    String str = cookie.getSize();
  //like with creating arrays, we need to use the 'new' kewords when creating object instances
    //the new keyword tells java to do wome special memory stuff.
    //int x = 0;

}
//fot operator (.) used to access the cariables and methods of a class instance (objects)
void draw(){
  }

class Cookie{
  String kind;
  String size;
   
  Cookie(String whatKind, String whatSize){
    //instantiation - creating an "instance" of an object and instance is like a cookie cutout
  println("baked new" + whatKind + "cookie!");
  kind = whatKind;
  size = whatSize;
  }
  
  void cookieInfo(){ //inside of class
    println("This coolie is a " + size + " " + kind + " " + "cookie!");
  }
  
  void eat(String modifier){
    println("You eat the cookie" + modifier);
  }
  
  String getSize(){
    return size;
}
  
}
