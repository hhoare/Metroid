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
      fill(100);
      rect(x-cameraX, y, w, 5);
    }
  }
}