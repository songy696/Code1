ArrayList<Generator> generators;

void setup() {
  size(800, 800);
  generators = new ArrayList<Generator>();
}

void draw() {
  background(30);
  for (int i = 0; i < generators.size(); i++) {
    Generator g = generators.get(i);
    g.addParticles();
    g.drawParticles();
  }
}

void mousePressed() {
  generators.add(new Generator(mouseX, mouseY, random(RGB)));
}

class Particle {
  float posX;
  float posY;
  float velX;
  float velY;
  float life;
  float alpha;
  float colorChange;

  Particle(float posX, float posY) {
    this.posX = random(0,width);
    this.posY = posY+ random(-5,5);
    this.velX = 0;
    this.velY = random(3, 10);
    life = 50;
    alpha = 255;
    colorChange = 255;
  }

  void display() {
    stroke(0, 100,250, map(this.velY, 0 , 10, 255, 150));
    fill(255, map(life, 50, 20, 70, 230), 30, map(life, 50, 0, 230, 0));
    //ellipse(this.posX, this.posY, life, life);
    line(this.posX, this.posY - 50, this.posX, this.posY);
  }

  void update() {
    alpha-=20;
    life--;
    colorChange = colorChange - 50;
    this.posX += this.velX;
    this.posY += this.velY;

    // check if it goes off
    //if (this.posX > width || this.posX < 0) {
    //  this.velX *= -20;
    //}
    //if (this.posY > height || this.posY < 0) {
    //  this.velY *= -20;
    //}
  }
}

class Generator {
  ArrayList<Particle> particles;
  float posX;
  float posY;
  float rate; 
  float colors;

  Generator(float posX, float posY, float colors) {
    this.posX = posX;
    this.posY = posY;
    this.colors = colors;
    particles = new ArrayList<Particle>();
  }

  void addParticles() {
    particles.add(new Particle(this.posX, this.posY));
  }

  void drawParticles() {
    for (int i = 0; i < particles.size(); i++) {
      Particle b = particles.get(i);
      b.update();
      b.display();
     
    } 

    for (int i = particles.size() - 1; i >= 0; i--) {
      Particle p = particles.get(i);
      if (p.life < 0) {
        particles.remove(i);
      }
    }
  }
}
