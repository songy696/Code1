color c;
//c is an instance of the color datatype
// color is not technically a class. which is why lowercase.

// red() gree() blue()

void setup(){
  size (600, 600);
  c = color(255, 150, 150,100);
  
  color hexColor = #FF9900;
  background(hexColor);

}

//color() vs color
//red() gree() blue()
//brightness() hue() saturation()


void draw(){
  //background(c);
  fill(c);
  c = color(map(mouseX, 0, width, 0, 255),
            map(mouseY, 0, height, 0, 255),
            blue(c));
  println(brightness(c));
  ellipse(mouseX, mouseY, 200,200);


}
