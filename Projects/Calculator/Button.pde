class Button {
  //Variables
  int x, y, w, h, v;
  String op;
  color c, b, d;
  boolean hov, circle;

  //Constructor
  Button(int x, int y, int w, int h, color c, color b, color d, boolean circle) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.b = b;
    this.d = d;
    this.circle = circle;
    hov=false;
  }

  Button asNumber(int v) {
    this.v = v;
    circle = false;
    return this;
  }
  Button asOperator(String op) {
    this.op = op;
    circle = true;
    return this;
  }

  //Display
  void display() {
    ellipseMode(CENTER);
    textAlign(CENTER, CENTER);
    if (circle) {
      //For Operation Buttons
      if (hov) {
        fill(c);
        ellipse(x, y, w, h);
        fill(d);
        if (mousePressed) {
          ellipse(x-1, y-1, w-3, h-3);
          fill(0);
          text(op, x-1, y-1);
        } else {
          ellipse(x+1, y+1, w-3, h-3);
          fill(0);
          text(op, x, y);
        }
      } else {
        fill(c);
        ellipse(x, y, w, h);
        fill(b);
        ellipse(x+1, y+1, w-3, h-3);
        fill(0);
        text(op, x, y);
      }
    } else {
      //For Number Buttons
      rectMode(CENTER);
      textAlign(CENTER, CENTER);
      fill(c);
      rect(x, y, w, h, 5);
      if (hov) {
        fill(d);
        if (mousePressed) {
          rect(x-1, y-1, w-3, h-3, 5);
          fill(0);
          text(v, x-1, y-1);
        } else {
          rect(x+1, y+1, w-3, h-3, 5);
          fill(0);
          text(v, x, y);
        }
      } else {
        fill(b);
        rect(x+1, y+1, w-3, h-3, 5);
        fill(0);
        text(v, x, y);
      }
    }
  }
  //Hover Method
  void hover() {
    hov = mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }
}
