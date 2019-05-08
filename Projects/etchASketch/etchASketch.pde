int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  // Set start coords
  x = 70;
  y = 20;
}

void draw() {
  fill(255);
  //  drawName();
  //  noLoop();
}

// Algorithm for your first name
void drawName() {
  moveLeft(5);
  moveDown(5);
  moveRight(5);
  moveDown(5);
  moveLeft(5);
  moveRight(11);
  moveLeft(5);
  moveUp(5);
  moveRight(5);
  moveLeft(5);
  moveUp(5);
  moveRight(12);
  moveLeft(3);
  moveDown(10);
  moveUp(10);
  moveRight(4);
  moveDown(10);
  moveUp(5);
  moveRight(5);
  moveDown(5);
  moveUp(10);
}

// Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}

// Method to draw left line
void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y);
  }
  x=x-(10*rep);
}

// Method to draw down line
void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y+i);
  }
  y=y+(10*rep);
}

// Method to draw up line
void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y-i);
  }
  y=y-(10*rep);
}

void mouseClicked() {
  saveFrame("line-######.png");
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight(1);
    } else if (keyCode == DOWN) {
      moveDown(1);
    } else if (keyCode == UP) {
      moveUp(1);
    } else if (keyCode == LEFT) {
      moveLeft(1);
    }
  }
}
