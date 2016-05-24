class CLOUD {
  int x, y, w, t;
  CLOUD(int _x, int _y, int _w, int _t) {
    x = _x;
    y = _y;
    w = _w;
    t=_t;
  }
  void update() {
    //  println(gx+5);

    if (gx+18 > x && gx +18 < x + w   && gy > y && gy<=y + gvy) {
      gy = y;
      jump = 0;
      gvy = 0;
    }
    if (t==1) {
      fill(#D14141);
      rect(x-cameraX, y, x+w, 55);
    }
    if (t==2) {
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