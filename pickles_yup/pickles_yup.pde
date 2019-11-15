PImage yup;

void setup() {
  size(600,500);
  yup = loadImage("yup.png");
  imageMode(CENTER);
}


void draw() {
  drawGrid();
}

void drawGrid() {
  for (float x = 0; x < width; x += 50) {
    for (float y = 0; y < height; y += 50) {
      image(yup, x, y, 50,30);
    }
  }
}
