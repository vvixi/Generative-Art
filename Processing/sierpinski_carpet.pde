// Sierpinski Carpet implementation in P3 by vvixi
int divs = 1;
void setup() {
  surface.setTitle("Sierpinski Carpet");
  size(600, 600);
  background(20);
}

void draw() {
  noStroke();
  fill(100);
  partition(divs, width);
}

public void partition(float iter, float sec) {
  
  sec /= divs;
  if (sec < width/96) { return; }
  else {

    for (int i = 0; i < divs; i++) {
      for (int j = 0; j < divs; j++) {
        float offs = sec/3;
        rect(i * sec+offs, j* sec+offs, offs, offs);  
      }
    }
    divs = divs *3;
  }
}
