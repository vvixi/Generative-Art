// generative art in P3 by vvixi
Bubble[] bubbles = new Bubble[100];

void setup() {
  size(400, 400);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(64);
    bubbles[i] = new Bubble(random(100));
  }
}
class Bubble {
  float x;
  float y;
  float diameter;
  float yspeed;
  
  Bubble(float tempD) {
    x = random(width);
    y = height+random(20, 25);
    diameter = tempD;
    yspeed = random(0.3, 2.5);
    
  }
  void ascend() {
    y -= yspeed;
    x += random(-4,4);
  }
  
  void display() {
    stroke(color(random(255), 100, 100));
    
    fill(60);
    ellipse(x, y, diameter, diameter);
  }
  
  void top() {
    if (y <= -15) {
      y = height+20;
    }
  }
}
void draw() {
  background(180);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}
