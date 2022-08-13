// generative art in P3 by vvixi
int n = 0;
int blocks = 20;
void setup() {
  size(400, 400);
  background(0);
}

void draw() {
  n++;
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      if (n % 7 == 0) {
        fill(255, 80, 80);
      }else if (n % 7 == 1) {
        fill(80, 255, 80);
      }else if (n % 7 == 2) {
        fill(80, 80, 255);
      }
      rect(i*blocks, j*blocks, 20, 20);
    }
  }
}
