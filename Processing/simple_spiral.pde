// generative art in P3 by vvixi
float ang, time;

void setup() {
  size(400, 400);
  background(0);
}

void draw() {
  noFill();
  stroke(0+ang%255, 0+ang%255, 200);
  translate(width/2, height/2);
  pushMatrix();
  rectMode(CENTER);
  rotate(radians(ang));
  rect(0, 0, time%width, time%height);
  popMatrix();
  ang+=0.3;
  time++;
}
