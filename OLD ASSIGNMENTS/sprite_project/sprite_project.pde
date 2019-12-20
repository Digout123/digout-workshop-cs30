/* Sprite Animation
 CS30
 Zach Digout
 October 15, 2019
 
 A short, repeating animation that can be
 controlled using the arrow keys.
 */


PImage[] walking = new PImage[16];
int frame = 0;
int direction = 4;
int x;
int y;


void setup() {
  size(300, 300);
  loadImages();
  imageMode(CENTER);
  x = width/2;
  y = height/2;
}


//Loads the images 0.png -> 15.png
void loadImages() {
  for (int i = 0; i < 16; i++) {
    walking[i] = loadImage(i + ".png");
  }
}


void draw() {
  if (frameCount % 8 == 0) { //Affects walking speed
    background(255);
    if (keyPressed == false) direction = 4;
    
    //Moves character down
    if (direction == 0) { 
      y += 6;
      if (frame > 3) frame = 0;
      image(walking[frame], x, y);
      frame++;
    }
    
    //Moves character left
    else if (direction == 1) { 
      x -= 6;
      if (frame < 4 || frame > 7) frame = 4;
      image(walking[frame], x, y);
      frame++;
    }
    
    //Moves character up
    else if (direction == 2) { 
      y -= 6;
      if (frame < 8 || frame > 11) frame = 8;
      image(walking[frame], x, y);
      frame++;
    }
    
    //Moves character right
    else if (direction == 3) { 
      x += 6;
      if (frame < 12 || frame > 15) frame = 12;
      image(walking[frame], x, y);
      frame++;
    }
    
    //Spins character while idle
    else if (direction == 4) { 
      if (frame > 15) frame = 0;
      image(walking[frame], x, y);
      frame += 4;
    }
  }
}


//Moves a character in the direction you press by changing the directoin variable
void keyPressed() {
  if (keyCode == DOWN) {
    direction = 0;
  } else if (keyCode == LEFT) {
    direction = 1;
  } else if (keyCode == UP) {
    direction = 2;
  } else if (keyCode == RIGHT) {
    direction = 3;
  }
}
