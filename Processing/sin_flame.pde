// sin wave flame in P4 by vvixi
float theta = 0.0;

void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  
  background(0);
  theta += 0.02;
  noStroke();
  float x = theta;
  for (int i =0; i < height; i++) {
    float y = sin(x) * height/6;
    fill(100, 0, i * 3);
    ellipse(y + height/2, i * 10, i*5, i*5);
    x += 0.2;
  }
}
