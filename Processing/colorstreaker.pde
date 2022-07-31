// generative art in P3 by vvixi
void setup() {
  size(500, 500);
  background(0, 0, 0);
  frameRate(8);
}

void draw() {
  background(0);
  for (int i = 0; i < width; i++) {
    stroke(random(255), random(255), random(255));
    strokeWeight(random(4));
    float distance_top = random(500);
    line(distance_top, 0, distance_top, height);
  }
}
