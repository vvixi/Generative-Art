// Generative art in P4 by vvixi

void setup() {
  
  surface.setTitle("Hexagon Flow");
  size(600, 600);
}

void draw() {
  
  drawShape();
}

void drawShape() {
  
  int xOffs = 50;
  int yOffs = xOffs;
  int space = 80;
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      pushMatrix();
      fill(i * 20, 147 - j * 5, 137);
      translate(xOffs + i * space, yOffs + j * space);
      rotate(frameCount / -180.0);
      polygon(0, 0, 80, 6);
      popMatrix();
    }
  }
}

void polygon(float x, float y, float radius, int points) {
  
  noStroke();
  float angle = TWO_PI / points;
  beginShape();
  for (float a = 0; a < TWO_PI; a+= angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
