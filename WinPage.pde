void win() {

  background(#000000);
  fill(#000000);
  stroke(#ffffff);
  strokeWeight(2);
  rect(10, 10, 620, 120, 10);
  fill(#ffffff);
  noStroke();
  textSize(20);
  text("You survived and made it back to your ship. Good Job!", 20, 34);
  text("Don't Crash next time!", 20, 56);
  fill(#ffffff, 100); //stars
  noStroke();
  ellipse(15, 200, 3, 3);
  ellipse(25, 160, 2.5, 2.5);
  ellipse(35, 158, 2.5, 2.5);
  ellipse(50, 30, 2.5, 2.5);
  ellipse(30, 400, 2.5, 2.5);
  ellipse(100, 180, 2.5, 2.5);
  ellipse(500, 475, 2.5, 2.5);
  ellipse(635, 430, 2.5, 2.5);
  ellipse(600, 100, 3, 3);
  ellipse(480, 80, 3, 3);
  ellipse(470, 60, 3, 3);
  ellipse(350, 60, 3, 3);
  ellipse(340, 360, 3, 3);
  ellipse(320, 300, 3, 3);
  ellipse(250, 220, 2.5, 2.5);
  ellipse(200, 450, 3, 3);
  fill(#ffffff, 50);
  ellipse(20, 430, 4, 4);
  ellipse(320, 240, 4, 4);
  ellipse(330, 230, 4, 4);
  ellipse(360, 280, 3, 3);
  ellipse(100, 90, 3, 3);
  ellipse(125, 80, 3, 3);
  ellipse(620, 180, 3, 3);
  ellipse(570, 160, 3, 3);
  ellipse(550, 260, 4, 4);
  ellipse(520, 380, 4, 4);
  fill(#ffffff, 20);
  ellipse(80, 360, 4, 4);
  ellipse(50, 280, 4, 4);
  ellipse(70, 20, 4, 4);
  ellipse(110, 50, 4, 4);
  ellipse(170, 250, 4, 4);
  ellipse(190, 190, 4, 4);
  ellipse(230, 90, 4, 4);
  ellipse(300, 120, 4, 4);
  ellipse(300, 420, 4, 4);
  ellipse(400, 30, 4, 4);
  ellipse(390, 460, 4, 4);
  ellipse(430, 450, 4, 4);
  ellipse(500, 10, 4, 4);
  ellipse(550, 30, 4, 4);
  ellipse(600, 410, 4, 4);
  ellipse(625, 360, 4, 4);
  ellipse(500, 320, 4, 4);
  ellipse(450, 300, 4, 4);
  ellipse(400, 180, 4, 4);
  image(ship, 120, 280, 190*2, 160);  
  image(one, 260, 205, 48*2, 48*2);
  pointystars();
  stars();
}

void pointystars() {
  fill(#FFFFFF);
  noStroke();
  beginShape();
  vertex(30, 175);
  vertex(33, 185);
  vertex(40, 188);
  vertex(33, 191);
  vertex(30, 201);
  vertex(27, 191);
  vertex(20, 188);
  vertex(27, 185);
  endShape(CLOSE);
  beginShape();
  vertex(170, 405);
  vertex(173, 415);
  vertex(180, 418);
  vertex(173, 421);
  vertex(170, 431);
  vertex(167, 421);
  vertex(160, 418);
  vertex(167, 415);
  endShape(CLOSE);
  beginShape();
  vertex(300-70, 215);
  vertex(303-70, 225);
  vertex(310-70, 228);
  vertex(303-70, 231);
  vertex(300-70, 241);
  vertex(297-70, 231);
  vertex(290-70, 228);
  vertex(297-70, 225);
  endShape(CLOSE);
  beginShape();
  vertex(405, 425);
  vertex(408, 435);
  vertex(415, 438);
  vertex(408, 441);
  vertex(405, 451);
  vertex(402, 441);
  vertex(395, 438);
  vertex(402, 435);
  endShape(CLOSE);
  beginShape();
  vertex(475, 165);
  vertex(478, 175);
  vertex(485, 178);
  vertex(478, 181);
  vertex(475, 191);
  vertex(472, 181);
  vertex(465, 178);
  vertex(472, 175);
  endShape(CLOSE);
  beginShape();
  vertex(575, 265);
  vertex(578, 275);
  vertex(585, 278);
  vertex(578, 281);
  vertex(575, 291);
  vertex(572, 281);
  vertex(565, 278);
  vertex(572, 275);
  endShape(CLOSE);
}

int FadeX2 = 255;
void stars() {
  FadeX2=FadeX2-10;
  if (FadeX2<=0) {
    FadeX2 = 255;
  }
  fill(#ffffff, FadeX2);
  ellipse(60, 120, 3, 3);
  ellipse(140, 420, 4, 4);
  ellipse(340, 20, 3, 3);
  ellipse(400, 220, 4, 4);
  ellipse(600, 310, 4, 4);
  ellipse(220, 40, 2, 2);
  ellipse(260, 320, 2, 2);
  ellipse(420, 400, 2, 2);
}