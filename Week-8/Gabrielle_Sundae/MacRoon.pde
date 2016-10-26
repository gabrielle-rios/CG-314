//Amanda Maccaroon

class MacRoon {
  float x;
  float y;
  int diameter;
  float speed = .5;

  MacRoon(float tempX, float tempY, int tempDiameter) {
    x = tempX;
    y = tempY;
   diameter= tempDiameter;
  }

  void move() {
     background(0);
    x+=random (-speed, +speed);
    y+=random (-speed, +speed);
  }

  void slide(){
       x+=2;
    if (x>width+diameter ) {
      x=-diameter;
    }
  }
    
  void display() {
   image(Macaroon,x,y,diameter,diameter);
  }
}