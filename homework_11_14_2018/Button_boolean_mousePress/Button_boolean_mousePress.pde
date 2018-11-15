// code 1 FA 18
// bryan ma

// this sketch creates a Button class that changes a 'pressed' boolean
// from false to true, and vice versa, when clicked on. pressing once
// is all that's needed to change the state. 

// create a different Button class that also has a 'pressed' boolean, 
// but unlike the other Button, the mouse needs to be held on the button
// in order to set it to true. releasing the mouse button or moving it off
// the button returns the boolean to false.

// finally, check in the sketch for the state of the buttons (see the 
// getButtonStatus() method for an example of how to access their state
// and create some kind of visual effect whenever the buttons are active. 

Button button;
SecondButton secondButton;

void setup() {
  size(300, 300);
  button = new Button(100, 95, 100, 30);
  secondButton = new SecondButton(100, 150, 100, 30);
}

void draw() {
  background(100);
  button.display();
  secondButton.display();
}

void mousePressed() {
  button.checkPressed();
  secondButton.checkPressed(false);
}

void mouseReleased(){
  secondButton.checkPressed(true);
}

class Button {
  boolean pressed;
  float x, y;
  float w, h;
  
  Button(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void checkPressed() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      pressed = !pressed;
    }
  }
  
  void display() {
    if (pressed) {
      fill(240);
    } else {
      fill(150);
    }
    rect(x, y, w, h);
  }
  
  boolean getButtonStatus() {
    return pressed;
  }
}

class SecondButton {
  boolean press = false;
  float x, y;
  float w, h;
  
  SecondButton(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void checkPressed(boolean mouseReleased) {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h && mouseReleased == false) {
      press = true;
    } else{
      press = false;
    }
    //it doesnt holds the button... stays white...
  }
  
  void display() {
    if (press) {
      fill(240);
    } else {
      fill(150);
    }
    rect(x, y, w, h);
  }
  
  boolean getButtonStatus() {
    return press;
    
  }
}
