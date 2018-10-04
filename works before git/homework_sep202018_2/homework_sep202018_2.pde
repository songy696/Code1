void setup() {
  int num = 20;
  boolean numberGreaterThanTen = isGreaterThanTen(num);
  
  int num1 = 5;
  boolean number1GreaterThanTen = isGreaterThanTen(num1);
  
  println(num + " is greater than ten?\t" + numberGreaterThanTen);
  println(num1 + " is greater than ten?\t" + number1GreaterThanTen);
  
  println();
  
  String strResult = isThisRight();
  print("Well I guess I will just laugh out loud ...\t");
  println(strResult);
  
  String strAnswer = isThisRight();
  print("Hi there ...\t");
  println(strAnswer);
  
  println();
  
  String strCalulate = squaredValue();
  println(sqrt(25));
  println(strCalulate);
}


boolean isGreaterThanTen(int num) {
  if (num > 10) {
    return true;
    } else {
        return false;
      }
}

String isThisRight() {
  println("I hope this is right otherwise I am going to be sad");
  return "haha!";

}

String squaredValue() {
  println("what is squared 25? ...\t");
  return "heh";
}
