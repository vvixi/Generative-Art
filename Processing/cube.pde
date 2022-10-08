// basic 3d cube by vvixi
float t,c, twist;

void setup() {
  size(400, 400, P3D);
  noFill();
  twist = 10;
}

void draw() {
  t+=.025;
  c++;
  twist*=.1;
  background(30);
  for (int i = 0; i < 7; i++) {
    pushMatrix();
    stroke(c, 200, 255);
    translate(width/2, height/2);
    rotateY(t);
    //rotateX(t-twist+(i*30));
    rotateX(sin(t));
    box(100+(i * 100));
    popMatrix();
  }
  if (c> 255) { c=0; }
}
