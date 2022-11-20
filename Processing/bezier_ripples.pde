// generative art in P3 by vvixi
// more experiments with bezier curves
float hLen;
void setup() {
  size(600, 600);
  background(20);
  frameRate(6);
  hLen = random(10, height);
  noFill();
}

void draw() {
  if (frameCount % 20 == 0) { hLen = random(height); }
  background(20,90);
  stroke(random(200), 200, random(200));
  
  for (int i = 0; i < 1000; i+=100) {
    strokeWeight(random(6));
    //bezier(0, hLen-i, width/2, 0, width/2, height, width, hLen);
    bezier(-10, hLen+i, hLen, hLen, hLen, 0, width+10, hLen+i);
  }
  hLen -= 10;
}
