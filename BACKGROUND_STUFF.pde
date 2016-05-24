class TREE {
  float x, y;
  color c1, c2;
  float a;
  float s;
  TREE(float _x, float _y, color _c1, color _c2, float _a, float _s) {
    x=_x;
    y=_y;
    c1=_c1;
    c2=_c2;
    a=_a;
    s=_s;
  }
  void update() {
    fill(c2);
    rect(x-10*s-cameraX*a, y, 20*s, 90*s);
    fill(c1);
    ellipse(x-cameraX*a, y, 50*s, 50*s);
  }
}

class MOUNTAIN {
  float x, y, a;
  MOUNTAIN(float _x, float _y, float _a) {
    x=_x;
    y=_y;
    a=_a;
  }
  void update() {
    fill(#006600);
    triangle(x-cameraX*a, y, x-200-cameraX*a, y+300, x+200-cameraX*a, y+300);
  }
}

class BLACK {
  int cx, cy; 
  float d=1;
  float a;
  BLACK(int _cx, int _cy, float _a) {
    cx=_cx;
    cy=_cy;
    a=_a;
  }
  void update() {
    fill(#8E8C8C);
    ellipse(cx-cameraX*a, cy, 20*d, 20*d);
    ellipse(cx+10-cameraX*a, cy, 20*d, 20*d);
    ellipse(cx+20-cameraX*a, cy, 20*d, 20*d);
    ellipse(cx+5-cameraX*a, cy-10, 20*d, 20*d);
    ellipse(cx+15-cameraX*a, cy-10, 20*d, 20*d);
  }
}

/////////////////////Space Background

void space(){
  background(#081246); //darkest blue
  noStroke();
  fill(#05145F); //darker blue
  ellipse(20,230,110,200);
  ellipse(100,210,150,150);
  ellipse(210,230,125,130);
  ellipse(300,270,140,135);
  ellipse(395,290,85,100);
  ellipse(460,290,100,120);
  ellipse(520,290,110,100);
  ellipse(620,290,150,150);
  rect(0,260,640,220);
  fill(#0D3481); //dark blue
  ellipse(10,400,90,200);
  ellipse(100,360,140,150);
  ellipse(180,380,90,80);
  ellipse(240,410,80,80);
  ellipse(350,400,170,160);
  ellipse(470,420,120,125);
  ellipse(600,400,220,200);
  rect(0,400,640,80);
  
  fill(#ffffff,100); //stars
  noStroke();
  ellipse(15,200,3,3);
  ellipse(25,160,2.5,2.5);
  ellipse(35,158,2.5,2.5);
  ellipse(50,30,2.5,2.5);
  ellipse(30,400,2.5,2.5);
  ellipse(100,180,2.5,2.5);
  ellipse(500,475,2.5,2.5);
  ellipse(635,430,2.5,2.5);
  ellipse(600,100,3,3);
  ellipse(480,80,3,3);
  ellipse(470,60,3,3);
  ellipse(350,60,3,3);
  ellipse(340,360,3,3);
  ellipse(320,300,3,3);
  ellipse(250,220,2.5,2.5);
  ellipse(200,450,3,3);
  fill(#ffffff,50);
  ellipse(20,430,4,4);
  ellipse(320,240,4,4);
  ellipse(330,230,4,4);
  ellipse(360,280,3,3);
  ellipse(100,90,3,3);
  ellipse(125,80,3,3);
  ellipse(620,180,3,3);
  ellipse(570,160,3,3);
  ellipse(550,260,4,4);
  ellipse(520,380,4,4);
  fill(#ffffff,20);
  ellipse(80,360,4,4);
  ellipse(50,280,4,4);
  ellipse(70,20,4,4);
  ellipse(110,50,4,4);
  ellipse(170,250,4,4);
  ellipse(190,190,4,4);
  ellipse(230,90,4,4);
  ellipse(300,120,4,4);
  ellipse(300,420,4,4);
  ellipse(400,30,4,4);
  ellipse(390,460,4,4);
  ellipse(430,450,4,4);
  ellipse(500,10,4,4);
  ellipse(550,30,4,4);
  ellipse(600,410,4,4);
  ellipse(625,360,4,4);
  ellipse(500,320,4,4);
  ellipse(450,300,4,4);
  ellipse(400,180,4,4);
  
  fill(#381D64,250);
  noStroke();
  ellipse(490,123,85,85);
  fill(#081246);
  ellipse(475,120,68,65);
  stars();

}

int FadeX = 255;
void stars(){
  FadeX=FadeX-10;
  if (FadeX<=0){
    FadeX = 255;
  }
  fill(#ffffff, FadeX);
  ellipse(60,120,3,3);
  ellipse(140,420,4,4);
  ellipse(340,20,3,3);
  ellipse(400,220,4,4);
  ellipse(600,310,4,4);
  ellipse(220,40,2,2);
  ellipse(260,320,2,2);
  ellipse(420,400,2,2); 
}