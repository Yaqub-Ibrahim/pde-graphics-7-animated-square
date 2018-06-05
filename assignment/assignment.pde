/**
 * processing-graphics-7-animated-square
 
 
 * by Yaqub Ibrahim
 * 
 * Moving Square
 * 
 */

int speed = 1;
int x = 350;
int y = 350;
int value = 0;
void setup() {
  size(700, 700);
  color fillVal = color(126);
  frameRate(60);
  //set up values
}


void draw() {
  background(100, 10, 100);
  fill(128, 128, 128);
  rect(x, y, 20, 20);
  if (y>699) {
    y=1 ;
  }
  if (y<1) {
    y=699;
  }
  if (x>699) {
    x=1 ;
  }
  if (x<1) {
    x=699;
  } //wraps the square around when touching an edge

  fill(255, 0, 0);
  rect(0, 0, 700, 40);
  textSize(22);
  fill(0, 0, 0);
  text("Warning: Wormhole detected ahead. Approach with caution.", 40, 35);
  //red rectangle at top of screen warning of worm holes
}

void keyPressed() {
  int vaule =0;
  color fillVal = color(126);
  fill(fillVal);
  if (vaule == 0) {
    vaule = 255;
  } else {
    value = 0;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      fillVal = 255;
      y= y-speed;
    } else if (keyCode == DOWN) {
      fillVal = 0;
      y= y+speed;
    }
  } else {
    fillVal = 126;
  }
  if (key == CODED) {
    if (keyCode == RIGHT) {
      fillVal = 255;
      x= x+speed;
    } else if (keyCode == LEFT) {
      fillVal = 0;
      x= x-speed;
    }
    //sets up the controls of the rectangle
  }
  if (keyPressed) {
    if (key == 'p' || key == 'P') {
      speed = 10;
      //increases the square's speed when you press p
    }
  }
}    
