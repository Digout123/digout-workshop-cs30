PImage[] walking = new PImage[16];
int frame = 0;
int direction = 0;
void setup() {
  size(600, 600);
  loadImages();
}


void loadImages() {
  for (int i = 0; i < 16; i++) {
    walking[i] = loadImage(i + ".png");
  }
}

void draw() {
  background(255);
  if (frameCount % 2 == 0) {
    image(walking[frame], mouseX, mouseY);
    imageMode(CENTER);
    frame++;
    if (frame > 15) {
      frame = 0;
    }
  }
}

void keyPressed() {
  if (keyCode == DOWN) direction = 0;
  else if (keyCode == LEFT) direction = 1;
  else if (keyCode == UP) direction = 2;
  else if (keyCode == DOWN) direction = 3;
}
