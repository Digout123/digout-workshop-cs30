void setup() {
  size (400,400);
  drawGrid();
}


void draw() {
  
}

void mousePressed() {
  drawGrid();
}

void drawGrid() {
  for (int x = 0; x < width; x += 25){
    for (int y = 0; y < height; y += 25){
      fill(random(255), random(255), random(255));
      rect(x,y,25,25);
    }
  }
}
