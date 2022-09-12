// Langton's Ant by vvixi
float blk;
//PVector zero = new PVector(0,0);
PVector up = new PVector(0,-1);
PVector down = new PVector(0,1);
PVector left = new PVector(-1,0);
PVector right = new PVector(1,0);
PVector[] dirs = {up, right, down, left}; // N, E, S, W
int index = 0;
int gridSz = 100;
int[][] grid = new int[gridSz][gridSz];
PVector current;
PVector prev;
int forward;

void setup() {
  frameRate(120);
  size(500, 500);
  stroke(200);
  blk = width/100;
  for (int i = 0; i < grid.length; i++) {
    for (int j = 0; j < grid[0].length; j++) {
      rect(i*blk, j*blk, blk, blk);
      grid[i][j] = 255;
    }
  }
  // starting block
  current = new PVector(gridSz/2,gridSz/2);
  grid[int(current.x)][int(current.y)] = 0;
  fill(0);
  rect(current.x*blk, current.y*blk, blk, blk);
  forward = turn_cw();
  PVector step = dirs[forward];
  current.add(step);

}
int turn_cw() {
  index = (index + 1) % 4;
  return index;
}

int turn_ccw() {
  if (index == 0) {
    index = 3;
  } else
  index = (index - 1);
  return index;
}
void draw() {
  // stop when bridge leaves screen
  if (current.x < 0) {
    return;
  } 
  if (grid[int(current.x)][int(current.y)] == 255){
    // turn clockwise
    fill(0, 0, random(255));
    rect(current.x*blk, current.y*blk, blk, blk);
    grid[int(current.x)][int(current.y)] = 0;
    forward = turn_cw();
    PVector step = dirs[forward];
    current.add(step);

  } else if (grid[int(current.x)][int(current.y)] == 0) {
    // turn counter-clockwise
    fill(255);
    rect(current.x*blk, current.y*blk, blk, blk);
    grid[int(current.x)][int(current.y)] = 255;
    forward = turn_ccw();
    PVector step = dirs[forward];
    current.add(step);
  }
}
