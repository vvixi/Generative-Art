// generative art in P3 by vvixi
void setup() {
  size(500, 500);
  background(0, 0, 0);
  frameRate(6);
}

void draw() {
  background(0);
  for (int i = 0; i < width; i++) {
    fill(random(255), random(255), random(255));
    noStroke();
    float distance_top = random(500);
    rect(distance_top, distance_top, width-i, height-i);
  }
  //saveFrame("confetti-###.png");
}
