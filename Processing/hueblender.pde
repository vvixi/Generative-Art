// generative art in P3 by vvixi
float a = 0;
float co = 0;
float time = 0;

void setup() {
    size(300, 300);  
    colorMode(HSB, 10);
    background(0);
    frameRate(30);
}

void draw() {
    stroke(co, 100, 80, 80);
    fill(co, 100, 100, 1);
    float r = random(180, 220);
    //float y = height / 2 + sin(a) * r;
    float x = width / 2 + cos(a)* width/2;
    float y = height / 2 + sin(a)* height;
    ellipse(x, y, width+60, height+60);
    time += 1;
    a += 0.1;
    if (co > 10) {
      co = 0;
    }
    co+=.5;
    //saveFrame("hueblender-vt-###.png");
}
