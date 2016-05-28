void gameplay() {
  if (page == 0) {
    title();
  }

  if (page==1) {
    mapWidth=1500;
    map1();
    drawSamus();
  }
  if (page==2) {
    map2();
    drawSamus();
  }
  //stroke(1);
  //rect(gx-5-cameraX, gy, 48, -48);
  // image(b,200, 200, 16, 16);
}