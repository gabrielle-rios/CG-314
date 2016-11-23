//JoJo Pose Generator by Gabrielle Rios
//Week 11 HW---Welcome to JoJo Pose Generator! Every frame of your video will be 
//captured and saved to the Sketch folder as a JPEG, so make a few poses and
//pick your favorite!

//PS---I'm having problems with initializing the program, even though it opened 
//a few times before. It give me a "Target VM failed to initialize." message, even
//for the video manipulation sketch we made in class.

import processing.video.*;
Capture video;
float factor = 0.1;
int x = 0;

void setup() {
  size(640, 480);
  video = new Capture(this, 640, 480);
  video.start();
}

void draw() {
  background(0);
  loadPixels();
  video.loadPixels();
  for (int x = 0; x < width; x++){//image manipulation
    for (int y = 0; y < height; y++){
      int theIndex = x + y * width;
      float r = 255 - (red(video.pixels[theIndex])) * factor;
      float g = 255 - (green(video.pixels[theIndex])) * factor;
      float b = 255 - (blue(video.pixels[theIndex])) * factor;
 //use "255 -" after float r, g, or b to make the colors inverse     
      pixels[theIndex] = color(r, g, b);
    }
  }
  
  saveFrame("pose-##.jpg");//saves each frame as pose-00.jpg and up
  updatePixels();
  video.updatePixels();
  
  factor = factor * 1.005;//set timer for color change gradual.
}

void captureEvent(Capture video) {
  video.read();
}