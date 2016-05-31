

ROCK r1 = new ROCK(25, 100, 100, 2, 0);
ROCK r2 = new ROCK(150, 320, 100, 1, 0);
ROCK r3 = new ROCK(320, 400, 100, 2, 0);
ROCK r4 = new ROCK(460, 340, 100, 2, 0);
ROCK r5 = new ROCK(615, 260+15, 100, 2, 0);
ROCK r6 = new ROCK(615, 260-80+15, 100, 2, 0);
ROCK r7 = new ROCK(750, 470, 100, 2, 0);
ROCK r8 = new ROCK(900, 410, 100, 2, 0);
ROCK r11 = new ROCK(1010, 370, 100, 2, 0);

ROCK r9 = new ROCK(1100, 310, 100, 2, 0);
ROCK r10 = new ROCK(1260, 450, 100, 2, 0);


COIN cn4 = new COIN (170, 305);
COIN cn5 = new COIN (470, 320);
COIN cn6 = new COIN (760, 455);

boo b5 = new boo(200, 400, 25, 1);
boo b6 = new boo(500, 200, 25, 2);
boo b7 = new boo(800, 250, 25, 2);
boo b8 = new boo(1050, 300, 25, 3);

boo b17 = new boo(300, 100, 25, 1);
boo b18 = new boo(600, 300, 25, 2);
boo b19 = new boo(900, 150, 25, 2);
boo b20 = new boo(1150, 120, 25, 3);

BG bg4 = new BG(0, 2);
BG bg5 = new BG(2, 2);
BG bg6 = new BG(4, 2);

void map2() {
  background(#F0BB83);

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

  bg4.update();
  bg5.update();
  bg6.update();




  jump = 1;//1 line of code. falling jump fix
  // c0.update();
  r1.update();
  r2.update();
  r3.update();

  r4.update();

  r5.update();
  r6.update();
  r7.update();
  r8.update();
  r9.update();
  r10.update();
  r11.update();

  cn4.update();
  cn5.update();
  cn6.update();


  b5.update();
  b6.update();
  b7.update();
  b8.update();
  b17.update();
  b18.update();
  b19.update();
  b20.update();



  //guy
  //  fill(#FF0000);
  //ellipse(gx+18,gy,5,5);
  //image(one, gx-5-cameraX, gy, 48, -48);
  p2.update();
}