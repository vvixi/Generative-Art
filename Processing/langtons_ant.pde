// variation of Langton's Ant by vvixi
float blk;
PVector zero = new PVector(0,0);
PVector up = new PVector(0,-1);
PVector down = new PVector(0,1);
PVector left = new PVector(-1,0);
PVector right = new PVector(1,0);
PVector[] dirs = {up, right, down, left}; // N, E, S, W
int index = 0, indup = 0;
int gridSz = 100;
int[][] grid = new int[gridSz][gridSz];
PVector current;
PVector next;
void setup() {
  frameRate(120);
  size(500, 500);
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
  PVector step = dirs[turn_cw()];
  current.add(step);
}
int turn_cw() {
  index = (index + 1) % 4;
  return index;
}

int turn_ccw() {
  if (indup == 0) {
    indup = 3;
  } else
  indup = (indup - 1);
  return indup;
}
void draw() {
  if (current.x > gridSz-1) {
    current.x = 0;
  } else if (current.y > gridSz-1) {
    current.y = 0;
  } else if (current.x < 0) {
    current.x = gridSz-1;
  } else if (current.y < 0) {
    current.y = gridSz-1;
  }
  if (grid[int(current.x)][int(current.y)] == 255){
    // turn clockwise
    fill(0, 0, random(255));
    rect(current.x*blk, current.y*blk, blk, blk);
    grid[int(current.x)][int(current.y)] = 0;
    PVector step = dirs[turn_cw()];
    current.add(step);
  } else if (grid[int(current.x)][int(current.y)] == 0) {
    // turn counter-clockwise
    fill(255);
    rect(current.x*blk, current.y*blk, blk, blk);
    grid[int(current.x)][int(current.y)] = 255;
    PVector step = dirs[turn_ccw()];
    current.add(step);
    step = dirs[int(random(3))];
    current.add(step);
  }
}
