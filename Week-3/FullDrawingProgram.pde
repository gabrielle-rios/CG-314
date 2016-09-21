/**Remake of Drawing Program with working buttons.
 */

int tool = 0;

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
  rect(20, 50, 40, 40);//basic brush button
  fill(30,130,90);
  rect(20,100,40,40);//medium brush button
  fill(100,200,70);
  rect(20,150,40,40);//bold brush button
  
  if(mouseX > 20 && mouseX < 60 && mouseY > 50 && mouseY < 90) {
    tool = 1; //basic brush button command
  } else if (mouseX > 20 && mouseX < 60 && mouseY > 100 && mouseY < 140) {
    tool = 2; //medium brush button command
  } else if (mouseX > 20 && mouseX < 60 && mouseY > 150 && mouseY < 190) {
    tool = 3;
  }

  
  if (mousePressed) { //basic brush
    if (tool == 1) {
      fill(145,239,35);
      rect(mouseX, mouseY, 5, 5);
    } else if (tool == 2) { //medium brush
      fill(30,130,90);
      rect(mouseX,mouseY,10,10);
    } else if (tool == 3) { //bold brush
      fill(100,200,70);
      rect(mouseX,mouseY,20,20);

  
} if (keyPressed) {
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
        rect(0,0,750,700);
      }
    }
  }
}