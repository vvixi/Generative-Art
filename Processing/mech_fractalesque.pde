// Generative art in P4 by vvixi
float time;

void setup() {
  
  surface.setTitle("Mech Fractalesque");
  size(600, 600);
  background(20);
}
void draw() {
  
  float w = width / 4;
  float a = sin(time);
  //fill(a, 140, 13);
  fill(160,0, 190, 20);
  ellipse(width/2, height/2,time, time);
  fill(0, 0, 160, 20);
  pushMatrix();
  translate(width/2, height/2);
  //rotate(radians(time));
  rect(a+random(w), a+random(w), w+(a/10), w+a/10);
  popMatrix();
  pushMatrix();
  //translate(width/2, height/2);
  fill(13, 140, 191, 20);
  translate(0, 0);
  rect(a+random(w), a+random(w), w+(a/10), w+a/10);
  popMatrix();
  pushMatrix();
  translate(width/2, 0);
  //rotate(radians(time));
  rect(a+random(w), a+random(w), w+(a/10), w+a/10);
  popMatrix();
  pushMatrix();
  translate(0, height/2);
  //rotate(radians(time));
  rect(a+random(w), a+random(w), w+(a/10), w+a/10);
  popMatrix();
  time+=w+random(1000);
  
  if (time > width) {
    time = 0;
  }
  //stroke(0);
  //line(0, 0, width, height);
  //line(0, height, width, 0);
  
}
