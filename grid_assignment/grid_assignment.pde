float squareWidth = 20.0;
float squareHeight = 20.0;
int colourCode = 0;
float extraWidth = 0;
float extraHeight = 0;
int squareAmountWidth = 0;
int squareAmountHeight = 0;



void setup() {
  size (400, 400);
  drawGrid();
}


void draw() {
}

void keyPressed() {
  drawGrid();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    clickLeft();
  } else if (mouseButton == RIGHT) {
    clickRight();
  }
  println(squareWidth + "\t" + squareHeight + "\t" + squareAmountWidth + "\t" + squareAmountHeight);
  drawGrid();
}

void drawGrid() {
  for (int x = 0; x < width; x += squareWidth) {
    for (int y = 0; y < height; y += squareHeight) {
      colourCode = int(random(4));
      chooseColour();
      rect(x, y, squareWidth, squareWidth);
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

void clickLeft() {
  if (squareWidth >= 10) {
      squareWidth -= 5;
      squareAmountWidth =  width/(int)squareWidth;
      extraWidth = width % squareAmountWidth;
      while (extraWidth != 0) {
        squareWidth += extraWidth;
        extraWidth = width % squareAmountWidth;
      }
    }
  if (squareHeight >= 10) {
      squareHeight -= 5;
      squareAmountHeight =  height/(int)squareHeight;
      extraHeight = height % squareAmountHeight;
      while (extraHeight != 0) {
        squareHeight += extraHeight;
        extraHeight = height % squareAmountHeight;
      }
    }
}

void clickRight() {
  if (squareWidth <= width) {
      squareWidth += 5;
      squareAmountWidth =  width/(int)squareWidth;
      extraWidth = width % squareAmountWidth;
      while (extraWidth != 0) {
        squareWidth += extraWidth;
        extraWidth = width % squareAmountWidth;
      }
    }
    if (squareHeight <= height) {
      squareHeight += 5;
      squareAmountHeight =  height/(int)squareHeight;
      extraHeight = height % squareAmountHeight;
      while (extraHeight != 0) {
        squareHeight += extraHeight;
        extraHeight = height % squareAmountHeight;
      }
    }
}
