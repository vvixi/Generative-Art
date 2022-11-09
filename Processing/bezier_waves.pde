// generative art in P3 by vvixi
// bezier waves
int c, x=100;
int cenX, cenY, leftX, upY, rightX, lowY;

void setup() {
  noFill();
  frameRate(6);
  smooth();
  size(700, 700);
  cenX = width/2; cenY = height/2;
  leftX = 0; upY = height*8/10;
  rightX = width; lowY = height*8/10;
  //fullScreen();
  background(0);
  
}
void draw() {
  strokeWeight(1);
  background(0);
  stroke(c,200,200);
  //bezier(random(width), random(width), random(width), random(width),random(width), random(width), random(width), random(width));
  //for (int i = 0; i < 4; i++) {
  for (int i = 10; i < height/10; i+=10) {
    bezier(0-40, height/2-x, random(width), random(width),random(width), random(width), width+40, height/2-40-x);
    fill(c,c,200, 30);
  }
  //for (int y =0; y <= height/10; y++) {
  //  bezier(leftX, cenY, cenX, y*random(10), cenX, y*random(10), rightX, cenY);
  //}
  //for (int y =height/10; y > 0; y--) {
  //  bezier(leftX, cenY, cenX, y*random(10), cenX, y*random(10), rightX, cenY);
  //}
  c++; 
  x-=10;
  if (x==0) { x = 100; }
  if (c > 255) { c=0; }
}
