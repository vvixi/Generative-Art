// Generative art in P4 by vvixi
int shapeCnt  = 10;
Rotator[] rotators = new Rotator[shapeCnt];

void setup() {
  
  surface.setTitle("Circular Orbit");
  size(600, 600);
  
  for (int i = 0; i < shapeCnt; i ++) {
    
    rotators[i] = new Rotator();
  }
}

void draw() {
  
  background(0);
  for (int i = 0; i < shapeCnt; i ++) {
    
    rotators[i].render();
  }
}

class Rotator {
  
  PVector center;
  float angle, radius;
  PVector point;
  float dx;
  float dy;
  int sz;
  float speed;
  
  Rotator() {
    
    speed = int(random(100, 180));
    sz = int(random(90));
    center = new PVector(width/2, height/2);
    PVector point = new PVector(random(width/2), random(height));
    float dx = center.x -point.x;
    float dy = center.y - point.y;
    angle = atan2(dx, dy);
    radius = dist(center.x, center.y, point.x, point.y);
    ellipseMode(RADIUS);
    
  }
    
  void render() {
    
    float x = center.x + cos(angle) * radius;
    float y = center.y + sin(angle) * radius;
    ellipse(x, y, sz, sz);
    fill(random(200), 100, 0);
    angle += PI / speed;
  }
}
