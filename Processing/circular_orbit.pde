// Generative art in P4 by vvixi
PVector center;
float angle, radius;

void setup() {
  
  surface.setTitle("Circular Orbit");
  size(600, 600);
  center = new PVector(width/2, height/2);
  PVector point = new PVector(random(width), random(height));
  float dx = center.x -point.x;
  float dy = center.y - point.y;
  angle = atan2(dx, dy);
  radius = dist(center.x, center.y, point.x, point.y);
  ellipseMode(RADIUS);
}

void draw() {
  
  background(0);
  float x = center.x + cos(angle) * radius;
  float y = center.y + sin(angle) * radius;
  ellipse(x, y, 30, 30);
  fill(random(200), 100, 0);
  angle += PI / 100;
}
