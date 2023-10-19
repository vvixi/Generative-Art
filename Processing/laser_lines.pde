// Generative art in P4 by vvixi
float angle = 0;

void setup() {
  
  surface.setTitle("Laser Lines");
  size(600, 600);
  colorMode(HSB, 100);
  noFill();
  strokeWeight(2);
  background(0);  
  frameRate(16);
}

void draw() {
  
  color c1 = color(random(100), 100, 100);
  color c2 = color(random(100), 100, 30);
  float maxr = 200;
  for(int r = 0; r < maxr; r++) {
    float n = map(r, 0, maxr, 0, 1);
    color newc = lerpColor(c1, c2, n);
    stroke(newc);
    rotate(radians(angle));
    line(width, height, r, r);
  }
  angle+=1;
}
