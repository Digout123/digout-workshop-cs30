int squareSize = 20;
int colourCode = 0;
int extraWidth = 0;
int extraHeight = 0;



void setup() {
  size (1000, 400);
  drawGrid();
}


void draw() {
}

void keyPressed() {
  drawGrid();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    if (squareSize > 5) {
      squareSize -= 5;
      extraWidth = width % squareSize;
      extraHeight = height % squareSize;
      while (extraWidth != 0 || extraHeight != 0) {
        squareSize -= 1;
        extraWidth = width % squareSize;
        extraHeight = height % squareSize;
      }
    }
  } else if (mouseButton == RIGHT) {
    if (squareSize < width - 5 && squareSize < height - 5) {
      squareSize += 5;
      extraWidth = width % squareSize;
      extraHeight = height % squareSize;
      while (extraWidth != 0 || extraHeight != 0) {
        squareSize += 1;
        extraWidth = width % squareSize;
        extraHeight = height % squareSize;
      }
    }
  }
  println(squareSize);
  drawGrid();
}

void drawGrid() {
  for (int x = 0; x < width; x += squareSize) {
    for (int y = 0; y < height; y += squareSize) {
      colourCode = int(random(4));
      chooseColour();
      rect(x, y, squareSize, squareSize);
    }
  }
}

void chooseColour() {
  if (colourCode == 0) {
    fill(96, 60, 20);
  } else if (colourCode == 1) {
    fill(156, 39, 6);
  } else if (colourCode == 2) {
    fill(212, 91, 18);
  } else if (colourCode == 3) {
    fill(243, 188, 46);
  } else if (colourCode == 4) {
    fill(95, 84, 38);
  }
}
