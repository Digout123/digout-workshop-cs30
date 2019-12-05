class Monster {
  float x, y, size;
  int xSpeed, startDirection, type, c, c2;
  Boolean up;
  
  
  Monster(int x_){
    x = x_;
    y = height/4*3;
    up = false;
    size = height/20;
    startDirection = int(random(0,2));
    if (startDirection == 0) xSpeed = 2;
    else xSpeed = -2;
    
    type = int(random(3));
    c = 0;
  }
  
  void jump(){
      if (y == height/2) up = false;
      if (up == true) y--;
      if (up == false && y < height/4*3) y++;
  }
  
  void move() {
    c = 0;
    c2 = 255;
    if (type == 0 || type == 2) {
      x = x + xSpeed;
      if (x > width || x < 0) {
        xSpeed = xSpeed * -1;
      }
    }
    else if (type == 1) {
      size += (xSpeed/2); 
      if (size > height/7 || size < height/40) xSpeed *= - 1;
    }
  }
  
  void display() {
    ellipseMode(CENTER);
    strokeWeight(size/10);
    fill(c2, c, 0);
    ellipse(x, y, size, size);
    fill(255);
    arc(x,y,size,size,0, PI, CHORD);
    fill(0);
    line(x-size/2+size/20, y, x+size/2-size/20, y); 
    ellipse(x,y, size/3,size/3);
    fill(255);
    ellipse(x,y,size/4,size/4);
  }
  
  float getX() {return x;}
  float getY() {return y;}
  float getSize() {return size;}
  
  
  void checkCollision(Monster r) {
    if (dist(x, y, r.getX(), r.getY()) < size+r.getSize()/2 && r != this) {
      c = 255;
      c2 = 0;
    }
  }
}
