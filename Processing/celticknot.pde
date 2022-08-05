// generative art in P3 by vvixi
color start = color(204, 102, 0);
color end = color(0, 102, 155);
float wave = -sin(0.002);
void setup() {
  size(600,600, P3D);
  background(0, 20);
  noFill();
  frameRate(16);
}

void draw() {
  //background(0, 10);
  if (frameCount%2==0) {
    start = color(random(255), random(255), random(255), 222);
    end = color(random(255), random(255), random(255), 222);
  }
  wave++;
  translate(width/2, height/2);
  //rotateY(frameCount/5.0);
  //rotateX(frameCount/26.0);
  stroke(lerpColor(start, end, (frameCount)*0.1));
  for(int i=1; i<width/2; i++) {
    rotateZ((1.0+wave));
    rect(i,i, 10, 10);
  }
}
