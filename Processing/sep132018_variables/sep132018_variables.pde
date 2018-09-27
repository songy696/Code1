//global varibale
int num = 100000;
int noAssignment;
boolean myBool;
float myStr = "lalala";

//variable type    variable name    = something

void setup(){
  println (myStr);
  int num = 10;
  println(num);
}

void draw(){
  num = 0;
  //println(num);
  printMyGlobal();
}

void printMyGlobal(){
  println(num);
}
