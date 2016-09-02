void setup() {
  size(480,420);
  smooth();
}

void draw() {
  if (mousePressed) {
    fill(200,250,mouseY);
  } else {
    fill(250,mouseX,100);
  }
  rect(mouseX,mouseY, 80,80);
}