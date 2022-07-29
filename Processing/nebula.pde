// generative art in P3 by vvixi
float x,y, wave=sin(.0113), amp=9, rot=0;
int r=0;

void setup() {
  size(600,600);
  background(0);
  noStroke();
}

void draw() {
  background(0);
  translate(height/2, width/2);
  rotate(radians(rot));
  for (r=0;r<12*360;r++){
    //stroke(random(255), random(255), random(255));
    x = cos(r+wave) * amp;
    y = sin(amp) * amp;
    amp+=0.08;
    fill(rot*r,y+wave,amp+wave);
    ellipse(x,y,3,3);
  }
  amp=6;
  rot--;
  wave+=0.0136;
}
