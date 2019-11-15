//3D fractals

void setup() {
  size(600,600,P3D);
}

void draw() {
  background(255);
  fill(0,255,255);
  pushMatrix(); //adds a new coordinate system on top
  translate(width/2, height/2);
  rotateY(radians(frameCount%360));
  rotateX(radians(map(mouseY, 0, height, -180,180)));
  boxFractal(0,0,100);
  popMatrix();
  ellipse(0,0,20,20);
}

void boxFractal(float x, float y, float size) {
  if (size > 10) {
    pushMatrix();
    translate(x,y);
    box(size);
    popMatrix();
    boxFractal(x + size, y, size/1.5);
    boxFractal(x - size, y, size/1.5);
    boxFractal(x , y+ size, size/1.5);
    boxFractal(x , y- size, size/1.5);
  }
}
