// generative art in P3 by vvixi
float time = 0;
void setup() {
  size(500, 500);
  background(0, 0, 0);
  frameRate(16);
  colorMode(HSB, 100);
}

void draw() {
  //background(0);
  for (int i = 0; i < 20; i++) {
    //fill(HSB, random(0,300), random(250,360));
    noFill();
    stroke(time, 100, 100);
    strokeWeight(random(6));
    //ellipseMode(CORNER);
    ellipse(width/2+random(10), height/2+random(10), width-20, random(height-25));
    time+= .125;
    if (time >= 100) 
      time = 0;
  }

}
