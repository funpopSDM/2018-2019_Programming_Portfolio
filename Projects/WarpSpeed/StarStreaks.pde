class Car {
  // Member Variables
  color c;
  float xpos, ypos, xspeed;

  // Constructor
  Car(color c, float xpos, float ypos, float xspeed) {
    this.c = c;
    this.xpos = xpos;
    this.ypos = ypos;
    this.xspeed = xspeed;
  }

  //Functionality
  void display() {
    noStroke();
    ellipseMode(CENTER);
    fill(0,180,255);
    ellipse(xpos,ypos,40,4);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
