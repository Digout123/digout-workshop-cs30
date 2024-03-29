/* Bubble Tree
 CS30
 Zach Digout
 November 18, 2019
 
 A tree design made using a recursive function
 whose leaves and angles can be controlled
 by the user.
*/


int level = 5;
float scale = 15;


void setup() {
  size(500, 500);
  background(255);
}


void draw() {
  background(255);
  drawTree(250, 400, 90, 6);
  randomSeed(0);
}


//The function that will call itself as long as depth greater than 0
void drawTree(int x1, int y1, float angle, int depth) {
  if (depth > 0) {
    int x2 = (int)(x1 + (cos(radians(angle))*depth*scale)); 
    int y2 = (int)(y1 - (sin(radians(angle))*depth*scale));  
    float offset =  map(mouseX, 0, width, 15, 45); //Angle of branches changes depending on the mouse's x-position
    drawLine(x1, y1, x2, y2, depth);
    drawLeaves(x2, y2, depth);
    //for a 3-branch tree:
    drawTree(x2, y2, angle-offset, depth-1);
    drawTree(x2, y2, angle, depth-1);
    drawTree(x2, y2, angle+offset, depth-1);
  }
}


//Draws each branch with reducing depth
void drawLine(int x1, int y1, int x2, int y2, int depth) {
  strokeWeight(depth);
  line(x1, y1, x2, y2);
}


//Draws the leaves with random colour and size based on branch depth
void drawLeaves(int x2, int y2, int depth) {
  if (depth < level) {
    strokeWeight(2);
    fill(random(255), random(255), random(255));
    float leafSize;
    if (depth < 1) {
      leafSize = random(30, 50);
    } else if (depth < 3) {
      leafSize = random(20, 30);
    } else {
      leafSize = random(10, 20);
    }
    ellipse(x2, y2, leafSize, leafSize);
  }
}


//Changes the depth requirements for leaves
void keyPressed() {
  if (key == 'z' && level > 0) level -= 1; //z -> Less Leaves 
  else if (key == 'x' && level < 7)  level += 1; //x -> More Leaves
}
