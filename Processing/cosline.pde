// generative art in P3 by vvixi
float a = 0.0, inc, c;
boolean fwd;
void setup() {
  frameRate(8);
  size(600, 600);
  colorMode(HSB, 120);
  noCursor();
  //fullScreen();
}

void draw() {
  inc = TWO_PI/30;
  background(20);
  for ( int i = 0; i < width; i++) {
    line(i*2, height-cos(a)*360.0, i*2, 0+cos(a)*360.0);
    a = a+inc;
  }
  stroke(c, 200, 200);
  c++;
  if (c > 120) { c = 0; }
}
