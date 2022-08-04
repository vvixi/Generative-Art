// generative art in P3 by vvixi
float x,y, wave=sin(13), amp=10, rot=0;
int r=0;

void setup() {
  size(600,600);
  //background(220);
  noStroke();
}

void draw() {
  background(220);
  translate(height/2, width/2);
  rotate(radians(rot));
  for (r = 0; r < 12 * 360; r++){
    x = tan(r + wave) * amp;
    y = cos(r) * amp;
    amp += 0.08;
    fill(rot, wave, random(200, 255));
    ellipse(y, x, 4, 4);
  }
  amp=5;
  if (rot >= 256) {
    rot = 0;
  }
  rot++;
  wave += 0.0331;
}
