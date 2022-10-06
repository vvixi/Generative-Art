// Julia Set implemented by vvixi
float angle = -33, t, aa, bb;
int count;

void setup() {
  size(300, 300);
  colorMode(HSB, 3);
  frameRate(32);
}
void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    count++;
    if (count > 5) { count = 0; }
  }
  float ca = sin(angle/2);
  float cb = cos(angle/2);
  //float ca = 0;
  //float cb = 0.8;
  angle += 0.01;
  background(0);
  // Establish a range of values on the complex plane
  // A different range allows zoom on the fractal
  float w = 1;
  float h = (w * height) / width;
  float xmin = -w/2;
  float ymin = -h/2;
  loadPixels();
  // Maximum number of iterations for each point on the complex plane
  int maxiterations = 10;
  float xmax = xmin + w;
  float ymax = ymin + h;
  float dx = (xmax - xmin) / (width);
  float dy = (ymax - ymin) / (height);
  float y = ymin;
  for (int j = 0; j < height; j++) {
    float x = xmin;
    for (int i = 0; i < width; i++) {
      // as we iterate z = z^2 + cm does z go towards infinity?
      float a = x;
      float b = y;
      int n = 0;
      while (n < maxiterations) {
        // add some weirdness with each click via sin, cos, tan, abs
        if (count == 0) { aa = a * a; bb = tan(b);}
        else if (count == 1) { aa = cos(a) * (a); bb = b * sin(b);}
        else if (count == 2) { aa = sin(a) * (a); bb = b * sin(b);}
        else if (count == 3) { aa = cos(a) * (a); bb = b * (b);}
        else if (count == 4) { aa = noise(a) * (a); bb = b * sin(b);}
        else if (count == 5) { aa = a * a; bb = b * sin(b);}
        if (aa + bb > 3.9) {
          break;
        }
        float twoab = 2.0 * a * b;
        a = aa - bb + ca;
        b = twoab + cb;
        n++;
      }

      if (n == maxiterations) {
        pixels[i+j*width] = color(0);
      } else {
        float hu = abs(float(n) / maxiterations);
        pixels[i+j*width] = color(hu, 100, 100);
      }
      x += dx;
    }
    y += dy;
  }
  updatePixels();
}
