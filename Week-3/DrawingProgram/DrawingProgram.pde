void setup() {
  size(700, 700);
}

void draw() {
  fill(200, 40, 30);
  if (mousePressed) {
    rect(mouseX,mouseY,10,10);
    //line(mouseX, mouseY, mouseX, mouseY);
    if (keyPressed) {
      if (key == '1') {
        strokeWeight(10);
      } else if (key == '2') {
        strokeWeight(40);
      }
    }
  }
}


  //  fill(255,0,0);
  //  rect(10,10,60,60);
  //  if (mouseX > 10 && mouseX < 70 && mouseY > 10 && mouseY < 70) {
  //    fill(0,255,0);
  //    rect(10,10,60,60);
  //  }
