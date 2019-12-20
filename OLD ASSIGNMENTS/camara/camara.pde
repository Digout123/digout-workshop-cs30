// Step One: Import Library
import processing.video.*;

// Step Two: Declare Capture Object
Capture video;
int STEP_SIZE = 10;


void captureEvent(Capture video){
  video.read();
}

void setup() {
  size(640,480);
  video = new Capture(this, 640,480 );
  video.start();
}

void draw() {
  background(0);
  video.loadPixels(); //access the pixel array
  for(int x = 0; x < video.width; x+=STEP_SIZE){
    for(int y = 0; y < video.height; y+=STEP_SIZE){
      int currentIndex = x + y*video.width;
      float r = red(video.pixels[currentIndex]);
      float g = green(video.pixels[currentIndex]);
      float b = blue(video.pixels[currentIndex]);
      
      float totalIntensity = r + g + b;
      
      fill(255);
      stroke(255);
      textSize(10);
      if(totalIntensity > 500) {
        text('▲', x, y);
      }
      else if(totalIntensity > 400) {
        text('•', x, y);
      }
      else if(totalIntensity > 300){
        text('Ç', x, y);
      }
      else if(totalIntensity > 200){
        text('Ü', x, y);
      }
      else if(totalIntensity > 100){
        text('_', x, y);
      }
      else{
        text('.', x, y);
      }
    }
  }
  
  //video.updatePixels();
  //image(video,0,0);
}
