float xstep = 3;
float ystep = 3;
float wave = sin(.412);
int pixSize = 2;
void setup() {
  size(600, 400);
}

void draw() {
  float offset = float(frameCount)/999;
  noStroke();
  for(float i = 0; i < width; i+=pixSize){
    for(float j = 0; j < height; j+=pixSize){
      float N = noise(i/height*sin(.6)+offset, j/height-offset*.231)+wave;
      fill(N*(5855)%220,250,0);
      rect(i, j, pixSize, pixSize);
    }
  }

  wave+=0.001;
}
