/* Interactive Scene
 CS30
 Zach Digout
 October 3, 2019
 
 An interactive scene where you can move the character,
 change the background, and change the colour of the set.
 */


//currentBack -> Background will change according to the value
//currentSet -> The colour of the arrow and the character will change according to the value
int currentBack = 0;
int currentSet = 0;

//Creates the parameters that we are working in
void setup() {
  size(1000, 580);
}


//Right -> Changes Background
void mousePressed() {
  if (mousePressed && mouseButton == RIGHT) {
    currentBack += 1;
    if (currentBack > 3) {
      currentBack = 0;
    }
  }
}


//Right -> Green Arrow/Character    Left -> Red Arrow/Character
void keyPressed() {
  if (keyCode == RIGHT) {
    currentSet = 0;
  }
  if (keyCode == LEFT) {
    currentSet = 1;
  }
}


//Creates the full scene
void draw() {
  changeBack();
  makeSet();
  makeCharacter();
  signature();
}


//Changes the background depending on currentBack
void changeBack() {
  if (currentBack == 0) { //First Background
    background(255, 69, 0);
    fill(255, 255, 0);
    stroke(255, 255, 0);
    ellipse(width/2, height, 600, 600);
    sunLines();
    stroke(62, 74, 8);
    fill(62, 74, 8);
    rect(-10, height - 100, width + 20, 150);
  } else if (currentBack == 1) { //Second Background
    background(0, 255, 255);
    stroke(255, 255, 0);
    fill(255, 255, 0);
    rect(-10, height - 100, width + 20, 150);
    fill(255);
    stroke(255);
    drawClouds();
  } else if (currentBack == 2) { //Third Background
    background(90, 50, 255);
    fill(120);
    stroke(120);
    drawClouds();
    stroke(255, 255, 0);
    fill(255, 255, 0);
    rect(-10, height - 100, width + 20, 150);
  } else if (currentBack == 3) { //Fourth Background
    background(0);
    stroke(0);
    fill(255);
    ellipse(width/5, height/5, 100, 100);
    fill(62, 74, 8);
    stroke(62, 74, 8);
    rect(-10, height - 100, width + 20, 150);
    drawStar();
  }
}


//Makes the set of the scene
void makeSet() {
  fill(0);
  strokeWeight(10);
  if (currentSet == 0) { //Makes a green arrow and a screen for it to show on
    stroke(0, 255, 0);
    rect(width/2 - 100, height/2 - 120, 200, 150);
    line(width/2 - 50, height/2 - 45, width/2 + 35, height/2 - 45);
    line(width/2, height/2 - 90, width/2 + 35, height/2 -45);
    line(width/2, height/2, width/2 + 35, height/2 -45);
  } else if (currentSet == 1) { //Makes a red arrow and a screen for it to show on
    stroke(255, 0, 0);
    rect(width/2 - 100, height/2 - 120, 200, 150);
    line(width/2 - 35, height/2 - 45, width/2 + 50, height/2 - 45);
    line(width/2 + 10, height/2 - 90, width/2 - 35, height/2 - 45);
    line(width/2 + 10, height/2, width/2 - 35, height/2 - 45);
  }
}


//Signs my name in the bottom right corner
void signature() {
  fill(0);
  stroke(0);
  rect(width/5*4, height-40, 150, 40);
  fill(255);
  stroke(255);
  textSize(20);
  text("Zachary Digout", width/5*4, height-20);
}


//Draws the character into the scene and makes them horizontally follow the mouse
void makeCharacter() {
  fill(255);
  ellipse(mouseX + 35, height - 90, 90, 110);
  rect(mouseX, height - 200, 70, 70, 7);
  strokeWeight(20);
  line(mouseX + 10, height - 40, mouseX - 50, height -40);
  line(mouseX + 60, height - 40, mouseX + 115, height -40);
  line(mouseX + 85, height - 100, mouseX + 127, height -90);
  line(mouseX -15, height - 100, mouseX - 50, height-90);
  ellipse(mouseX + 25, height - 175, 5, 5);
  ellipse(mouseX + 45, height - 175, 5, 5);
}


//Draws the stars for when currentBack == 3
void drawStar() {
  fill(255, 255, 0);
  stroke(255, 255, 0);
  triangle(width/6, height/2, width/6 + 2, height/2 - 4, width/6 + 4, height/2);
  triangle(width/6, height/2 - 4, width/6 + 2, height/2, width/6 + 4, height/2 - 4);
  triangle(width - 100, height/4, width- 102, height/4 - 4, width - 104, height/4);
  triangle(width - 100, height/4 - 4, width - 102, height/4, width - 104, height/4 - 4);
  triangle(width - 200, height/3, width- 202, height/3 - 4, width - 204, height/3);
  triangle(width - 200, height/3 - 4, width - 202, height/3, width - 204, height/3 - 4);
  triangle(width - 100, height/2, width- 102, height/2 - 4, width - 104, height/2);
  triangle(width - 100, height/2 - 4, width - 102, height/2, width - 104, height/2 - 4);
  triangle(width/12, height/4, width/12 - 2, height/4 - 4, width/12 - 4, height/4);
  triangle(width/12, height/4 - 4, width/12 - 2, height/4, width/12 - 4, height/4 - 4);
}


//Draws the lines for the sun when currentBack == 0
void sunLines() {
  line(width/2, height, width/9 - 10, height - 150);
  line(width/2, height, width/8, height - 200);
  line(width/2, height, width/6, height - 250);
  line(width/2, height, width/4, height - 300);
  line(width/2, height, width/2 - width/6, height - 320);
  line(width/2, height, width/2 + width/6, height - 320);
  line(width/2, height, width/2 + width/4, height - 300);
  line(width/2, height, width/2 + width/4 + 75, height - 250);
  line(width/2, height, width/2 + width/4 + 100, height - 200);
  line(width/2, height, width/2 + width/4 + 120, height - 150);
}


//Draws the clouds when currentBack == 1 or 2
void drawClouds() {
  ellipse(width/5, height/5, 70, 70);
  ellipse(width/5+40, height/5, 70, 70);
  ellipse(width/5, height/5+40, 70, 70);
  ellipse(width/5+40, height/5+40, 70, 70);
  ellipse(width/5-40, height/5+20, 70, 70);
  ellipse(width/5+80, height/5+20, 70, 70);
  ellipse(width/5*4, height/5, 70, 70);
  ellipse(width/5*4+40, height/5, 70, 70);
  ellipse(width/5*4, height/5+40, 70, 70);
  ellipse(width/5*4+40, height/5+40, 70, 70);
  ellipse(width/5*4-40, height/5+20, 70, 70);
  ellipse(width/5*4+80, height/5+20, 70, 70);
}
