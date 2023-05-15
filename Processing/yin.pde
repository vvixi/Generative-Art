// generative art in P3 by vvixi
float ang;
float c;
void setup() {
  surface.setTitle("Yin");
  size(600, 600);
  background(20);
  colorMode(HSB, 360);
}
void draw() {
  
  fill(100+c, c%100, 360, 10);
  for (int i = 0; i < 10;i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(ang));
    rectMode(CENTER);
    ellipse(width/2/c, height/2-c, c+i, c-i);
    popMatrix();
    if(i > 9) {
      i = 0;
    }
  }
  c+=2.7;
  if (c > 360) {
    c = 0;
  }
    
  ang += 3.863;
  //ang+=3.3;
  //ang+=9.9;
}
