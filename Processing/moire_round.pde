// generatative art in P3 by vvixi
int diaMin = 2;
int diaMax = 640;
int diaStep = 20;

float xx, yy, angle;

void setup(){
  size(600, 600);
  noFill();
  stroke(0);
  strokeWeight(4);
}

void draw(){
  background(240);
  xx = cos(radians(PI - angle)) * 4;
  yy = sin(radians(-PI + angle)) * 4;
  translate(width/2, height/2);
  for(int dia = diaMin; dia < diaMax; dia += diaStep){
    ellipse(-xx, yy, dia + cos(angle), dia + cos(angle));
    ellipse(xx, yy, dia + cos(angle), dia + cos(angle));   
  }
  angle++;
}
