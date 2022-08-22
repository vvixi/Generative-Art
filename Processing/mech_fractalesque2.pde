// generative art in P3 by vvixi
float time;
void setup() {
  size(400, 400);
  background(20);
}
void draw() {
  float a = sin(time);
  fill(200,10, 10, 20);
  ellipse(width/2, height/2,time, time);
  fill(0, 0, 160, 20);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(time));
  rect(a, a, 200+(a/10), 200+a/10);
  popMatrix();
  time+=5;
  
  if (time > width) {
    time = 0;
  }
}
