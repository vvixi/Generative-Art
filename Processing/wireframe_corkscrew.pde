// Generative art in P4 by vvixi
int cubeCnt = 40;
Wireframe[] wireframes = new Wireframe[cubeCnt];

void setup() {
  
  noCursor();
  surface.setTitle("Circular Orbit");
  size(600, 600, P3D);
  
  for (int i = 0; i < cubeCnt; i++) { 
    wireframes[i] = new Wireframe();
  }
}

void draw() {
  
  background(0, 0, 20);
  for (int i = 0; i < cubeCnt; i++) { 

    wireframes[i].render();
  }
}

class Wireframe {

  float angle, radius;
  PVector center;
  PVector point = new PVector(width/2, height/2);
  float x, y;
  float a, b;
  
  Wireframe() {
    
    center = new PVector(width/2, height/2);
    float dx = center.x -point.x;
    float dy = center.y - point.y;
    float angle = atan2(dx, dy);
    float radius = dist(center.x, center.y, point.x, point.y);
    x +=1;
    y +=1;
  }
  
  void render() {
    
    angle += PI / 100;
    a+=0.01;
    b+=0.02;
    x = center.x + cos(angle) * radius;
    y = center.y + sin(angle) * radius;
    translate(x, y, -100);
    //rotateZ(a);
    rotateX(-a);
    //rotateY(b);
    stroke(200);
    noFill();
    stroke(random(240), 100, 0);
    box(200);
  }
}
