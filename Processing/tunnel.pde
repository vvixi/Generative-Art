// Generative art in P3 by vvixi

Tunnel tunnel;

void setup() {
  size(600, 600);
  tunnel = new Tunnel();
}

void draw() {
  if (tunnel.clr) {
      background(tunnel.highlight);;
      fill(tunnel.black);
    } else {
      background(tunnel.black);
      fill(tunnel.highlight);
    }
  
  tunnel.update();
  tunnel.display();
}

class Tunnel {
  Boolean clr = false;
  int cSize = 1;
  float speed = 2.0;
  int cStartSz = 1;
  int cEndSz = width;
  color myColor;
  color black = color(0, 0, 0);
  color highlight = color(255, 0, 0);
  Tunnel() { 
    stroke(200, 0, 0);
  }
  
  void update() {
    //int cSize = 1;
    cSize+= 1 * this.speed;
    //fill(myColor);
    if (cSize > 880) {
      clr = !clr;
      cSize = 1;
    }
  }
  void display() {
    circle(width/2, height/2, cSize); 
    for (int i = 0; i < 10; i++) {
      circle(width/2, height/2, cSize - i * 100);
    }
  }
}
