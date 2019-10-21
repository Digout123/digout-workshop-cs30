float gridSpacing = 20;
float gridSpacing2 = 20;

void setup() {
  size(700, 400);
}

void draw() {
  //gridSpacing += 0.11;
  //if (gridSpacing > 30) {
  //  gridSpacing = 10;
  //}
  
  gridSpacing = map(mouseX, 0, width, 10, 40);
  gridSpacing2 = map(mouseY, 0, height, 10, 40);
  background(255);
  for (int y = 0; y < height; y+=gridSpacing2) {
    for (int x = 0; x < width; x+=gridSpacing) {
      fill(0);
      line(width/2, height/2, x, y);
      ellipse(x,y,5,5);
      //point(x,y);
      //println(x + ", " + y);
    }
  }
}
