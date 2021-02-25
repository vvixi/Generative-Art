// experimenting with color change and 3D shape rotation
color start = color(199, 99, 0);
color end = color(0, 99, 156);
float wave = sin(0.0002);
void setup() {
  size(800,600, P3D);
  background(0);
  noFill();
  frameRate(29);
  start = color(random(255), random(255), random(255), 127);
  end = color(random(255), random(255), random(255), 127);
}

void draw() {
  if (frameCount%6==0) {
    start = color(random(255), random(255), random(255), 100);
    end = color(random(255), random(255), random(255), 200);
  }
  wave+=0.001;
  translate(width/2, height/2);
  stroke(lerpColor(start, end, (frameCount%10)*0.01));
  for(int i=1; i<width/2; i++) {
    rotateZ((4.0+wave));
    rect(i,i, 100, 100);
  }
}
