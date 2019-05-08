//Car myCar;
Car[] myCars = new Car[50];

void setup() {
  size(200, 200);
  //myCar = new Car(color(random(255), random(255), random(255)), random(width), random(height), random(1, 10));
  for (int i=0; i<myCars.length; i++) {
    myCars[i] = new Car(color(random(255), random(255), random(255)), random(width), random(height), random(10, 20));
  }
}

void draw() {
  background(0);
  //myCar.display();
  //myCar.drive();
  for (int i=0; i<myCars.length; i++) {
    myCars[i].display();
    myCars[i].drive();
  }
}
