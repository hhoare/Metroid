CLOUD c5 = new CLOUD(0, 350, 225, 1); // ground
CLOUD c6 = new CLOUD(50, 300, 100, 2);
CLOUD c7 = new CLOUD(200, 250, 70, 2);
CLOUD c8 = new CLOUD(350, 350, 250, 1);//ground
CLOUD c9 = new CLOUD(350, 350, 250, 1);
void map2() {
  background(#00ff00);
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

  scenerymap2();

  jump = 1;//1 line of code. falling jump fix
  c0.update();
  c1.update();
  c2.update();
  c3.update();
  //guy
  fill(#FF0000);
 // rect(gx-5-cameraX, gy, 10, -30);
  p2.update();
}
void scenerymap2() {
  b1.update();
  b2.update();
  b3.update();

  t1.update();
  t2.update();
  t3.update();

  m1.update();
}