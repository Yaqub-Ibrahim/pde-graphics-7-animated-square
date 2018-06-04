/**
 * <program/assignment name>
 * by <Your Name>
 * 
 * <Two sentence description of program>
 * 
 */
int x = 350;
int y = 350;
int value = 0;
void setup() {
size(700, 700);
color fillVal = color(126);
frameRate(60);

}

void draw() {
  background(100, 10, 100);
  rect(x, y, 20, 20);
  if(y ==700) {
    y=0 ;
  }
  if(y==1) {
    y=699;
  }
  if(x==700) {
    x=0 ;
  }
  if(x==1) {
    x=699;
  }
  
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
      y= y-1;
    } else if (keyCode == DOWN) {
      fillVal = 0;
      y= y+1;
    } 
  } else {
    fillVal = 126;
  }
  if (key == CODED) {
    if (keyCode == RIGHT) {
      fillVal = 255;
      x= x+1;
    } else if (keyCode == LEFT) {
      fillVal = 0;
      x= x-1;
    } 
  }
  
 
}
    
