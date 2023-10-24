// Sin 3d Spinner in P4 by vvixi
float theta = 0.0;

void setup() {
  surface.setTitle("Sin 3d Spinner");
  size(600, 600, OPENGL);
  smooth();
}

void draw() {
  
  background(0);
  theta += 0.02;
  noStroke();
  float x = theta;
  for (int i =0; i < 90; i++) {
    
    float y = sin(x) * height/6;
    float y2 = cos(x) * height/5;
    stroke(0, 60+y, i * 3-y2, i*5);
    noFill();
    
    pushMatrix();
    translate(width/2-y, height/2+y2, width/4 - y);
    sphere(i);
    popMatrix();
    x += 0.2;
  }
}
