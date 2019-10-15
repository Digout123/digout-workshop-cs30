boolean left = true;
boolean right = false;
boolean top = true;
boolean bottom = false;
int leftTopFill = 0;
int rightTopFill = 255;
int leftBottomFill = 255;
int rightBottomFill = 255;

void setup(){
  size(300, 300);
}

void draw(){
  createGrid();
  checkSquare();
  
  if (left && top){
    leftTopFill = 0;
  }
  else{
    leftTopFill += 5;
  }
  fill(leftTopFill);
  rect(0, 0, width/2, height/2);
  
  
  
  if (right && top){
    rightTopFill = 0;
  }
  else{
    rightTopFill += 5;
  }
  fill(rightTopFill);
  rect(width/2, 0, width/2 - 1, height/2);
  
  
  if (left && bottom){
    leftBottomFill = 0;
  }
  else{
    leftBottomFill += 5;
  }
  fill(leftBottomFill);
  rect(0, height/2, width/2, height/2 - 1);
  
  
  if (right && bottom){
    rightBottomFill = 0;
  }
  else{
    rightBottomFill += 5;
  }
  fill(rightBottomFill);
  rect(width/2, height/2, width/2 - 1, height/2 - 1);
}

void createGrid(){
  background(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}

void checkSquare(){
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
