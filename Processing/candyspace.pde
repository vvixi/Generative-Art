float z = 0;

void setup() {
  surface.setTitle("Candyspace");
  frameRate(16);
  size(600, 600);
  noStroke();
  colorMode(HSB);
}

void draw() {
  float x = 0;
  while (x < width) {
    float y = 0;
    while (y < height) {
      float co = 255 * noise(x/500, y/500, z);
      fill(co, 255, 255);
      ellipse(x, width/2, 20+x, 20+y);
      y += 20;
    }
    x += 20;
  }
  z += 0.1;
}
    
