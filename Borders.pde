void bordersAndCamera() {
  //borders for square frog top left 37.5 by 37.5
  //left
  if (gx < 5) {
    gx = 5;
  }
  //right       
  if (gx > mapWidth - 5) {
    gx = mapWidth - 5;
  }
  //camera code for a 300 by 300 canvas and a 37.5 pixel velocity
  //horizontal camera 
  if (gx > cameraX + 250 && cameraX < (mapWidth - width)) {
    cameraX = gx - 250;
  }

  if (gx < cameraX + 150 && cameraX > 0) {
    cameraX = gx - 150;
  }
}