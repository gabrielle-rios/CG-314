//My Ice Cream Cone

class Sundae {
  float x; //= moveX;
  float y; //= moveY;
  float size;
  //int theColor;

  Sundae(float moveX, float moveY, float tempSize) {
    x = moveX;
    y = moveY;
    size = tempSize;
    //theColor = color(148, 227, 226);
  }

  void move() {
    x+=2;
    if (x > width+size ) {
      x = -size;
    }
  }

  void hover() {
    x+=random (-1, 1);
    y+=random (-1, 1);
  }

  void display() {
    x = 246;
    y = 194;
    //background(168,152,96);
    //Ice Cream
    stroke(20);
    fill(148, 227, 226);
    ellipse(x+100, y+73, 183, 184);
    ellipse(x+133, y+132, 118, 64);
    ellipse(x+58, y+132, 100, 59);
    noStroke();
    ellipse(x+100, y+145, 82, 70);
    //Cone
    stroke(20);
    fill(245, 192, 100);
    rect(x+52, y+160, 98, 170);
    rect(x+32, y+182, 138, 53);
    rect(x+14, y+145, 171, 38);
    //Cherry
    fill(216, 48, 72);
    ellipse(x+93, y+-22, 38, 43);
    ellipse(x+107, y+-22, 38, 45);
    noStroke();
    ellipse(x+102, y+-22, 44, 37);
    fill(236, 116, 133);
    ellipse(x+111, y+-30, 20, 19);
  }
 }
}