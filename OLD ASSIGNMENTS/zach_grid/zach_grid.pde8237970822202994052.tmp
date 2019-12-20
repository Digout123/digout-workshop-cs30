/* Grid Generator
 CS30
 Zach Digout
 November 6, 2019
 
 A randomly generated grid that is filled
 with quaderilaterals whose size can be changed
 using the mouse.
 */


float squareWidth;
float squareHeight;
int colourCode = 0;
float extraWidth = 0;
float extraHeight = 0;
float squareAmountWidth = 20;
float squareAmountHeight = 20;


//Chooses the size of the grid and draws the first one
void setup() {
  size(400, 400);
  drawGrid();
}


//Needed to make the keys and the mouse work properly
void draw() {
}


//Refreshes the grid
void keyPressed() {
  drawGrid();
}


//Uses the amount of squares to decide what size each square needs to be
//It then draws the squares, calling colourCode to fill each with a random colour
void drawGrid() {
  for (float x = 0; x < width; x += width / squareAmountWidth) {
    for (float y = 0; y < height; y += height / squareAmountHeight) {
      colourCode = int(random(4));
      chooseColour();
      rect(x, y, width / squareAmountWidth, height / squareAmountHeight);
    }
  }
}


//Changes the amount of the squares in the grid, then refreshes it
void mousePressed() {
  if (mouseButton == LEFT) { //Left -> More -> Smaller
    if (width / squareAmountWidth >= 10) {
      squareAmountWidth += 2;
    }
    if (height / squareAmountHeight >= 10) {
      squareAmountHeight += 2;
    }
  } else if (mouseButton == RIGHT) { //Right -> Less -> Larger
    if (width / squareAmountWidth < width && squareAmountWidth > 2) {
      squareAmountWidth -= 2;
    }
    if (height / squareAmountHeight < height && squareAmountHeight > 2) {
      squareAmountHeight-= 2;
    }
  }
  drawGrid();
}


//Randomly chooses what colour is in each square
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
