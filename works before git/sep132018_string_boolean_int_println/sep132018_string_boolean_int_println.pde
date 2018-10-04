
void setup(){
  String helloResult = getHello("somebody");
  println(helloResult);
  println(sqrt(100));
  println(add10(10));
  //int result = giveMeAnInt();
  //println(giveMeAnInt() = 10);
}


void doSomething () {
  println("hi");
}

int giveMeAnInt(){
  return 1;
}

int add10(int n) {
  return n + 10;
}

boolean isCodeGreat() {
  return true;
}

String getHello(String name) {
  return "hello" + name;
}

//float sqrt (float vlaue) {
//  return true;
//}
