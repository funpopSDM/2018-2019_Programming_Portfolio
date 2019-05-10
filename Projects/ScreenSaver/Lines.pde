class Lines {
  //Class Variables
  float xpos, ypos, b, moveCount;
  color m;
  //Constructor
  Lines(float startX, float startY, float moveCount, color m) {
    this.xpos = startX;
    this.ypos = startY;
    this.moveCount = moveCount;
    this.m = m;
  }
  //Display
  void display(){
    stroke(m);
      b=random(4);
    if (b<=1) {
      moveRight(xpos, ypos, moveCount);      
    } else {
      if (b<=2&&b>1) {
        moveLeft(xpos, ypos, moveCount);
      } else {
        if (b<=3&&b>2) {
          moveUp(xpos, ypos, moveCount);
        } else {
          if (b>3) {
            moveDown(xpos, ypos, moveCount);
          }
        }
      }
    }
  }

  //Movement

    /*----------------------------Directions-------------------------------*/
    //Right
    void moveRight(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        if (i+startX>width) {
          startX = 0;
        }
        point(startX+i, startY);
        xpos = startX + i;
      }
    }
    //Left
    void moveLeft(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        if (i+startX<0) {
          startX = width;
        }
        point(startX-i, startY);
        xpos = startX - i;
      }
    }

    //Up
    void moveUp(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        if (i+startY<0) {
          startY = height;
        }
        point(startX, startY-i);
        ypos = startY - i;
      }
    }

    //Down
    void moveDown(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        if (i+startY>height) {
          startY = 0;
        }
        point(startX, startY+i);
        ypos = startY + i;
      }
    }
}
