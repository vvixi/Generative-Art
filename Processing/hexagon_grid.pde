// Generative art in P4 by vvixi
int inc = 0;
int inc2 = 0;

void setup() {
  
  surface.setTitle("Hexagon Grid");
  size(600, 600);
  frameRate(8);
}

void draw() {
  
  drawGrid(40, width, height);
}

void colorMe(int _inc, int _i, int _j, int[] _cols) {
  
  // color the hexagons
  if (frameCount % 16 == 0) {
    inc++;
    inc2++;
  }
  if (random(200) < 5) {
    fill(_cols[_inc], 147 - _j * 11, 137);
    //fill(_cols[_inc], 200-_inc - _j, 137);
  } else {
    fill(_cols[_i], 147 - _j * 10, 137, 10);
    //fill(100, 10);
  }
}

void drawGrid(int _hexSize, int _width, int _height) {

  // draw grid of hexagons
  // size 60 - 90 seems to work best
  int offs = _hexSize/2;
  int xOffs2 = _hexSize * 2 + offs;
  int spaceX = _hexSize * 3;
  int spaceY = _hexSize * 2 - floor(offs/2)-4;
  int[] colors = new int[_width/_hexSize];
  int[] colors2 = new int[_height/_hexSize];
  
  for (int i = 0; i < width/_hexSize; i++) {
    for (int j = 0; j < height/_hexSize; j++) {
      
      colors[i] = i * 18;
      colors2[j] = i * 23;
      
      if (inc == 6) {
        inc = 0;
      }
      if (inc2 == 10) {
        inc2 = 0;
      }
      
      pushMatrix();
      colorMe(inc, i, j, colors);
      translate(i * spaceX + offs, j * spaceY + offs);
      polygon(0, 0, _hexSize, 6);
      popMatrix();

      pushMatrix();
      colorMe(inc2, i, j, colors2);
      translate(xOffs2 + i * spaceX - offs, j * spaceY - offs + 10);
      polygon(0, 0, _hexSize, 6);
      popMatrix();
    }
  }
}

void polygon(float x, float y, float radius, int points) {
  
  // draw individual hexagons
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
