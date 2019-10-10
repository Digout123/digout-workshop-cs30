//State Variable Reverse Engineer

int state = 0; // 0 - right
          // 1 - down    // 2 - left
          // 3 - up
int x = 0;
int y = 0;

void setup(){
  size(200,200);
}

void draw() {
  background(180);
  stateChange();
  rect(x ,y , 10 , 10);
}


//Update X or Y depending on the state variable
void stateChange(){
  if (state == 0){
    x += 2;
    if (x + 12 >= width) state++;
  }
  else if (state == 1){
    y += 2;
    if (y + 12 >= height) state++;
  }
  else if (state == 2){
    x -= 2;
    if (x <= 0) state++;
  }
  else if (state == 3){
    y -= 2;
    if (y <= 0) state = 0;
  }
}
