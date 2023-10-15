// Generative art in P4 by vvixi
void setup() {
  
  surface.setTitle("Hexagon Grid");
  size(600, 600);
}

void draw() {
  
  drawGrid(60);
}

void drawGrid(int _size) {

  int offs = _size/2;
  int xOffs2 = _size * 2 + offs;
  int spaceX = _size * 3;
  int spaceY = _size * 2 - floor(offs/2)-offs/10;
  
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 10; j++) {
      
      pushMatrix();
      fill(i * 40, 147 - j * 10, 137);
      translate(i * spaceX + offs, j * spaceY + offs);
      polygon(0, 0, _size, 6);
      popMatrix();

      pushMatrix();
      fill(i * 20, 147 - j * 5, 137);
      translate(xOffs2 + i * spaceX - offs, j * spaceY - offs + 10);
      polygon(0, 0, _size, 6);
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
