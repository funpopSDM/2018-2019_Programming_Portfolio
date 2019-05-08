class PlayerShip {
  /*----------------------Variables-------------------------*/
  int x, y, liv, health;
  float A, B, C, r, speed;
  color c1, c2, c3;
  boolean alive;
  /*----------------------Constructor-----------------------*/
  PlayerShip(){
    //this.x = x;
    //this.y = y;
    //this.A = A;
    //this.B = B;
    //this.C = C;
    r = 40;
    health = 100;
    speed = 5;
    alive = true;
  }

  /*----------------------Display---------------------------*/
  void display(int x, int y, float A, float B, float C){
    //Wing Tips (lighter color of wing)
    fill(180, 0, 0);
    noStroke();  
    quad(x-10, y-60, x-10, y-40, x-17, y-30, x-30, y-30);
    quad(x+10, y-60, x+10, y-40, x+17, y-30, x+30, y-30);  
    rect(x-30, y-30, 13, 30);  
    rect(x+17, y-30, 13, 30);
    
    //Body
    fill(150, 0, 0);
    ellipse(x, y-5, 20, 40);
    
    //Cockpit
    fill(0, 200, 255);
    ellipse(x, y-10, 10, 20);
    
    //Wing Back (Darker color of wing)
    fill(150, 0, 0);
    quad(x-17, y, x-10, y+20, x-20, y+20, x-40, y-10);
    quad(x+17, y, x+10, y+20, x+20, y+20, x+40, y-10);
    
    //Back
    fill(180, 0, 0);
    rect(x-20, y+10, 40, 10);
    
    //Thrust
    fill(0, 200, 255);
    quad(x+16, y+27, x+11, y+27, x+A, y+B, x+A+13, y+B);
    quad(x-16, y+27, x-11, y+27, x-A, y+B, x-A-13, y+B);
    triangle(x+17, y+27, x+10, y+27, x+13.5, y+C);
    triangle(x-17, y+27, x-10, y+27, x-13.5, y+C);
    
    //Booster Engines
    fill(130);
    ellipse(x+13, y+15, 15, 30);
    ellipse(x-13, y+15, 15, 30);
    fill(180);
    rect(x+25, y-30, 5, 20);
    rect(x-30, y-30, 5, 20);
    stroke(1);
    line(x-7, y+20, x-20, y+20);
    line(x+6, y+20, x+19, y+20);
    line(x-7, y+10, x-20, y+10);
    line(x+6, y+10, x+19, y+10);
    fill(100);
    ellipse(x+13, y+15, 10, 20);
    ellipse(x-14, y+15, 10, 20);
  }
  /*----------------------Function--------------------------*/

}
