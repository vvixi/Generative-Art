// generative art in P3 by vvixi
// parameterized particle emitter
ArrayList<Particle> particles;
PVector loc;

void setup() {
  size(400, 400);
  PVector loc = new PVector(width/2, height/2);
  color c = color(255, 0, 0);
  particles = new ArrayList<Particle>();
  //particles.add(new Particle());
  for (int i = 0; i < 400; i++) {
    particles.add(new Particle(1, loc, 40, 255, 0, 0));
  }
}

void draw() {
  background(255);
  //Particle p = particles.get(0);
  for (Particle p : particles) {
    p.update();
    p.display();
    p.restart();
  }
}

class Particle {
  float x;
  float y;
  int size = 10;
  Type type;
  float diameter;
  float speed = 1;
  color c;
  PVector loc;
  float x1speed = random(-2, -1);
  float x2speed = random(1, 2);
  float y1speed = random(-2, -1);
  float y2speed = random(1, 2);
  
  
  Particle(float temSpeed, PVector temLoc, int temSize, int temClr1, int temClr2, int temClr3) {
    speed = temSpeed;
    loc = temLoc;
    size = int(random(temSize));
    c = color(temClr1, temClr2, temClr3);
    x = loc.x;
    y = loc.y;
    fill(40);
    stroke(c);
  }
  void update() {
    x += random(x1speed, x2speed)* speed;
    y += random(y1speed, y2speed)* speed;
    c++;
  }
  void display() {
    ellipse(x, y, size, size);
  }
  void restart() {
    if (x >= width || x <= 0 || y >= height || y <= 0) {
      x = loc.x;
      y = loc.y;
    }
  }
}
