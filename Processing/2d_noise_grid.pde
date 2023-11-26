// 2d noise grid in P4 by vvixi
float xNoise, yNoise, cell, hSize, wSize;
float inc = 0.05;

void setup() {
  
  background(20);
  frameRate(2);
  size(600, 600);
  hSize = height / 10;
  wSize = width / 10;
  cell = hSize;
}

void draw() {
  
  for (int z = 0; z < cell; z++) {
    for (int y = 0; y < hSize; y++) {
      for (int x = 0; x < wSize; x++) {
        float g = noise(xNoise, yNoise) * 255;
        float b = g - 50;
        noStroke();
        fill(0, g, b);
        rect(x*z, y*z, wSize, hSize);
        xNoise = xNoise + inc;
      }
      xNoise = 0;
      yNoise = yNoise + inc;
    }
  }
}
