// generative art in P3 by vvixi
float rot=0, size=600;

void setup() {
  surface.setTitle("Sun Spirograph");
  size(600, 600);
  background(0);
  noFill();
  stroke(255);
}

void draw(){
  if (size > 0) {
    translate(width / 2, height / 2);
    rotate(rot);
    ellipse(0, 0, rot, size);
    rot += 2;
    size -= 4;
    println("" + rot);
  }
}
