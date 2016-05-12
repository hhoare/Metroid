PImage one;


void loadImages() {
  PImage q = loadImage("data/SuperMetroidSamusSprites.png");
  one= new PImage(32, 48, ARGB);
  one.copy(q, 0, 0, 32, 48, 0, 0, 32, 48);
}