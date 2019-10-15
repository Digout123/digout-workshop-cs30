boolean left = true;
boolean right = false;
boolean top = true;
boolean bottom = false;
int leftTopTransparency = 0;
int rightTopTransparency = 0;
int leftBottomTransparency = 0;
int rightBottomTransparency = 0;

void setup(){
  size(300, 300);
}

void draw(){
  createGrid();
  checkLocation();
  makeSquare();
  
}

void createGrid(){
  background(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}

void checkLocation(){
  if (mouseX < width/2){
    left = true;
    right = false;
  }
  else{
    left = false;
    right = true;
  }
  if (mouseY < height/2){
    top = true;
    bottom = false;
  }
  else{
    top = false;
    bottom = true;
  }
}

void makeSquare(){
  if (left && top){
    leftTopTransparency = 255;
  }
  else{
    leftTopTransparency -= 5;
  }
  fill(255, 0, 0, leftTopTransparency);
  rect(0, 0, width/2, height/2);
  
  
  
  if (right && top){
    rightTopTransparency = 255;
  }
  else{
    rightTopTransparency -= 5;
  }
  fill(0, 255, 0, rightTopTransparency);
  rect(width/2, 0, width/2 - 1, height/2);
  
  
  if (left && bottom){
    leftBottomTransparency = 255;
  }
  else{
    leftBottomTransparency -= 5;
  }
  fill(0, 0, 255, leftBottomTransparency);
  rect(0, height/2, width/2, height/2 - 1);
  
  
  if (right && bottom){
    rightBottomTransparency = 255;
  }
  else{
    rightBottomTransparency -= 5;
  }
  fill(255, 255, 0, rightBottomTransparency);
  rect(width/2, height/2, width/2 - 1, height/2 - 1);
}
