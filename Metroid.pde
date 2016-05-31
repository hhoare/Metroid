
float gx=50, gy=300, gvy;
int goRight, goLeft, jump;

int r, l;

float cameraX;
int mapWidth=0;

int pause=0;
void setup() {
  size(640, 480);
  frameRate(30);
  noStroke();
}
int page=0;
void draw() {
  loadImages();
  gameplay();
  noCursor();
  // ellipse(gx+18,gy,5,5);
}
void guymotion() {  
  if (goRight == 1) {
    gx += 5;
    if (jump == 1) {
      types = 4;
    } else {
      types+=.5;
    }
  }

  if (goLeft == 1) {
    gx -=5;
    if (jump == 1) {
      types = -6;
    } else {
      types-=.5;
    }
  }
  gvy+=1;
  gy+=gvy;
}
void keyPressed() {
  if (key == ' ' && bgo == 0) {


    if (types >= 0) {//right
      bx = gx + 5;
      by = gy-30;
      bgo = 1;
    } else {//left

      bx = gx;
      by = gy-30;
      bgo = -1;
    }
  }
  if (jump == 0 && keyCode == UP || key == 'w') {
    jump = 1;
    gvy = -14;
  }
  if (keyCode == RIGHT ||  key == 'd') {
    goRight = 1;
    //goLeft = 0;
  }
  if (keyCode == LEFT||  key == 'a') {
    // goRight = 0;
    goLeft= 1;
  }
  if (key == '1') {
    page =1;
    gx=50;
    gy=300;
    cameraX=0;
  }
  if (key == '2') {
    page =2;
    pause = 0;
    gx=50;
    gy=50;
    cameraX=0;
  }
  if (key == '3') {
    page =3;
    pause = 0;
    gx=50;
    gy=50;
    cameraX=0;
  }
  if (key == '4') {

    page = 4;
  }
}
void keyReleased() {
  if (keyCode == RIGHT||  key == 'd') {
    goRight = 0;
    //types = 0;
  }
  if (keyCode == LEFT||  key == 'a') {
    goLeft= 0;
    // types = 0;
  }
}


void mousePressed() {

  if (page == 0) {
    page = 1;
  }
}