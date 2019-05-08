class Laser {
  /*-------------Variable--------------------*/
  int x, y, w, h;
  color c1, c2;
  float damage, speed;
  boolean active, reachedTop, enemy;
  /*-------------Constructor-----------------*/
  Laser(int x, int y, int w, int h, color c1, color c2, float speed, boolean enemy) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.c1=c1;
    this.c2=c2;
    this.speed=speed;
    this.enemy = enemy;
    active=true;
  }
  /*-------------Display---------------------*/
  void display() {
    noStroke();
    fill(c1);
    ellipseMode(CENTER);
    ellipse(x, y, w, h);
    fill(c2);
    ellipse(x, y, w/2, h/1.2);
  }
  /*-------------Functions-------------------*/
  void fire() {
    if (!enemy) {
      y -= speed;
    }
  }
  boolean reachedTop() {
    if (y < -50) {
      return true;
    } else {
      return false;
    }
  }
}
