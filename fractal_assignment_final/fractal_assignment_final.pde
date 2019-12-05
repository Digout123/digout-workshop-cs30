/* Fractal Assignment
 CS30
 Zach Digout
 November 14, 2019
 
 A fractal made using a recursive function
 with the production rules:
 1. Draw a sphere.
 2. Locate four areas: one left, one right, one up, and one down.
 3. Draw a smaller sphere.
*/


void setup() {
  size(600,600, P3D);
}


//This loops the fractal and also makes it rotate
void draw() {
  background(255);
  fill(0,255,255);
  pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(frameCount%360));
  rotateX(radians(frameCount%360));
  fractal(0, 0, 80);
  popMatrix();
}


//A recursive function that runs until size is less than 5
void fractal(float x, float y, float size) {
  if (size > 5) {
    pushMatrix();
    translate(x,y);
    sphere(size);
    popMatrix();
    fractal(x + size*3, y, size/2);
    fractal(x - size*3, y, size/2);
    fractal(x , y+ size*3, size/2);
    fractal(x , y- size*3, size/2);
  }
}
