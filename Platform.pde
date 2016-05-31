class CLOUD {
  int x, y, w, t, go;
  CLOUD(int _x, int _y, int _w, int _t, int _go) {
    x = _x;
    y = _y;
    w = _w;
    t =_t;
    go =_go;
  }
  void update() {
    //  println(gx+5);


    if (t==1) {
      fill(#D14141);
      rect(x-cameraX, y, x+w, 55);
    }
    if (t==2) {

      if (gx+18 > x && gx +18 < x + w   && gy > y && gy<=y + gvy) {
        gy = y;
        jump = 0;
        gvy = 0;
      }
      /*
      if (go == 1) {
       y-=5;
       if (y<=-20) {
       y=500;
       }
       }
       */

      //  fill(100);
      //   rect(x-cameraX, y, w, 5);

      fill(#ffffff); //cloud platform
      noStroke();
      ellipse(x-cameraX, y, 10, 5); 
      ellipse(x+20-cameraX, y, 40, 10);
      ellipse(x+30-cameraX, y+5, 40, 12);
      ellipse(x+30-cameraX, y+12, 10, 5);
      ellipse(x+50-cameraX, y+10, 35, 25);
      ellipse(x+40-cameraX, y-2, 10, 5);
      ellipse(x+50-cameraX, y-2, 15, 7);
      ellipse(x+62-cameraX, y-2, 15, 7);
      ellipse(x+70-cameraX, y+6, 20, 15);
      ellipse(x+85-cameraX, y+6, 18, 12);
      ellipse(x+76-cameraX, y, 30, 8);
      ellipse(x+98-cameraX, y+2, 30, 8);
      ellipse(x+90-cameraX, y+2, 10, 5);
      ellipse(x+98-cameraX, y+6, 10, 5);
      ellipse(x+95-cameraX, y+5, 10, 5);
    }
  }
}




class ROCK {
  int x, y, w, t, go;
  ROCK(int _x, int _y, int _w, int _t, int _go) {
    x = _x;
    y = _y;
    w = _w;
    t =_t;
    go =_go;
  }
  void update() {
    //  println(gx+5);

    stroke(255);
    strokeWeight(2);
    if (t==1) {
      if (gx+18 > x && gx +18 < x + 30   && gy > y && gy<=y + gvy) {
        gy = y;
        jump = 0;
        gvy = 0;
      }
      fill(#5D3814);
      rect(x-cameraX, y, 30, 18, 10);
      beginShape();
      vertex(x-cameraX+3, y+15);
      vertex(x-cameraX+6, y+20);
      vertex(x-cameraX+16, y+20);
      vertex(x-cameraX+20, y+15);
      endShape(CLOSE);
      triangle(x-cameraX+8, y+20, x-cameraX+11, y+30, x-cameraX+13, y+20);
      triangle(x-cameraX+17, y+18, x-cameraX+19, y+27, x-cameraX+21, y+18);
      triangle(x-cameraX+22, y+17, x-cameraX+24, y+29, x-cameraX+26, y+17);
    }
    if (t==2) {

      if (gx+18 > x && gx +18 < x + 60   && gy > y && gy<=y + gvy) {
        gy = y;
        jump = 0;
        gvy = 0;
      }
      fill(#5D3814); //platforms
      rect(x-cameraX, y, 60, 15, 10);
      beginShape();
      vertex(x-cameraX+10, y+15);
      vertex(x-cameraX+15, y+20);
      vertex(x-cameraX+25, y+20);
      vertex(x-cameraX+30, y+15);
      endShape(CLOSE);
      triangle(x-cameraX+16, y+20, x-cameraX+20, y+30, x-cameraX+24, y+20);
      triangle(x-cameraX+28, y+15, x-cameraX+35, y+23, x-cameraX+40, y+15);
      triangle(x-cameraX+40, y+15, x-cameraX+46, y+26, x-cameraX+52, y+15);
    }

    if (t==3) {
      if (gx+18 > x && gx +18 < x + 80   && gy > y && gy<=y + gvy) {
        gy = y;
        jump = 0;
        gvy = 0;
      }
      fill(#5D3814);
      rect(x-cameraX, y, 80, 15, 10);
      beginShape();
      vertex(x-cameraX+10, y+15);
      vertex(x-cameraX+14, y+20);
      vertex(x-cameraX+30, y+20);
      vertex(x-cameraX+35, y+15);
      endShape(CLOSE);
      triangle(x-cameraX+16, y+20, x-cameraX+24, y+30, x-cameraX+29, y+20);
      triangle(x-cameraX+33, y+15, x-cameraX+40, y+23, x-cameraX+50, y+15);
      triangle(x-cameraX+50, y+15, x-cameraX+56, y+26, x-cameraX+62, y+15);
    }
    noStroke();
  }
}




class GRAY {
  int x, y, w, t, go;
  GRAY(int _x, int _y, int _w, int _t, int _go) {
    x = _x;
    y = _y;
    w = _w;
    t =_t;
    go =_go;
  }
  void update() {
    //  println(gx+5);

    stroke(255);
    if (t==1) {
      if (gx+18 > x && gx +18 < x + 40   && gy > y && gy<=y + gvy) {
        gy = y;
        jump = 0;
        gvy = 0;
      }

      ///////
      fill(#7D817D);
      noStroke();
      beginShape();
      vertex(x-cameraX, y);
      vertex(x-cameraX+5, y+10);
      vertex(x-cameraX+10, y+15);
      vertex(x-cameraX+30, y+15);
      vertex(x-cameraX+35, y+10);
      vertex(x-cameraX+40, y);
      endShape(CLOSE);
    }
    if (t==2) {

      if (gx+18 > x && gx +18 < x + 60   && gy > y && gy<=y + gvy) {
        gy = y;
        jump = 0;
        gvy = 0;
      }

      ///////
      fill(#7D817D);
      noStroke();
      beginShape();
      vertex(x-cameraX, y);
      vertex(x-cameraX+5, y+10);
      vertex(x-cameraX+12, y+20);
      vertex(x-cameraX+50, y+20);
      vertex(x-cameraX+57, y+10);
      vertex(x-cameraX+60, y);
      endShape(CLOSE);
    }

    if (t==3) {
      if (gx+18 > x && gx +18 < x + 70   && gy > y && gy<=y + gvy) {
        gy = y;
        jump = 0;
        gvy = 0;
      }

      fill(#7D817D);
      noStroke();
      beginShape();
      vertex(x-cameraX-10, y);
      vertex(x-cameraX, y+10);
      vertex(x-cameraX+12, y+15);
      vertex(x-cameraX+50, y+15);
      vertex(x-cameraX+60, y+10);
      vertex(x-cameraX+70, y);
      endShape(CLOSE);
    }
    noStroke();
  }
}