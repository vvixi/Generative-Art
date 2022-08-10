float x1=0;
float y1=0;
float x2=0; 
float y2=0;
float x3=0;
float y3 = 0;
float time = 0;
float co = 0;
void setup() {
  size(300, 300);
  colorMode(HSB, 100);
}

void draw() {
  stroke(co, 100, 100, 100);
  noFill();
  //background(0, 10);
  //color(co, 100, 200, 10);
  //triangle(0, width, width, height/2, 0, 0 );
  //triangle(0, height-time%height/2, width, height/2, 0+time%width, 0+time%width);
  //triangle(0+time%width, width-time%width, width-time%width, height/2, 0, 0);
  //translate(width/2, height/2);
  //rotate(radians(time));
  // rotate right 
  //triangle(0, height-time%height/2, width, height/2+time%height/2, 0+time%width ,0);
  // right tri
  //triangle(0+time%width/2, height-time%height/2, width-time%width/2, height/2, 0+time%width/2, 0+time%width/2);
  // left tri
  //triangle(width-1-time%width/2, 0+time%height/2, width-1-time%width/2, height-time%height/2, 0+time%width/2, height/2);
  // down tri
  triangle(width/2, height-time%width/2, 0+time%width/2, 0+time%width/2, width-time%width/2, 0+time%width/2);
  // up tri
  triangle(width/2, 0+time%width/2, width-1-time%width/2, height-1-time%width/2, 0+time%width/2, height-1-time%width/2);
  time+=10;
  co+=.5;
  if (co > 40) {
    co = 0;
  }
  //saveFrame("hexagram-###.png");
}
