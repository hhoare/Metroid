

GRAY g1 = new GRAY(25, 260, 100, 2, 0);
GRAY g2 = new GRAY(150, 320, 100, 1, 0);
GRAY g3 = new GRAY(320, 400, 100, 2, 0);
GRAY g4 = new GRAY(460, 340, 100, 2, 0);
GRAY g5 = new GRAY(615, 260+15, 100, 2, 0);
GRAY g6 = new GRAY(615, 260-80+15, 100, 2, 0);
GRAY g7 = new GRAY(750, 470, 100, 2, 0);
GRAY g8 = new GRAY(900, 410, 100, 2, 0);
GRAY g11 = new GRAY(1010, 370, 100, 2, 0);

GRAY g9 = new GRAY(1100, 310, 100, 2, 0);
GRAY g10 = new GRAY(1260, 450, 100, 2, 0);


COIN cn7 = new COIN (320, 390);
COIN cn8 = new COIN (625, 260-80+5);
COIN cn9 = new COIN (915, 395);


boo b9 = new boo(290, 400, 25, 3);
boo b10 = new boo(500, 200, 25, 2);
boo b11 = new boo(800, 250, 25, 3);
boo b12 = new boo(1050, 300, 25, 3);

boo b21 = new boo(370, 100, 25, 3);
boo b22 = new boo(600, 300, 25, 3);
boo b23 = new boo(900, 150, 25, 3);
boo b24 = new boo(1150, 120, 25, 3);


BG bg7 = new BG(0, 3);
BG bg8 = new BG(2, 3);
BG bg9 = new BG(4, 3);

void map3() {
  background(#5C5F5C, 100);

  if (pause==0) {
    guymotion();
  }
  if (pause==1) {
    gy-=5;

    if (gy<0) {
      pause=3;
    }
  }
  if (gy>500) {
    // println("yes");
    ouch();
  }

  bordersAndCamera();

  bg7.update();
  bg8.update();
  bg9.update();




  jump = 1;//1 line of code. falling jump fix
  // c0.update();
  g1.update();
  g2.update();
  g3.update();
  g4.update();

  g5.update();
  g6.update();
  g7.update();
  g8.update();
  g9.update();
  g10.update();
  g11.update();

  cn7.update();
  cn8.update();
  cn9.update();

  b9.update();
  b10.update();
  b11.update();
  b12.update();
  b21.update();
  b22.update();
  b23.update();
  b24.update();

  //guy
  //  fill(#FF0000);
  //ellipse(gx+18,gy,5,5);
  //image(one, gx-5-cameraX, gy, 48, -48);
  p3.update();

  image(ship, 1200-cameraX, -20, 190, 160/2);
}