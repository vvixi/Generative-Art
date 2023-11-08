// Generative eart in P4 by vvixi
int count = 100;
Bobble[] bobbles = new Bobble[count];

void setup() {
  
  smooth();
  surface.setTitle("Bobbles");
  frameRate(22);
  fill(200, 0, 0);
  size(600, 600);
  
  for (int i = 0; i < count; i++) {
    
    bobbles[i] = new Bobble();
  }
}

void draw() {
  
  background(10);
  for (int i = 0; i < count; i++) {
    
    bobbles[i].update();
  }
}

class Bobble {
  
  float startSize;
  float size;
  float speed = random(0.5,1);
  PVector start = new PVector(width / 2, height / 2);
  PVector pos = start;
  PVector dir = new PVector(random(-1,1), random(-1,1));;
  int col = 255;
  
  Bobble() {
    
    startSize = random(100);
    size = startSize;
  }
  
  void update() {
    
    stroke(100, col, 0);
    col--;
    fill(0, 100, col);
    circle(pos.x, pos.y, size);
    if (random(-1,1) >.75) {
      pos.mult(random(-dir.x, dir.x));
    } else {
      pos.div(random(-dir.y, dir.y));
    }
    if (pos.x < 5) {
      pos.x = width;
      pos.y = height;
    } 
    if (col < 1) { col=255; }
  }
}
