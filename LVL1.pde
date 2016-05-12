CLOUD c0 = new CLOUD(0, 350, 225, 1); // ground
CLOUD c1 = new CLOUD(50, 300, 100, 2);
CLOUD c2 = new CLOUD(200, 250, 70, 2);
CLOUD c3 = new CLOUD(350, 350, 250, 1);//ground

TREE t1 = new TREE(300, 262, #00aa00, #c6aa90, .4, 2);
TREE t3 = new TREE(200, 262, #00aa00, #c6aa90, .4, 2);
TREE t2 = new TREE(350, 290, #008800, #86AA90, .5, 2);

MOUNTAIN m1 = new MOUNTAIN(80, 240, .8);

BLACK b1 = new BLACK(100, 40, .25);
BLACK b2 = new BLACK(180, 60, .25);
BLACK b3 = new BLACK(130, 90, .25);

PORTAL p1 = new PORTAL(400, 350, 2);
PORTAL p2 = new PORTAL(400, 350, 3);

void map1() {
  background(255);
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

  jump = 1;//1 line of code. falling jump fix
  c0.update();
  c1.update();
  c2.update();
  c3.update();


  //guy
  fill(#FF0000);
  image(one, gx-5-cameraX, gy, 32, -48);
  p1.update();
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