// code 1 FA 18
// bryan ma

// color variable practice

// this sketch creates a single color variable, loads a color into it
// with the color() function, and then uses it to draw the background.

// change the color variable to an array of color variables. add as many
// as you like. then in the draw loop, set the background to some color
// in the array. this might look like: 

// background(c[whichColor]);

// use either conditional logic or a modulo operator to have which color 
// is being used by background() change periodically. see the example gif.

color[] c = new color[10];

void setup() {
  size(300,300);
    for(int i = 0; i < c.length; i++){
      //c[i] = color(150, 0, 0);
      //c[i] = color(0, 150, 0);
      //c[i] = color(0, 0, 255);
      //c[i] = color(255, 30, 10);
      //c[i] = color(30, 255, 10);
      c[i] = color(random(0, 255), random(0, 255), random(0, 255));
    }
}

void draw() {
  //for(int i = 0; i < c.length; i++){
  //   if(frameCount % 20 == 0){
  //     //background(int(random(c[i])));
  //     background(c[floor(random(0,10))]);
  //}
  //}
  
  background(c[inc]);
}

int inc = 0;
void mousePressed(){
  if(inc<9){
  inc ++;
  } else{
    inc=0;
  }
}
