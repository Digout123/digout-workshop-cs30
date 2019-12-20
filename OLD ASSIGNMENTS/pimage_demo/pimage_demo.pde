//PImage demo One

PImage lionL, lionR;
int direction = 0; //0 represents left -> 1 represents right

void setup() {
  size(800,800);
  lionL = loadImage("lion-left.png");
  lionR = loadImage("lion-right.png");
  imageMode(CENTER);
}

void draw() {
  background(255);
  updateState();
  if (direction == 0) {
    image(lionL, mouseX, mouseY);
  }
  else {
    image(lionR, mouseX, mouseY);
  }
}

void updateState() {
  if (mouseX > pmouseX){ //to the right
    direction = 1;
  }
  else if (mouseX < pmouseX){ //to the left
    direction = 0;
  }
}
