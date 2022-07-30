// generative art in P3 by vvixi
color start= color(204, 102, 0);
color end = color(0, 102, 155);
float wave = sin(0.002);
void setup() {
  size(500,500, P3D);
  background(0, 50);
  noFill();
  frameRate(16);
}

void draw() {
  if (frameCount%6==0) {
    start = color(random(255), random(255), random(255), 127);
    end = color(random(255), random(255), random(255), 127);
  }
  wave+= 0.01;
  translate(width/2, height/2);
  stroke(lerpColor(start, end, (frameCount%10)*0.01));
  for(int i=1; i<width/2; i++) {
    rotateZ((14.0+wave));
    rect(i,i, 100, 100);
  }
}
