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
int toggle = 0;
int toggleTwo = 0;


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


//Changes the toggle variable
//0 -> On    1 -> Off
void mouseReleased() {
  if (right && bottom) {
    if (toggle == 0) {
      toggle = 1;
    } else { 
      toggle = 0;
    }
  }
}


//This function:
//    - makes all four squares
//    - changes the transparency to opaque if the mouse is in the square
//    - makes the transparency fade once the mouse leaves the square
//    - turns all the squares opaque if the mouse is pressed in the top left corner
//    - toggles squares on and off using the toggle variable
void makeSquare() {
  if (left && top) { //TOP LEFT CORNER
    if (toggle == 0) {  
      if (mousePressed) {
        toggleTwo = 1;
      }
      if (toggleTwo == 1) {
        leftTopTransparency = 255;
        rightTopTransparency = 255;
        leftBottomTransparency = 255;
        rightBottomTransparency = 255;
      }
      leftTopTransparency = 255;
    }
  } else {
    leftTopTransparency -= 5;
  }
  fill(255, 0, 0, leftTopTransparency);
  if (toggle == 1) fill(255);
  rect(0, 0, width/2, height/2);


  if (right && top) { // TOP RIGHT CORNER
    if (toggleTwo == 1) {
      toggleTwo = 0;
    }
    if (toggle == 0) {
      rightTopTransparency = 255;
    }
  } else {
    rightTopTransparency -= 5;
  }
  fill(0, 255, 0, rightTopTransparency);
  if (toggle == 1) fill(255);
  rect(width/2, 0, width/2 - 1, height/2);


  if (left && bottom) { //BOTTOM LEFT CORNER
    if (toggleTwo == 1) {
      toggleTwo = 0;
    }
    if (toggle == 0) {
      leftBottomTransparency = 255;
    }
  } else {
    leftBottomTransparency -= 5;
  }
  fill(0, 0, 255, leftBottomTransparency);
  if (toggle == 1) fill(255);
  rect(0, height/2, width/2, height/2 - 1);


  if (right && bottom) { //BOTTOM RIGHT CORNER
    if (toggleTwo == 1) {
      toggleTwo = 0;
    }
    rightBottomTransparency = 255;
  } else {
    rightBottomTransparency -= 5;
  }
  fill(255, 255, 0, rightBottomTransparency);
  if (toggle == 1) fill(255);
  rect(width/2, height/2, width/2 - 1, height/2 - 1);
}
