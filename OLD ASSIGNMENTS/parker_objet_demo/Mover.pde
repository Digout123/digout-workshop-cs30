class Parker{
  //Properties
  float x, y;
  color c;
  color c2;
  color c3;
  float size;
  float speed;
  int type; //behavior type
  float colorSpeed = -3;
  float colorSpeed2 = -7;
  float colorSpeed3 = -8;
  //Constructor
  Parker(float x_, float y_){
    x = x_;
    y = y_;
    c = 255;
    c2 = 255;
    c3 = 255;
    //c = color(random(255),random(255),random(255));
    size = 15;
    //size = random(10,25);   
    speed = random(2,7);
    type = 4; 
    
    //int(random(4)); //0, 1, 2
  }
  
  //Class Methods
  void display(){
    c += colorSpeed;
    c2 += colorSpeed2;
    c3 += colorSpeed3;
    if ( c > 255 || c < 0) colorSpeed *= -1;
    if ( c2 > 255 || c2 < 0) colorSpeed2 *= -1;
    if ( c3 > 255 || c3 < 0) colorSpeed3 *= -1;
    fill(c,c2,c3); 
    rect(x,y,size,size);
  }
  
  float getX() {return x;}
  float getY() {return y;}
  float getSize() { return size;}
  
  void move(){
    if (type == 0){ //sliding to the right
      x += speed;
      if (x > width) x = x - width;
    }
    else if (type == 1){  //random walker algorithm
      int choice = int(random(4)); //0,1,2,3
      if (choice == 0){ //UP
        y = y - speed;
      } 
      else if (choice == 1){ //DOWN
        y = y + speed;
      } 
      else if (choice == 2){ //LEFT
        x = x - speed;
      } 
      else if (choice == 3){ //RIGHT
        x = x + speed;
      } 
    }
    else if (type == 2){
      size += (speed/2); 
      if (size > 75 || size < 10) speed *= - 1;
    }
    
  }
}
