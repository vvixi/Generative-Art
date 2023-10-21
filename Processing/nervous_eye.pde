// generative art in P4 by vvixi
float ang;
void setup() {
  size(600, 600);
  frameRate(16);
}

void draw() {
  background(0, 80, 80);
  for (int i = 0; i < 100; i++) {
    fill(0, 100, random(200));
    noStroke();
    rectMode(CENTER);
    ang++;
    ellipse(width / 2, height / 2, width - i, sin(ang) * height / 2 - i * 5);
    fill(0, 100, 200);
    circle(random(width / 2 - 30, width / 2 + 30), height / 2, 100);
  }
}
