//CLOUD c0 = new CLOUD(0, 350, 225, 1); // ground
CLOUD c1 = new CLOUD(25, 400, 100, 2, 0);
CLOUD c2 = new CLOUD(200, 250, 100, 2, 0);
CLOUD c3 = new CLOUD(100, 400, 100, 2, 0);
CLOUD c4 = new CLOUD(175, 400, 100, 2, 0);
CLOUD c5 = new CLOUD(250, 400, 100, 2, 0);
CLOUD c6 = new CLOUD(325, 400, 100, 2, 0);
CLOUD c7 = new CLOUD(400, 400, 100, 2, 0);
CLOUD c8 = new CLOUD(475, 400, 100, 2, 0);
CLOUD c9 = new CLOUD(475+75, 400, 100, 2, 0);
CLOUD c10 = new CLOUD(475+75+75, 400, 100, 2, 0);
CLOUD c11 = new CLOUD(475+75+75+75, 400, 100, 2, 0);
CLOUD c12 = new CLOUD(475+75+75+75+75, 400, 100, 2, 0);
CLOUD c13 = new CLOUD(475+75+75+75+75+75, 400, 100, 2, 0);
CLOUD c14 = new CLOUD(475+75+75+75+75+75+75, 400, 100, 2, 0);
CLOUD c15 = new CLOUD(475+75+75+75+75+75+75+75, 400, 1000, 2, 0);



TREE t1 = new TREE(300, 262, #00aa00, #c6aa90, .4, 2);
TREE t3 = new TREE(200, 262, #00aa00, #c6aa90, .4, 2);
TREE t2 = new TREE(350, 290, #008800, #86AA90, .5, 2);

MOUNTAIN m1 = new MOUNTAIN(80, 240, .8);

BLACK b1 = new BLACK(100, 40, .25);
BLACK b2 = new BLACK(180, 60, .25);
BLACK b3 = new BLACK(130, 90, .25);

PORTAL p1 = new PORTAL(400, 350, 2);
PORTAL p2 = new PORTAL(400, 350, 3);


BG bg1 = new BG(0, 0);
BG bg2 = new BG(2, 0);
BG bg3 = new BG(4, 0);


void map1() {
  background(#081246); //darkest blue

  space();
  if (pause==0) {
    guymotion();
  }
  if (pause==1) {
    gy-=5;

    if (gy<0) {
      pause=3;
    }
  }
  if (gy>450) {
    ouch();
  }

  bordersAndCamera();

  //scenerymap1();
  bg1.update();
  bg2.update();
  bg3.update();
  jump = 1;//1 line of code. falling jump fix
  // c0.update();
  c1.update();
  c2.update();
  c3.update();
  c4.update();
  c5.update();
  c6.update();
  c7.update();
  c8.update();
  c9.update();
  c10.update();
  c11.update();
  c12.update();
  c13.update();
  c14.update();
  c15.update();




  //println(cameraX + 250, gx);



  //guy
  fill(#FF0000);
  //image(one, gx-5-cameraX, gy, 48, -48);
  //  p1.update();
}
void scenerymap1() {
  b1.update();
  b2.update();
  b3.update();

  t1.update();
  t2.update();
  t3.update();

  m1.update();
}