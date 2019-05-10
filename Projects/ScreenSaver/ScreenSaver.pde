Lines[] line = new Lines[10];
int c;
float b;

void setup() {
  c=5;
  background(255);
  //  fullScreen();
  size(300, 300);
  for (int i=0; i<line.length; i++) {
    line[i] = new Lines(random(width), random(height), c, color(random(255), random(255), random(255)));
  }
}

void draw() {  
  strokeWeight(random(0.1, 3));
  if (frameCount>500) {
    background(255);
    frameCount = 0;
  } else {
    for (int i=0; i<line.length; i++) {
      line[i].display();
    }
  }
}

void mouseClicked() {
  saveFrame("line-######.png");
}
