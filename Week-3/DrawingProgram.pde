int myTool = 0;

void setup() {
  size(750, 700);
  background(255);
  noStroke();
  smooth();
}

void draw() {
  textSize(20);
  fill(0);
  text("Press + hold keys 1 to 4 for brushes and 5 to erase all with mouse click.", 5, 20);//directions
  fill(145, 239, 35);
  rect(20, 50, 40, 40);//colored button (green rect)
  if (mouseX > 20 && mouseX < 60 && mouseY > 20 && mouseY < 90) {
    fill(20);
    rect(20, 50, 40, 40);//rollover color (black rect)
  }
  if (mousePressed) { //basic brush
    rect(mouseX, mouseY, 5, 5);
    if (keyPressed) {
      if (key == '1') { //medium brush
        rect(mouseX, mouseY, 10, 10);
      } else if (key == '2') { //bold brush
        rect(mouseX, mouseY, 20, 20);
      } else if (key == '3') { //random color brush
        fill(random(250), random(250), random(250));
        rect(mouseX, mouseY, 20, 20);
      } else if (key == '4') { //eraser
        fill(255);
        ellipse(mouseX, mouseY, 30, 30);
      } else if (key == '5') { //clean page
        fill(255);
        rect(0,0,700,700);
      }
    }
  }
}