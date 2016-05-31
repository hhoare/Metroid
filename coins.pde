int coins= 000;

class COIN {
  float ix, iy; 
  float it = 255;



  COIN(float _ix, float _iy)
  { //grid x, grid y, ub, db, lb, rb, skin
    ix = _ix;
    iy = _iy;
  }

  void update() {


    // fill(#FF0000);
    //rect(x,y,50,50);
    //println("hi");


    if (dist(ix, iy, gx+17, gy-17)  < 30) { // item hits you

      if (it>0)
        coins+=(int) random(8)+1;

      it = 0;
    }

    fill(#B8B9B8, it);
    stroke(#6F6F6F, it);
    strokeWeight(1);
    ellipse(ix-cameraX, iy, 15, 15);
    fill(#C2C4C2, it);
    stroke(#6F6F6F, it);
    ellipse(ix-cameraX, iy, 10, 10);
    //  println(coins);
  }
}


void drawcoin() {
  fill(0);
  textSize(30);
  text("Coins: "+coins, 470, 440);
}