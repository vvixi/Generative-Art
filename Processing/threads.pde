// Generative art in P4 by vvixi
void setup() {
  
  size(600, 600);
  frameRate(16);
}

void draw() {
  
  background(0);
  
  if (frameCount % 32 == 0) {
    stroke(random(100, 255), 0, 0);
    
  } else {
    
    stroke(255, 0, 0);
  }
  
  for (int i = 0; i< 10; i++) {
      
      float wid = width/2+ random(-width, width);
      float wid2 = width/2+ random(-width, width);
      float a = wid, b = 0, c = wid2, d = height/2;
      strokeWeight(random(10));
      line(a, b, wid, height/2); 
      line(c, d, wid2, height); 
      strokeWeight(random(20));
      point(wid, height/2);
      strokeWeight(random(22));
      point(c, d);
      
  }
}
