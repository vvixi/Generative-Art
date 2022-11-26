// generative art in P3 by vvixi
// more experiments with bezier curves
float hLen;
float a, b, c, d;
void setup() {
  size(600, 600);
  //fullScreen();
  background(20);
  frameRate(12);
  hLen = random(10, height);
  noFill();
  noCursor();
}

void draw() {
  background(20,90);
  stroke(random(200), random(200), 200);
  noFill();
  //fill(random(200), random(200), 200);
  strokeWeight(2);
  for (int i = 0; i < 1000; i+=100) {
    bezier(-5, i, 0+hLen%width, 0, 0+hLen%width, height, width+5, i);
  }
  hLen+= 10;
}
