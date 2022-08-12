// generative art in P3 by vvixi
float count = 0;
float co = 50;
void setup() {
  size(400, 400);
  colorMode(HSB, 100);
}
void PolygonBrush(float x, float y, float radius, float vertexCount) {
  PVector gen = new PVector(0, radius);
  float angle = TWO_PI/vertexCount;
  beginShape();
  vertex(gen.x++, gen.y++);
  for (int i=1; i<=vertexCount; i++) {
    gen.rotate(angle);
    vertex(gen.x+count, gen.y+count);
  }
  count++;
  co+=0.05;
  endShape();
}
void draw() {
  stroke(0);
  fill(co, 100, 100);
  PolygonBrush(width/2, height/2, 300-co, 3);
  //saveFrame("polybrush_###.png");
  if (co > 100) {
    co = 0;
  }
}
