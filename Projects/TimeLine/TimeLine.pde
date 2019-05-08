void setup() {
  size(900, 400);
  background(0, 145, 190);
}
void draw() {
  background(0, 145, 190);
  //Title
  textSize(45);
  textAlign(CENTER);
  fill(255);
  text("Historic Computer Systems", width/2, 45);
  textSize(20);
  text("by Seth McCullough", width/2, 70);

  //Main Line
  strokeWeight(3);
  line(100, 275, 800, 275);

  //Events Top
  histEvent("Harvard Mark I", "May 1944","Its first program was for the Manhattan project.", "(US) Controlled by 24-channel punched paper", 100, true);
  histEvent("ENIAC", "February 1946","It was used to calculate artillery firing tables.", "(US) Controlled by patch cables and switches", 200, false);
  histEvent("ARC2", "May 1948","It was created to determine crystal structures.", "(UK) Stored-program in rotating drum memory", 300, true);
  histEvent("Manchester Baby", "June 1948","It was the world's first stored-program computer.", "(UK) Stored-program in Williams cathode ray tube memory", 400, false);
  histEvent("Modified ENIAC", "September 1948","This is a modified version of the ENIAC.", "(US) Only stored using the Function Tables as program ROM", 500, true);
  histEvent("Manchester Mark 1", "April 1949","It was able to run a program error-free for nine hours.", "(UK) Stored in Williams cathode ray tube memory and magnetic drum memory", 600, false);
  histEvent("EDSAC", "May 1949","It was the second electronic stored-program computer.", "(UK) Stored in mercury delay line memory", 700, true);
  histEvent("CSIRAC", "November 1949","It was Australia's first digital computer.", "(Australia) Stored in mercury delay line memory", 800, false);
}

void histEvent (String name, String date, String descr,String program, int x, boolean top) {
  int y;
  y=275;
  textSize(12);
  textAlign(CENTER);
  /*----------------------------------TOP------------------------------*/
  if (top) {
    text(name, x-20, y-40);
    text (date, x-20, y-25);
    line(x, y, x-20, y-20);
    //Find location of mouse for displaying the description TOP
    if (mouseX > x-65 && mouseX < x+25 && mouseY > y-45 && mouseY < y-20) {
      textSize(12);
      text(descr, x+40, y-60);
      text(program, x+40, y-75);
    }
    /*--------------------------------BOTTOM---------------------------*/
  } else {
    text(date, x-20, y+50);
    text (name, x-20, y+35);
    line(x, y, x-20, y+20);
    //Find location of mouse for displaying the description BOTTOM
    if (mouseX > x-65 && mouseX < x+25 && mouseY > y+20 && mouseY < y+60) {
      textSize(12);
      text(program, x-40, y+70);
      text(descr, x-40, y+85);
    }
  }
}
