//CLOUD c0 = new CLOUD(0, 350, 225, 1); // ground
CLOUD c1 = new CLOUD(25, 400, 100, 2, 0);
CLOUD c2 = new CLOUD(200, 320, 100, 2, 1);
CLOUD c3 = new CLOUD(350, 400, 100, 2, 0);
CLOUD c4 = new CLOUD(500, 340, 100, 2, 0);
CLOUD c5 = new CLOUD(650, 260, 100, 2, 0);
CLOUD c6 = new CLOUD(650, 260-80, 100, 2, 0);
CLOUD c7 = new CLOUD(800, 470, 100, 2, 0);
CLOUD c8 = new CLOUD(950, 390, 100, 2, 0);
CLOUD c9 = new CLOUD(1100, 310, 100, 2, 0);
CLOUD c10 = new CLOUD(1260, 450, 100, 2, 0);





COIN cn1 = new COIN (350, 385);
COIN cn2 = new COIN (660, 260-100);
COIN cn3 = new COIN (1100, 300);







TREE t1 = new TREE(300, 262, #00aa00, #c6aa90, .4, 2);
TREE t3 = new TREE(200, 262, #00aa00, #c6aa90, .4, 2);
TREE t2 = new TREE(350, 290, #008800, #86AA90, .5, 2);

MOUNTAIN m1 = new MOUNTAIN(80, 240, .8);



PORTAL p1 = new PORTAL(1300, 450, 2);
PORTAL p2 = new PORTAL(1290, 450, 3);
PORTAL p3 = new PORTAL(1285, 450, 4);



BG bg1 = new BG(0, 1);
BG bg2 = new BG(2, 1);
BG bg3 = new BG(4, 1);



float scroll1 = .5;
float scroll2 = .2;
float scroll3 = .1;
float scroll4 = .09;
float scroll5 = .2;
float scroll6 = .2;


boo b1 = new boo(200, 400, 25, 1);
boo b2 = new boo(500, 200, 25, 1);
boo b3 = new boo(800, 250, 25, 1);
boo b4 = new boo(1050, 300, 25, 2);

boo b13 = new boo(300, 100, 25, 1);
boo b14 = new boo(600, 300, 25, 2);
boo b15 = new boo(900, 150, 25, 1);
boo b16 = new boo(1150, 120, 25, 2);











void map1() {
  background(#081246); //darkest blue

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
    ouch();
  }

  bordersAndCamera();

  bg1.update();
  bg2.update();
  bg3.update();

  fill(#381D64, 250);      /// MOON
  noStroke();
  ellipse(490-cameraX*scroll1, 123, 85, 85);
  fill(#081246);
  ellipse(475-cameraX*scroll1, 120, 68, 65);


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
  /*
   c11.update();
   c12.update();
   c13.update();
   c14.update();
   c15.update();
   
   */
  b1.update();
  b2.update();
  b3.update();
  b4.update();
  b13.update();
  b14.update();
  b15.update();
  b16.update();


  cn1.update();
  cn2.update();
  cn3.update();

  //println(cameraX + 250, gx);



  //guy
  fill(#FF0000);
  //ellipse(gx+18,gy,5,5);
  //image(one, gx-5-cameraX, gy, 48, -48);
  p1.update();
}