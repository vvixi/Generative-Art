// Sierpinski Carpet implementation in P3 by vvixi

int divs = 3;
float sec;

void setup() {
  
  size(600, 600);
  background(20);
}

void draw() {
  
  rectMode(CORNER);
  fill(200);
  partition(divs, width);
}

public void partition(float iter, float sec) {
  
  // outline section, divide section by nine, color middle
  sec /= divs;
  if (sec < width/27) { return; }
  else {

    for (int i = 0; i < divs; i++) {
      for (int j = 0; j < divs; j++) {
        float offs = sec/3;
        rect(i * sec+offs, j* sec+offs, sec/3, sec/3);
        
        if (i == 1 && j == 1) {
          rect(i * sec, j * sec, sec, sec);
        }
      }
    }
    divs = divs *3;
  }
}
