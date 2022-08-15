// generative art in P3 by vvixi
int n = 0;
int blocks=20;
void setup() {
  size(400, 400);
  background(255);
  frameRate(7);
  noStroke();
  fill(50, 200, 40);
}

void draw() {
  n=int(random(255));
  n++;
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      if (i % 7 == 0) {
        fill(random(255),100,100);
      }else if (i % 7 == 1) {
        fill(random(255),100,100);
      }else if (j % 7 == 2) {
        fill(random(255),100,100);
      }else if (j % 7 == 3) {
        fill(random(255),100,100);
      }
      rect(i*blocks, j*blocks, 20, 20);
    }
  }
}
