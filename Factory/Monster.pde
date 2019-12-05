class Monster {
  int x, y, xSpeed, up;
  float lifetime;
  
  
  Monster(int x_){
    x = x_;
    y = height/4*3;
    lifetime = int(random(200,300));
    
    xSpeed = 2;
  }
  
  void jump(){
    up = int(random(1,6));
    if (up == 3) {
      while (y < height/2) y++;
      while (y > height/4*3) y--;
    }
  }
  
  void move() {
    x = x + xSpeed;
    
    if (x > width || x < 0) {
      xSpeed = xSpeed * -1;
    }
  }
  
  void display() {
    ellipseMode(CENTER);
    fill(0);
    ellipse(x, y, 20,20);
  }
}
