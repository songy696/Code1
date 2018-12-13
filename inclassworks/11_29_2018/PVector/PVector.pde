PVector position;
PVector velocity;
float drag;

void setup(){
  size(600, 600);
  position = new PVector(100, 100);
  velocity = new PVector(random(-5, 5), random(-5, 5));
  drag = 0.99;

}

void draw(){
  ellipse(position.x, position.y, 100, 100);
  //position.add(velocity);
  
  //float angle = atan2(position.y - mouseY, position.x - mouseX);
  PVector diff = new PVector(position.x - mouseX , position.y - mouseY);
  diff.normalize();
  diff.mult(10);
  position.add(diff);
  
  velocity.mult(drag);
  
  if (position.x > width || position.x <0){
    position.x -= velocity.x;
    velocity.x = -velocity.x;
  }
  if (position.y > height || position.y <0){
    position.y -= velocity.y;
    velocity.y = -velocity.y;
  }
}
