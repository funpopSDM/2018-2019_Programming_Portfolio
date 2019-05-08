class Rock {
/*-------------Variable--------------------*/
  int x, y, w, h, r;
  color c1, c2;
  float health,speed;
  boolean alive;
/*-------------Constructor-----------------*/  
  Rock(int x,int y,int w,int h,color c1,color c2,float speed){
  this.x=x;
  this.y=y;
  this.w=w;
  this.h=h;
  this.c1=c1;
  this.c2=c2;
  this.speed=speed;
  alive=true;
  health = 10;
  r = w/2;
  }
/*-------------Display---------------------*/
  void display(){
  rectMode(CENTER);
  fill(c1);
  rect(x,y,w,h);
  stroke(0);
  line(x-w/2,y-h/2,x+w/2,y+h/2);
  line(x-w/2,y+h/2,x+w/2,y-h/2);
  fill(c2);
  rect(x,y,w/1.7,h/1.7);
  rectMode(CORNER);
  }
/*-------------Functions-------------------*/
void move(){
  y += speed;
  }
    boolean reachedBottom() {
    if (y > height+100) {
      return true;
    } else {
      return false;
    }
  }
}
