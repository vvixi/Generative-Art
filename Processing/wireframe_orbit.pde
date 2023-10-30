// Generative art in P4 by vvixi
Wireframe[] wireframes = new Wireframe[10];

void setup() {
  
  surface.setTitle("Circular Orbit");
  size(600, 600, P3D);
  
  for (int i = 0; i < 10; i++) { 
    wireframes[i] = new Wireframe();
  }
}

void draw() {
  
  background(0, 0, 30);
  for (int i = 0; i < 10; i++) { 

    wireframes[i].render();
  }
}

class Wireframe {

  float angle, radius;
  PVector center;
  PVector point = new PVector(random(width), random(height));
  float x, y;
  float a, b;
  
  Wireframe() {
    
    center = new PVector(width/2, height/2);
    float dx = center.x -point.x;
    float dy = center.y - point.y;
    float angle = atan2(dx, dy);
    float radius = dist(center.x, center.y, point.x, point.y);
    x = random(1);
    y = random(1);
  }
  
  void render() {
    
    angle += PI / 100;
    a+=0.01;
    b+=0.01;
    x = center.x + cos(angle) * radius;
    y = center.y + sin(angle) * radius;
    translate(x, y, -100);
    rotateZ(a);
    rotateY(b);
    stroke(200);
    noFill();
    stroke(random(200), 100, 0);
    box(200);
  }
}
