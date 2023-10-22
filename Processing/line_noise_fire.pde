// Generative art in P4 by vvixi
float noiseScale = 0.2;
float wave = sin(49);
int lineWidth = 4;

void setup() {

  surface.setTitle("Line Noise");
  size(600, 600);
}

void draw() {

  background(0, 0, 40);
  for (int x = 0; x < width / lineWidth; x++) {

    float noiseVal = noise((wave + x), -wave * -noiseScale);
    float x1 = x * lineWidth;
    float y1 = wave + noiseVal * 320;
    float y2 = height - wave + noiseVal * -320.11123;
    stroke(200, noiseVal * 300, 0);
    strokeWeight(lineWidth);
    line(x1, y1, x1, -wave);
    line(x1, y2, x1, height - wave);
  }
  noiseScale += 0.0234;
}
