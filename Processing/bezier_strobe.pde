// generative art in P3 by vvixi
// bezier strobe
int c;
void setup() {
  noFill();
  frameRate(16);
  size(700, 700);
  background(0);
  
}
void draw() {
  strokeWeight(random(20));
  background(0);
  stroke(200, c, c);
  bezier(random(width), random(width), random(width), random(width),random(width), random(width), random(width), random(width));
  c++; 
  if (c > 255) { c=0; }
}
