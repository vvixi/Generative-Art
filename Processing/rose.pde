// mathmatical rose by vvixi
float d = 7;
float n = 5, t = 100;
void setup() {
  size(600, 600);
  frameRate(12);
  smooth();
}

void draw() {
  float k = n / d;
  background(50);
  translate(width/2, height+30);
  beginShape();
  stroke(60,60,t);
  d++;
  n++;
  t+=30;
  noFill();
  for (float a = 0; a < TWO_PI * d; a += .03) {
    float r = 400 * cos(k * a);
    float x = r * cos(a);
    float y = r * sin(a);
    vertex(x, y);
  }
  endShape(CLOSE);
  if (d > 60) {
    d = 7;
    n = 5;
    t = 100;
  }
}
