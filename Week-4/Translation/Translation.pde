PImage Winter;
PImage Red;
PImage Pika;
PImage Thug;
int tool = 0;

void setup() {
  size(750, 700);
  background(255);
  noStroke();
  smooth();

//Images  
  Winter = loadImage("Winter.png");
  Red = loadImage("RedHood.png");
  Pika = loadImage("PikaSkull.png");
  Thug = loadImage("ThugPanda.png");
}


void draw() {
  textSize(20);
  fill(0);
  text("Press + hold keys 1 to 4 for brushes and 5 to erase all with mouse click.", 5, 20);//directions
  text("Hold 6, 7, or 8 to use decals, or click button of image.", 5, 40);
  
  fill(145, 239, 35);
  rect(20, 50, 40, 40);//basic brush button
  fill(30,130,90);
  rect(20,100,40,40);//medium brush button
  fill(100,200,70);
  rect(20,150,40,40);//bold brush button
  image(Winter,20,200,58,42); //Winter Soldier button
  image(Red,30,250,48,46); //Red Hood button
  image(Pika,20,300,56,60); //Pika Skull button
  image(Thug,28,372,42,60); //Thug Panda button
  
 
//Tool Set-Up  
  if(mouseX > 20 && mouseX < 60 && mouseY > 50 && mouseY < 90) {
    tool = 1; //basic brush button command
  } else if (mouseX > 20 && mouseX < 60 && mouseY > 100 && mouseY < 140) {
    tool = 2; //medium brush button command
  } else if (mouseX > 20 && mouseX < 60 && mouseY > 150 && mouseY < 190) {
    tool = 3;//bold brush button command
  } else if (mouseX > 20 && mouseX < 78 && mouseY > 200 && mouseY < 242) {
    tool = 4;//Winter Soldier button command
  } else if (mouseX > 20 && mouseX < 78 && mouseY > 250 && mouseY < 296) {
    tool = 5;//Red Hood button command
  } else if (mouseX > 20 && mouseX < 76 && mouseY > 300 && mouseY < 360) {
    tool = 6;//Pika Skull button command
  } else if (mouseX > 20 && mouseX < 70 && mouseY > 372 && mouseY < 432) {
    tool = 7;//Thug Panda button command
  }

//Button Commands
    if (mousePressed) { 
      if (tool == 1) { //basic brush
        fill(145,239,35);
      rect(mouseX, mouseY, 5, 5);
    } else if (tool == 2) { //medium brush
      fill(30,130,90);
      rect(mouseX,mouseY,5,5);
    } else if (tool == 3) { //bold brush
      fill(100,200,70);
      rect(mouseX,mouseY,5,5);
    } else if (tool == 4) { //Winter Soldier decal
      image(Winter,mouseX,mouseY,292,211);
    } else if (tool == 5) { //Red Hood decal
      image(Red,mouseX,mouseY,100,100);
    } else if (tool == 6) { //Pika Skull decal
      image(Pika,mouseX,mouseY,100,100);
    } else if (tool == 7) { //Thug Panda decal
      image(Thug,mouseX,mouseY,83,119);
    }

 //Key Commands   
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
        rect(0,0,750,750);
      } else if (key == '6') { //Winter Soldier
        image(Winter,mouseX,mouseY,292,211);
      } else if (key == '7') { //Red Hood
        image(Red,mouseX,mouseY,100,100);
      } else if (key == '8') { //PikaSkull
        image(Pika,mouseX,mouseY,100,100);
      } else if (key == '9') { //ThugPanda
        image(Thug,mouseX,mouseY,83,119);
      }
    }
  }
}