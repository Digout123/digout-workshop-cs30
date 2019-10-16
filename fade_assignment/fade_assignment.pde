/* Roll Over
 CS30
 Zach Digout
 October 15, 2019
 
 A 2-by-2 grid that colours whichever square the mouse is on
 and fades that colour when the mouse is moved off of it.
*/

boolean left = true;
boolean right = false;
boolean top = true;
boolean bottom = false;
int leftTopTransparency = 0;
int rightTopTransparency = 0;
int leftBottomTransparency = 0;
int rightBottomTransparency = 0;


void setup() {
  size(300, 300);
}


void draw() {
  createGrid();
  checkLocation();
  makeSquare();
}


//This creates a visual of the four corners
void createGrid() {
  background(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}


//This checks which corner the mouse is in, and changes teh variables depending on it
void checkLocation() {
  if (mouseX < width/2) {
    left = true;
    right = false;
  } else {
    left = false;
    right = true;
  }
  if (mouseY < height/2) {
    top = true;
    bottom = false;
  } else {
    top = false;
    bottom = true;
  }
}


//This function:
//    - makes all four squares
//    - changes the transparency to opaque if the mouse is in the square
//    - makes the transparency fade once the mouse leaves the square
//    - turns all the squares opaque if the mouse is pressed in the top left corner
//    - turns the squares off if the mouse is pressed in the bottom right corner
void makeSquare() {
  if (left && top) { //TOP LEFT CORNER
    if (mousePressed) {
      leftTopTransparency = 255;
      rightTopTransparency = 255;
      leftBottomTransparency = 255;
      rightBottomTransparency = 255;
    }
    leftTopTransparency = 255;
  } else {
    leftTopTransparency -= 5;
  }
  fill(255, 0, 0, leftTopTransparency);
  rect(0, 0, width/2, height/2);


  if (right && top) { // TOP RIGHT CORNER
    rightTopTransparency = 255;
  } else {
    rightTopTransparency -= 5;
  }
  fill(0, 255, 0, rightTopTransparency);
  rect(width/2, 0, width/2 - 1, height/2);


  if (left && bottom) { //BOTTOM LEFT CORNER
    leftBottomTransparency = 255;
  } else {
    leftBottomTransparency -= 5;
  }
  fill(0, 0, 255, leftBottomTransparency);
  rect(0, height/2, width/2, height/2 - 1);


  if (right && bottom) { //BOTTOM RIGHT CORNER
    if (mousePressed) {
      rightBottomTransparency = 0;
    } else {
      rightBottomTransparency = 255;
    }
  } else {
    rightBottomTransparency -= 5;
  }
  fill(255, 255, 0, rightBottomTransparency);
  rect(width/2, height/2, width/2 - 1, height/2 - 1);
}
