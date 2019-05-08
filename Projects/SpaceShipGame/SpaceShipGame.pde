// Space Ship Game
// by Seth McCullough
// 2018
/* TO DO: Add Enemy Ship
 */

Table tResults;
TableRow tr1;

PlayerShip player;
ArrayList<Laser> lasers;
ArrayList<Rock> rocks;
ArrayList<EnemyShip> enemy;
EnemyShip e1;
Timer timer;
import processing.sound.*;
SoundFile laser;
SoundFile levelUp;

//For Ship's Thrust
float A, B, C;
//HUD
int score = 0;
int progress = 0;
int level = 1;
//Spawn
int enemySpawn;
int rockRate = 1000;
//Other
boolean gameOver = false;
boolean menu = true;
String name = "Funpop";


void setup() {
  size(500, 500);
  background(10, 0, 10);
  tResults = loadTable("results.csv", "header");
  player = new PlayerShip();
  lasers = new ArrayList<Laser>();
  rocks = new ArrayList<Rock>();
  enemy = new ArrayList<EnemyShip>();
  timer = new Timer(rockRate);
  //Sound FX
  laser = new SoundFile(this, "laser.wav");
  levelUp = new SoundFile(this, "levelUp.wav");
}

void draw() {
  A = random(6, 8);
  B = random(34, 36);
  C = random(50, 60);
  rockRate = 1000-level;
  background(10, 0, 10);

  if (gameOver) {
    menu = true;
  }

  if (menu) {
    startScreen();
  } else {

    // HUD
    fill(75);
    quad(0, height, width, height, width*.9, height-70, width*.1, height-70);

    // Timer
    if (!gameOver) {
      if (timer.isFinished()) {
        rocks.add(new Rock(int(random(width)), -50, 50, 50, #5e4932, #7c6043, 1+level/10));
        timer.start();
      }
    }

    //Progress
    if (progress >= 100) {
      level += 1;
      enemySpawn += 1;
      progress = 0;
      levelUp.play();
    }
    // Spawn Enemy Ship
    if (enemySpawn>=10) {
      enemy.add(new EnemyShip(width/2, -20, 100, 2));
      enemySpawn = 0;
    }

    // Add/Remove Lasers 
    for (int i = 0; i<lasers.size(); i++) {
      lasers.get(i).fire();
      lasers.get(i).display();
      if (lasers.get(i).reachedTop()) {
        lasers.remove(i);
      }
    }

    // Add/Remove Rocks
    for (int i = 0; i<rocks.size(); i++) {
      rocks.get(i).move();
      rocks.get(i).display();
      if (rocks.get(i).reachedBottom()) {
        rocks.get(i).y =-20;
      }
      // Collision Detection--------------
      for (int j=0; j<lasers.size(); j++) {
        if (dist(lasers.get(j).x, lasers.get(j).y, rocks.get(i).x, rocks.get(i).y) < rocks.get(i).r) {
          progress += 10;
          score += 100;
          rocks.get(i).health -= 10;
          lasers.remove(lasers.get(j));
        }
      }
      if (dist(mouseX, mouseY, rocks.get(i).x, rocks.get(i).y) < rocks.get(i).r+player.r) {
        rocks.get(i).health -= 100;
        player.health -= 10;
      }
      if (rocks.get(i).health < 1) {
        rocks.remove(rocks.get(i));
      }
    }

    if (!gameOver) {
      player.display(mouseX, mouseY, A, B, C);
      if (player.health <= 0) {
        gameOver = true;
      }
    }


    //Text
    updateDisplay();
  }
}

void mousePressed() {
  lasers.add(new Laser(mouseX, mouseY-50, 7, 30, #bc0000, #fc2100, 10, false));
  laser.amp(0.3);
  laser.play();
}

void updateDisplay() {
  textSize(20);
  fill(255);
  textAlign(CENTER);
  text(player.health + "%", width/2, height-20);
  text(score, width/4, 45);
  text(level, width/2, 45);
  text(progress + "%", width/1.3, 45);
  text("Health", width/2, height-45);
  text("Score", width/4, 20);
  text("Level", width/2, 20);
  text("Progress", width/1.3, 20);
}

void startScreen() {
  background(10, 0, 10);
  textAlign(CENTER);
  rectMode(CENTER);
  if (gameOver) {
    fill(200, 0, 0);
    textSize(80);
    text("GAME OVER", width/2, height/2);
    textSize(30);
    fill(255);
    text("Your Score: " + score, width/2, 30);
    text("Level: " + level, width/2, 60);
  } else {
    fill(0, 255, 0);
    textSize(60);
    text("Space Adventure", width/2, height/2);
  }
  fill(0, 255, 0);
  rect(width/2, height-50, 200, 50);
  textSize(20);
  fill(0);
  text("Click to Play", width/2, height-47);
  fill(255);
  TableRow newRow = tResults.addRow();
  newRow.setString("NAME", name);
  newRow.setString("SCORE", str(score));
  newRow.setString("LEVEL", str(level));
  saveTable(tResults, "data/results.csv");

  tResults.sort("SCORE");
  tr1 = tResults.getRow(tResults.getRowCount()-1);
  text("High Score: " + name + "   " + tr1.getString("SCORE"), width/2, height/2+140);
  text("Level: " + tr1.getString("LEVEL"), width/2, height/2+165);
}

void mouseReleased() {
  menu = false;
  gameOver = false;
}
