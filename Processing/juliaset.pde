// Julia Set implemented by vvixi
float angle = -33, t;

void setup() {
  size(300, 300);
  colorMode(HSB, 3);
  //frameRate(30);
}
void draw() {
  float ca = sin(angle/2);
  float cb = cos(angle/2);
  angle += 0.02;
  background(0);
  // Establish a range of values on the complex plane
  // A different range allows zoom on the fractal
  float w = 1;
  float h = (w * height) / width;
  float xmin = -w/2;
  float ymin = -h/2;
  loadPixels();
  // Maximum number of iterations for each point on the complex plane
  int maxiterations = 7;
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
        // sin, cos, tan, abs
        float aa = a * (a);
        float bb = b * tan(b);
        if (aa + bb > 3.8) {
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
