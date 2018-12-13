Kitchen kitchen;

void setup(){
  kitchen = new Kitchen();
  println(blenders.size());
  Blender b = new Blender();
  blenders.add(b);
  println(blenders.size());
  
  for(int i = 0; i < blenders.size(); i++){
    Blender blender = blenders.get(i);
    blender.blend();
  }
  
  blenders.remove(0);
  println(blenders.size());
}

void draw(){
}


class Kitchen{
ArrayList<Blender> blenders = new ArrayList<Blender>();
 Kitchen(){

 }
}

class Blender{
  
  Blender(){
    println("made a blender!");
  }
  
  void addFruit(Fruit fruit){
    fruitToBlend.add(fruit);
  }
  
  void blend(){
    println("blending!");
    for int i = fruitToBlend.size()-1; i >= 0; i --){
      fruitToBlend.remove(i);
    }
  }
}
