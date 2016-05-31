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
    scroll3 = .5;
    mapWidth=1500;
    map2();
    drawSamus();
  }
  if (page == 3) {
    mapWidth=1500;
    map3();
    drawSamus();
  }
  
  if(page == 4){
  win();
  }




  //stroke(1);
  //rect(gx-5-cameraX, gy, 48, -48);
  // image(b,200, 200, 16, 16);
}