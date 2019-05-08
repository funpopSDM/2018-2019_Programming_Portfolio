/*
Note: The Sin, Cos, and Tan are in radians because processing does not have a
calculate-in-degrees mode or at the least not to my knowledge.
*/
Button[] numBtn = new Button[10];
Button[] opBtn = new Button[12];
String disVal, leftVal, rightVal;
char opVal;
float result;
boolean firstNum, dec, numPlaced;
color c, b, d;

void setup() {
  textSize(15);
  c = color(150);
  b = color(255);
  d = color(200);
  size(300, 500);
  //         Button(int x, int y, int w, int h, int v, color c, boolean circle, char s);
  numBtn[0] = new Button(115, 400, 60, 60, c, b, d, false).asNumber(0);
  numBtn[1] = new Button(50, 335, 60, 60, c, b, d, false).asNumber(1);
  numBtn[2] = new Button(115, 335, 60, 60, c, b, d, false).asNumber(2);
  numBtn[3] = new Button(180, 335, 60, 60, c, b, d, false).asNumber(3);
  numBtn[4] = new Button(50, 270, 60, 60, c, b, d, false).asNumber(4);
  numBtn[5] = new Button(115, 270, 60, 60, c, b, d, false).asNumber(5);
  numBtn[6] = new Button(180, 270, 60, 60, c, b, d, false).asNumber(6);
  numBtn[7] = new Button(50, 205, 60, 60, c, b, d, false).asNumber(7);
  numBtn[8] = new Button(115, 205, 60, 60, c, b, d, false).asNumber(8);
  numBtn[9] = new Button(180, 205, 60, 60, c, b, d, false).asNumber(9);

  opBtn[0] = new Button(115, 460, 190, 50, color(#8CB26F), color(#D9E7D6), color(#C5D0C3), true).asOperator("=");
  opBtn[1] = new Button(250, 400, 60, 60, color(#DAC580), color(#FDF2D0), color(#E5DDC3), true).asOperator("+");
  opBtn[2] = new Button(250, 335, 60, 60, color(#DAC580), color(#FDF2D0), color(#E5DDC3), true).asOperator("-");
  opBtn[3] = new Button(250, 270, 60, 60, color(#DAC580), color(#FDF2D0), color(#E5DDC3), true).asOperator("*");
  opBtn[4] = new Button(250, 205, 60, 60, color(#DAC580), color(#FDF2D0), color(#E5DDC3), true).asOperator("/");
  opBtn[5] = new Button(50, 400, 60, 60, c, b, d, true).asOperator(".");
  opBtn[6] = new Button(180, 400, 60, 60, c, b, d, true).asOperator("+/-");
  opBtn[7] = new Button(250, 103, 60, 40, color(#BF7D77), color(#F1D0CD), color(#DAC2C0), true).asOperator("c");

  opBtn[8] = new Button(50, 153, 56, 36, color(#DAC580), color(#FDF2D0), color(#E5DDC3), true).asOperator("sin");
  opBtn[9] = new Button(115, 153, 56, 36, color(#DAC580), color(#FDF2D0), color(#E5DDC3), true).asOperator("cos");
  opBtn[10] = new Button(180, 153, 56, 36, color(#DAC580), color(#FDF2D0), color(#E5DDC3), true).asOperator("tan");
  opBtn[11] = new Button(250, 153, 56, 36, color(#DAC580), color(#FDF2D0), color(#E5DDC3), true).asOperator("√");
  disVal = "";
  leftVal = "";
  rightVal = "";
  opVal = ' ';
  result = 0.0;
  firstNum = true;
  dec = false;
  numPlaced = false;
}

void draw() {
  background(255);
  fill(221, 232, 250);
  rect(150, 310, 280, 360, 20);
  for (int i=0; i<numBtn.length; i++) {
    numBtn[i].hover();
    numBtn[i].display();
  }
  for (int i=0; i<opBtn.length; i++) {
    opBtn[i].hover();
    opBtn[i].display();
  }
  updateDisplay();
}
void updateDisplay() {
  textSize(20);
  fill(150);
  rect(151, 51, 283, 53, 5);    
  fill(255);
  rect(150, 50, 280, 50, 5);
  fill(0);
  textAlign(RIGHT, CENTER);
  text(disVal, 270, 50);
  textSize(15);
}
/*--------------------------KEYBOARD BUTTONS-------------------------------------*/
void keyPressed() {
  if (firstNum) {
    if (key == '1') {
      leftVal += 1;
      disVal = leftVal;
      numPlaced = true;
    } else if (key == '2') {
      leftVal += 2;
      disVal = leftVal;
      numPlaced = true;
    } else if (key == '3') {
      leftVal += 3;
      disVal = leftVal;
      numPlaced = true;
    } else if (key == '4') {
      leftVal += 4;
      disVal = leftVal;
      numPlaced = true;
    } else if (key == '5') {
      leftVal += 5;
      disVal = leftVal;
      numPlaced = true;
    } else if (key == '6') {
      leftVal += 6;
      disVal = leftVal;
      numPlaced = true;
    } else if (key == '7') {
      leftVal += 7;
      disVal = leftVal;
      numPlaced = true;
    } else if (key == '8') {
      leftVal += 8;
      disVal = leftVal;
      numPlaced = true;
    } else if (key == '9') {
      leftVal += 9;
      disVal = leftVal;
      numPlaced = true;
    } else if (key == '0') {
      leftVal += 0;
      disVal = leftVal;
      numPlaced = true;
    }
  } else {
    if (key == '1') {
      rightVal += 1;
      disVal = rightVal;
      numPlaced = true;
    } else if (key == '2') {
      rightVal += 2;
      disVal = rightVal;
      numPlaced = true;
    } else if (key == '3') {
      rightVal += 3;
      disVal = rightVal;
      numPlaced = true;
    } else if (key == '4') {
      rightVal += 4;
      disVal = rightVal;
      numPlaced = true;
    } else if (key == '5') {
      rightVal += 5;
      disVal = rightVal;
      numPlaced = true;
    } else if (key == '6') {
      rightVal += 6;
      disVal = rightVal;
      numPlaced = true;
    } else if (key == '7') {
      rightVal += 7;
      disVal = rightVal;
      numPlaced = true;
    } else if (key == '8') {
      rightVal += 8;
      disVal = rightVal;
      numPlaced = true;
    } else if (key == '9') {
      rightVal += 9;
      disVal = rightVal;
      numPlaced = true;
    } else if (key == '0') {
      rightVal += 0;
      disVal = rightVal;
      numPlaced = true;
    }
  }
  if (key == '+') {
    opVal = '+';
    firstNum = false;
    dec = false;
  } else if (key == '-') {
    opVal = '-';
    firstNum = false;
    dec = false;
  } else if (key == '*') {
    opVal = '*';
    firstNum = false;
    dec = false;
  } else if (key == '/') {
    opVal = '/';
    firstNum = false;
    dec = false;
  } else if (key == RETURN || key == ENTER) {
    performCalc();
  } else if (key == DELETE || key == BACKSPACE) {
    clear();
  }
}
/*-----------------------------------ONSCREEN BUTTONS-------------------------*/
void mouseReleased() {
  //NUMBERS
  for (int i=0; i<numBtn.length; i++) {
    if (numBtn[i].hov) {
      if (firstNum) {
        leftVal += numBtn[i].v;
        disVal = leftVal;
        numPlaced = true;
      } else {
        rightVal += numBtn[i].v;
        disVal = rightVal;
      }
    }
  }
  //OPERATIONS
  for (int i=0; i<opBtn.length; i++) {
    if (opBtn[i].hov) {
      if (opBtn[i].op == "+") {
        opVal = '+';
        firstNum = false;
        dec = false;
      } else if (opBtn[i].op == "-") {
        opVal = '-';
        firstNum = false;
        dec = false;
      } else if (opBtn[i].op == "*") {
        opVal = '*';
        firstNum = false;
        dec = false;
      } else if (opBtn[i].op == "/") {
        opVal = '/';
        firstNum = false;
        dec = false;
      } else if (opBtn[i].op == "sin") {
        opVal = 's';
        firstNum = false;
        dec = false;
      } else if (opBtn[i].op == "cos") {
        opVal = 'c';
        firstNum = false;
        dec = false;
      } else if (opBtn[i].op == "tan") {
        opVal = 't';
        firstNum = false;
        dec = false;
      } else if (opBtn[i].op == "√") {
        opVal = '√';
        firstNum = false;
        dec = false;
      } else if (opBtn[i].op == "+/-") {
        if (firstNum) {
          leftVal = str(float(leftVal)*-1);
          disVal = leftVal;
        } else {
          rightVal = str(float(rightVal)*-1);
          disVal = rightVal;
        }
      } else if (opBtn[i].op == ".") {
        if (firstNum) {
          if (dec) {
          } else {
            leftVal += opBtn[i].op;
            disVal = leftVal;
            dec = true;
          }
        } else {
          if (dec) {
          } else {
            rightVal += opBtn[i].op;
            disVal = rightVal;
            dec = true;
          }
        }
      } else if (opBtn[i].op == "=") {
        performCalc();
        dec = false;
      } else if (opBtn[i].op == "c") {
        clear();
      }
    }
  }
}
/*-----------------------------------CALCULATIONS---------------------------*/
void performCalc() {
  if (!firstNum) {
    if (opVal == '+') {
      result = float(leftVal) + float(rightVal);
      disVal = str(result);
    } else if (opVal == '-') {
      result = float(leftVal) - float(rightVal);
      disVal = str(result);
    } else if (opVal == '*') {
      result = (float(leftVal))*(float(rightVal));
      disVal = str(result);
    } else if (opVal == '/') {
      result = (float(leftVal))/(float(rightVal));
      disVal = str(result);
      //NOTE: SIN COS AND TAN ARE IN RADIANS. THE CONVERSION TO DEGREES DOES NOT PRODUCE A CORRECT ANSWER.
    } else if (opVal == 's') {
      if (numPlaced) {
        result = (float(leftVal))*sin(float(rightVal));
        disVal = str(result);
        numPlaced = false;
      } else {
        result = sin(float(rightVal));
        disVal = str((result));
      }
    } else if (opVal == 'c') {
      if (numPlaced) {
        result = (float(leftVal))*sin(float(rightVal));
        disVal = str(result);
        numPlaced = false;
      } else {
        result = sin(float(rightVal));
        disVal = str((result));
      }
    } else if (opVal == 't') {
      if (numPlaced) {
        result = (float(leftVal))*sin(float(rightVal));
        disVal = str(result);
        numPlaced = false;
      } else {
        result = sin(float(rightVal));
        disVal = str((result));
      }
    } else if (opVal == '√') {
      if (numPlaced) {
        result = (float(leftVal))*sqrt(float(rightVal));
        disVal = str(result);
        numPlaced = false;
      } else {
        result = sqrt(float(rightVal));
        disVal = str((result));
      }
    }
  } else {
    result = float(leftVal);
    disVal = str(result);
  }
  firstNum = true;
  rightVal = "";
  leftVal = str(result);
  numPlaced = false;
}

void clear() {
  disVal = "";
  leftVal = "";
  rightVal = "";
  opVal = ' ';
  result = 0.0;
  firstNum = true;
  dec = false;
  numPlaced = false;
}
