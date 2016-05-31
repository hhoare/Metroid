
class boo {
  ///float gx, gy, gvy;
  float box, boy, bw, types;
  float bovx;
  float bovy;
  float bv;
  float bt;
  color c;
  int bdir =-1;
  boolean draw = true;

  boo(int _x, int _y, int _w, int _types) {
    box=_x;
    boy=_y;
    bw=_w;
    types = _types;
  }
  void update() {
    // draw=true;
    if (dist(box, boy, gx+17, gy-17) < 400 && draw == true) {

      if (types == 1) {
        bv = 4;
      }
      if (types == 2) {
        bv = 6;
      }
      if (types == 3) {
        bv = 7;
      }


      if (box > gx+10 ) {
        bt=atan2(gy-17-boy, gx+17-box);
        bovx=bv*cos(bt);
        bovy=bv*sin(bt);
        box+=bovx;
        boy+=bovy;
      }
      if ( box < gx-10 ) {
        bt=atan2(gy-17-boy, gx+17-box);
        bovx=bv*cos(bt);
        bovy=bv*sin(bt);
        box+=bovx;
        boy+=bovy;
      }
      if ( bdir == -1 && box < gx-10) {
        bdir*=-1;
      }
      if ( bdir == 1 && box > gx+10) {
        bdir*=-1;
      }
      if (dist(box, boy, gx+17, gy-17)<8) {   // character gets hit
        //    gy=750+400;
        box=box+(int) random(250)+175;
        boy=boy-75;
     //   ouch();
        bgo=0;
      }
      /*
    fill(255);
       ellipse(box, boy, bw, bw);
       fill(0);
       ellipse(box+10*bdir, boy-3, 10, 10);
       ellipse(box+5*bdir, boy-3, 10, 10);
       fill(255);
       ellipse(box+10*bdir, boy-3, 5, 5);
       ellipse(box+5*bdir, boy-3, 5, 5);
       */
    }

    if ( dist(box, boy, bx, by) < 25 && bgo != 0) {
      draw = false;
    }

    if (draw == true) {

      if (types == 1) {
        fill(#EADD61);
        stroke(#000000);
        strokeWeight(1.5);
        ellipse(box-cameraX, boy, 23, 25);
        fill(#ffffff);
        noStroke();
        ellipse(box-cameraX, boy-4, 8, 12);
        fill(#ffffff);
        stroke(#000000);
        strokeWeight(1);
        triangle(box-cameraX-5, boy+5, box-cameraX, boy+10, box-cameraX+5, boy+5);
        fill(#000000);
        noStroke();
        ellipse(box-cameraX, boy-4, 6, 6);
        stroke(#000000);
        strokeWeight(1.5);
        line(box-cameraX-8, boy+5, box-cameraX+7, boy+5);
      }

      if (types == 2) {
        fill(#B6BCB4);
        stroke(#000000);
        strokeWeight(2);
        triangle(box-cameraX-7, boy-11, box-cameraX, boy-23, box-cameraX+7, boy-11);
        triangle(box-cameraX+8, boy-11, box-cameraX+18, boy-14, box-cameraX+10, boy+5);
        triangle(box-cameraX-8, boy-11, box-cameraX-18, boy-14, box-cameraX-10, boy+5);
        fill(#75D163);
        strokeWeight(2);
        ellipse(box-cameraX, boy, 30, 25);
        fill(#000000);
        noStroke();
        ellipse(box-cameraX-5, boy-5, 6, 8);
        ellipse(box-cameraX+5, boy-5, 6, 8);
        stroke(2);
        line(box-cameraX-12, boy+7, box-cameraX-8, boy+4);
        line(box-cameraX-8, boy+4, box-cameraX+8, boy+4);
        line(box-cameraX+8, boy+4, box-cameraX+12, boy+7);
      }

      if (types == 3) {
        fill(#B6BCB4);
        stroke(#000000);
        strokeWeight(2);
        triangle(box-cameraX-7, boy-11, box-cameraX, boy-23, box-cameraX+7, boy-11);
        triangle(box-cameraX+8, boy-11, box-cameraX+18, boy-14, box-cameraX+10, boy+5);
        triangle(box-cameraX-8, boy-11, box-cameraX-18, boy-14, box-cameraX-10, boy+5);
        triangle(box-cameraX-7, boy+11, box-cameraX, boy+23, box-cameraX+7, boy+11);
        triangle(box-cameraX+8, boy+11, box-cameraX+18, boy+14, box-cameraX+10, boy-5);
        triangle(box-cameraX-8, boy+11, box-cameraX-18, boy+14, box-cameraX-10, boy-5);
        fill(#D3361E);
        stroke(#000000);
        strokeWeight(2);
        ellipse(box-cameraX, boy, 25, 25);
        strokeWeight(3);
        line(box-cameraX-7, boy-5, box-cameraX-3, boy-2);
        line(box-cameraX+7, boy-5, box-cameraX+3, boy-2);
        fill(#000000);
        noStroke();
        ellipse(box-cameraX, boy+5, 6, 6);
      }
    }
  }
}




int enemy1x = 200;
int enemy1y = 1100;


void enemy() {
  fill(#ff0000);
  noStroke();
  ellipse(enemy1x-cameraX, enemy1y, 20, 20);
  fill(#000000);
  noStroke();
  ellipse(enemy1x-4-cameraX, enemy1y-4, 6, 6);
  ellipse(enemy1x+4-cameraX, enemy1y-4, 6, 6);
  ellipse(enemy1x-cameraX, enemy1y+3, 10, 4);
}