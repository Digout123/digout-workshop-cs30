//Fractal Demo Pt. 2

void setup() {
  size(600,600);
  ellipseMode(CENTER);
  noFill();
}

void draw() {
  background(255);
  float initialSize = map(mouseX, 0, width, width/4, width*2);
  drawCircles(width/2,height/2,initialSize);
}

void drawCircles(float x, float y, float diam) {
  if (diam > 1){
    ellipse(x,y,diam,diam); //Draw the current generation line
    drawCircles(x - diam/2, y, diam/2);
    drawCircles(x + diam/2, y, diam/2);
    drawCircles(x, y + diam/2, diam/2);
    drawCircles(x, y - diam/2, diam/2);
  }
}
