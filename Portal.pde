class PORTAL {
  int x, y;
  int nextmap; // 1 map 2 is map2...
  PORTAL(int _x, int _y, int _nextmap) {
    x=_x;
    y=_y;
    nextmap=_nextmap;
  }
  void update() {
    for (int i = 0; i<20; i++) {
      fill(#ffff00, 200-20*i);
      rect(x-cameraX-25, y-10 -10*i, 50, 10, 5);
    }
    fill(128);
    ellipse(x-cameraX, y, 50, 10);
    if (dist(gx, gy, x, y)<10) {
      pause=1; 
      gx=x;
    }

    if (pause==3) {
      page=nextmap;
      pause=0;
    }
    if (page==nextmap) { 
      cameraX=0;
      if (page==2) {
        mapWidth=1000;
        gx=0;
        gy=350;
      }
      if (page==1) {
        gx=0;
        gy=350;
      }
    }
  }
}