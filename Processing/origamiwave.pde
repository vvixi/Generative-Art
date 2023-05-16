// Generative art in P3 by vvixi
float time = 0;
void setup() {
  surface.setTitle("Origami Wave");
  frameRate(12);
  size(600, 600);
}

void draw() {
  background(240);
  float x = 0;
  while (x < width) {
    strokeWeight(random(10));
    stroke(random(255), random(255), random(255));
    //line(x, width/1.2 * noise(x / 100, time), width/1.2 * noise(x / 100, time), height/1.2 * noise(300, time));
    line(x, width/1.2 * noise(x / 100, time), x, height/1.2 * noise(300, time)); 
    x += 1;
  }
  time += 0.2;
  //saveFrame("origamiwave-###.png");
}
