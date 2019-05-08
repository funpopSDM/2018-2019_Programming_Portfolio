class EnemyShip {
  /*----------------------Variables-------------------------*/
  int x, y, liv;
  float A, B, C, r, health, speed;
  color c1, c2, c3;
  boolean alive;
  /*----------------------Constructor-----------------------*/
  EnemyShip(int x, int y, int health, float speed){
    this.x = x;
    this.y = y;
    this.health=health;
    this.speed=speed;
    health = 100;
    speed = 1;
    alive = true;
  }

  /*----------------------Display---------------------------*/
void display(){
ellipse(200,200,20,20);
}
  /*----------------------Function--------------------------*/
}
