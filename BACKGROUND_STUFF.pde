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