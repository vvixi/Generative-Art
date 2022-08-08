// generative art in P3 by vvixi
void setup() {
  size(400, 400);
  background(0, 0, 0);
  frameRate(8);
}

void draw() {
  background(0);
  for (int i = 0; i < width; i++) {
    fill(random(255), random(255), random(255));
    noStroke();
    float distance_top = random(500);
    rectMode(CENTER);
    ellipse(width/2, height/2, width-i+random(65), height-i+random(65));
  }
}
