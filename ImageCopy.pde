PImage one;

PImage right, right1, right2, right3, right4, right5, right6, right7, right8, right9, right10;
PImage left, left1, left2, left3, left4, left5, left6, left7, left8, left9, left10;


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
}






void drawSamus(){




}