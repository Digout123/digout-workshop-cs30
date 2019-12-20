float offset;

void setup() {
  size(700,700, P3D);
}

void draw() {
  background(0);
  fill(88, 242,255);
  float a = map(mouseX, 0, width, 0, 270);
  offset = map(mouseY, 0, height, 0, 90);
  for (float i = 0; i < 360; i += 10) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(i));
    drawRectangle(0, 0, a - 90,60);
    popMatrix();
  }
}

void drawRectangle(float x, float y, float angle, float w) {
  pushMatrix();
  if (w > 5) {
    translate(x,y);
    rotate(radians(angle));

    
    text("flex, flex, flex, flex, flex, flex, flex, flex, flex, flex", w+ offset , 0, angle, w*0.85);
  }
  popMatrix();
}
