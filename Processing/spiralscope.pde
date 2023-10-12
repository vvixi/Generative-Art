// Generative art in P4 by vvixi
float angle;

void setup(){
  
  background(0);
  size(600, 600);
  surface.setTitle("Spiralscope");
  noStroke();
  frameRate(20);
}

void draw(){

  float y = height;
  float x = width;
  float dia = 120;
  int num = 60;
  
  translate(width/2, height/2);
  for (int a = 0; a < 360; a+=15){
    rotate(radians(a));
    pushMatrix();
    for (int i = 0; i < num; i++){
      scale(0.95);
      rotate(radians(angle) + sin(angle * .5));
      rect(x, 0, a, i);
    }
    popMatrix();
    
    pushMatrix();
    for (int i = 0; i < num; i++){
      scale(5);
      rotate(-radians(angle));
      ellipse(1, y, i, a);
      fill(0, random(255), 200);
      stroke(100);
    }
    popMatrix();
  }
  angle+=0.03;
}
