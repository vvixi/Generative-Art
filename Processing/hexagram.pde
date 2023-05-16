// Generative art in P3 by vvixi
float x1,y1,x2,y2,x3,y3, time, co;

void setup() {
  surface.setTitle("Hexagram");
  size(600, 600);
  colorMode(HSB, 100);
}

void draw() {
  stroke(co, 100, 100, 100);
  noFill();
  triangle(width/2, height-time%width/2, 0+time%width/2, 0+time%width/2, width-time%width/2, 0+time%width/2);
  triangle(width/2, 0+time%width/2, width-1-time%width/2, height-1-time%width/2, 0+time%width/2, height-1-time%width/2);
  time+=10;
  co+=.5;
  if (co > 40) {
    co = 0;
  }
  //saveFrame("hexagram-###.png");
}
