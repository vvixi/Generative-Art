// generative art in P3 by vvixi

float t;
static final int numLines = 50;

void setup() {
  
  frameRate(16);
  size(700, 700);
  strokeWeight(2);
}

void draw() {
  
  stroke(0);
  background(60);
  translate(width/2, height/2);
  for (int i = 0; i < numLines; i++) {
    line(x1(t+i), y1(-t+i), x2(t+i), y2(t+i));
    //line(x1(-t+i), y1(t+i), x2(-t+i), y2(-t+i));
  }
  t+=.1;
}

float x1(float t) {
  return sin(t) * width/2  + sin(t) * 10;
}

float y1(float t) {
  return cos(t) * width/2  + sin(t) * -20;
}
float x2(float t) {
  return sin(t) * width/2  + sin(t) * 20;
}

float y2(float t) {
  return cos(t) * width/2 + sin(t) * -10;
}
