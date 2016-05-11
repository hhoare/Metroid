PImage one;


void loadImages() {
  PImage q = loadImage("data/SuperMetroidSamusSprites.png");
  one= new PImage(255, 239, ARGB);
  one.copy(q, 0, 0, 32, 48, 0, 0, 32*4, 48*4);
}