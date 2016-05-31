PImage one;

PImage right, right1, right2, right3, right4, right5, right6, right7, right8, right9, right10;
PImage left, left1, left2, left3, left4, left5, left6, left7, left8, left9, left10;
PImage b, ship;
//PImage start;


void loadImages() {
  PImage q = loadImage("data/metroidSprites.png");
  one= new PImage(48, 48, ARGB);
  one.copy(q, 0, 0, 48, 48, 0, 0, 48, 48);

  right= new PImage(48, 48, ARGB);
  right.copy(q, 0, 48, 48, 48, 0, 0, 48, 48);

  right1= new PImage(48, 48, ARGB);
  right1.copy(q, 0+48, 48, 48, 48, 0, 0, 48, 48);

  right2= new PImage(48, 48, ARGB);
  right2.copy(q, 0+48+48, 48, 48, 48, 0, 0, 48, 48);

  right3= new PImage(48, 48, ARGB);
  right3.copy(q, 0+48+48+48, 48, 48, 48, 0, 0, 48, 48);

  right4= new PImage(48, 48, ARGB);
  right4.copy(q, 0+48+48+48+48, 48, 48, 48, 0, 0, 48, 48);

  right5= new PImage(48, 48, ARGB);
  right5.copy(q, 0+48+48+48+48+48, 48, 48, 48, 0, 0, 48, 48);

  right6= new PImage(48, 48, ARGB);
  right6.copy(q, 0+48+48+48+48+48+48, 48, 48, 48, 0, 0, 48, 48);

  right7= new PImage(48, 48, ARGB);
  right7.copy(q, 0+48+48+48+48+48+48+48, 48, 48, 48, 0, 0, 48, 48);

  right8= new PImage(48, 48, ARGB);
  right8.copy(q, 0+48+48+48+48+48+48+48+48, 48, 48, 48, 0, 0, 48, 48);

  right9= new PImage(48, 48, ARGB);
  right9.copy(q, 0+48+48+48+48+48+48+48+48+48, 48, 48, 48, 0, 0, 48, 48);

  right10= new PImage(48, 48, ARGB);
  right10.copy(q, 0+48+48+48+48+48+48+48+48+48+48, 48, 48, 48, 0, 0, 48, 48);



  left10= new PImage(48, 48, ARGB);
  left10.copy(q, 0, 48+48, 48, 48, 0, 0, 48, 48);

  left9= new PImage(48, 48, ARGB);
  left9.copy(q, 0+48, 48+48, 48, 48, 0, 0, 48, 48);

  left8= new PImage(48, 48, ARGB);
  left8.copy(q, 0+48+48, 48+48, 48, 48, 0, 0, 48, 48);

  left7= new PImage(48, 48, ARGB);
  left7.copy(q, 0+48+48+48, 48+48, 48, 48, 0, 0, 48, 48);

  left6= new PImage(48, 48, ARGB);
  left6.copy(q, 0+48+48+48+48, 48+48, 48, 48, 0, 0, 48, 48);

  left5= new PImage(48, 48, ARGB);
  left5.copy(q, 0+48+48+48+48+48, 48+48, 48, 48, 0, 0, 48, 48);

  left4= new PImage(48, 48, ARGB);
  left4.copy(q, 0+48+48+48+48+48+48, 48+48, 48, 48, 0, 0, 48, 48);

  left3= new PImage(48, 48, ARGB);
  left3.copy(q, 0+48+48+48+48+48+48+48, 48+48, 48, 48, 0, 0, 48, 48);

  left2= new PImage(48, 48, ARGB);
  left2.copy(q, 0+48+48+48+48+48+48+48+48, 48+48, 48, 48, 0, 0, 48, 48);

  left1= new PImage(48, 48, ARGB);
  left1.copy(q, 0+48+48+48+48+48+48+48+48+48, 48+48, 48, 48, 0, 0, 48, 48);

  left= new PImage(48, 48, ARGB);
  left.copy(q, 0+48+48+48+48+48+48+48+48+48+48, 48+48, 48, 48, 0, 0, 48, 48);


  b= new PImage(16, 16, ARGB);
  b.copy(q, 0, 48+48+48, 16, 16, 0, 0, 16, 16);


  q = loadImage("data/samusship.png");

  ship= new PImage(190, 80, ARGB);
  ship.copy(q, 0, 0, 190, 80, 0, 0, 190, 80);
}



float types;


void drawSamus() {
  if (bgo != 0) {

    bx+=15*bgo;

    if (bx-cameraX > width + 10 || bx - cameraX < -10) {
      bgo = 0;
      bx = -9999;
    }


    //ellipse(gx+30-cameraX, gy-27, 4, 4);
    image(b, bx - cameraX, by, 8, 8);
  }



  if (goRight == 1) {

    if (types < 0) {
      types = 1;
    }

    if (((int)types) == 11) {
      types = 1;
    }
    if ( ((int)types) == 0) {
      image(right, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 1) {
      image(right1, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 2) {
      image(right2, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 3) {
      image(right3, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 4) {
      image(right4, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 5) {
      image(right5, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 6) {
      image(right6, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 7) {
      image(right7, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 8) {
      image(right8, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 9) {
      image(right9, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 10) {
      image(right10, gx-5-cameraX, gy, 48, -48);
    }
  } else if (goLeft == 1) {
    if (types > 0) {
      types = -1;
    }


    if (((int)types) == -11) {
      types = -1;
    }
    if ( ((int)types) == -1) {
      image(left10, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == -2) {
      image(left9, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == -3) {
      image(left8, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == -4) {
      image(left7, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == -5) {
      image(left6, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == -6) {
      image(left5, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == -7) {
      image(left4, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == -8) {
      image(left3, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == -9) {
      image(left2, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == -10) {
      image(left1, gx-5-cameraX, gy, 48, -48);
    } else if ( ((int)types) == 0) {
      image(left, gx-5-cameraX, gy, 48, -48);
    }
  } else {
    //  println(types + "  " + random(100));
    if (types < 0) {
      image(left, gx-5-cameraX, gy, 48, -48);
    }
    if (types >= 0) {
      image(right, gx-5-cameraX, gy, 48, -48);
    }

    if (types == 0) {
      // image(right, gx-5-cameraX, gy, 48, -48);
    }
  }



  drawcoin();
}

float bx, by;
int bgo;