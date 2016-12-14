//Prototype of Spoopy Ghost--Pics follow mouse, try Pixel Manipulation.

//Spoopy Ghost by Gabrielle Rios// CG314 // December 11, 2016
//An interactive picture book that takes you into a haunted house
//filled to the brim with both "spooky" and "spoopy" ghosts! Roll
//the mouse throughout the environment to find hidden spots that summon
//ghosts. Better hope they are cute and spoopy!

import processing.sound.*;

PImage bg, img1, img2, img3, img4;
int myTool = 0;
SoundFile spoop;

void setup() {
  size(1024, 728);
  bg = loadImage("background.jpg");
  img1 = loadImage("spook1.png");
  img2 = loadImage("spook2.png");
  img3 = loadImage("spook3.png");
  img4 = loadImage("spook4.png");
  spoop = new SoundFile(this, "TheLivingTombstone - Spooky Scary Skeletons (Remix).mp3");
  spoop.play();
}

void draw() {
  image(bg, 0, 0);
  noFill();
  rect(0, 0, 50, 50);//button 0--Reset
  //rect(825, 534, 60, 100);//button 1--SpoopyGhost
  //rect(793, 49, 50, 110);//button 2--LadyHead
  //rect(101, 466, 100, 100);//button 3--BuddyCarver
  //rect(267, 96, 50, 50);//button 4--SkullDuggie

  //Tool Setup--Making popup buttons.
  //button 0
  if (mouseX > 0 && mouseX < 50 && mouseY > 0 && mouseY < 50) {
    myTool = 0;
  }
  //button 1
  if (mouseX > 825 && mouseX < 885 && mouseY > 534 && mouseY < 634) {
    myTool = 1;
    tint(255, 126);
  }
  //button 2
  if (mouseX > 793 && mouseX < 843 && mouseY > 49 && mouseY < 159) {
    myTool = 2;
    tint(255, 126);
  }
  //button 3
  if (mouseX > 101 && mouseX < 201 && mouseY > 466 && mouseY < 566) {
    myTool = 3;
    tint(255, 126);
  }
  //button 4
  if (mouseX > 267 && mouseX < 317 && mouseY > 96 && mouseY < 146) {
    myTool = 4;
    tint(255, 126);
  }

  //Tool Buttons--Assigning pictures to buttons.
  if (myTool == 1) {
    //image(img1, 150, 100);
    image(img1, mouseX-178, mouseY-199);//allows picture book to "flip"
  } else if (myTool == 2) {
    //image(img2, 250, 300);
    image(img2, mouseX-230, mouseY-129);
  } else if (myTool == 3) {
    //image(img3, 350, 400);
    image(img3, mouseX-137, mouseY-193);
  } else if (myTool == 4) {
    image(img4, mouseX-164, mouseY-213);
  }
}