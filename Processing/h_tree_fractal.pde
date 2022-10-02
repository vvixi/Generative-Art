// H Tree Fractal by vvixi
float ang, c;
void setup() {
  colorMode(HSB, 360);
  size(600, 600);
}

void tree(float len) {
  //line(0, 0, 0, len);
  line(0, -len, 0, len);
  //strokeWeight(random(4));
  translate(0, -len);
  if (len > 12) {
    pushMatrix();
    rotate(ang);
    tree(len * 0.67);
    popMatrix();
    pushMatrix();
    rotate(-ang);
    tree(len * 0.67);
    popMatrix();
  }
}
void draw() {
  background(40);
  stroke(c, c, 255);
  translate(width/2, height-50);
  tree(200);
  ang += 0.025 / 4;
  //print(ang);
  //if (ang>.15) { ang=0.95; } //angle can be used for pause
  c+=TWO_PI/10;
  if (c > 360)  {
    c=TWO_PI/10;
  }
}
