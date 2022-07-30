// generative art in P3 by vvixi
void setup() {
  size(500, 500);
  background(0, 0, 0);
  frameRate(8);
}

void draw(){
  stroke(random(255), random(255), random(255));
  //strokeWeight(random(2));
  for (int i = 0; i < height; i++) {
  if (frameCount % 2 == 0) {
    line(random(width), i, random(height), i);
  }
  //for (int i = 0; i < height; i++) {
  //  if (frameCount % 2 == 0) {
  //    line(random(width), i, random(height), i);
  //  } else {
      line(i, random(height), i, random(width));
    //}
  }
}
