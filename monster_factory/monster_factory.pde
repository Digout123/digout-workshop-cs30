ArrayList<Monster> myPal = new ArrayList<Monster>();

void setup() {
  size(800,400);
  for (int i = 0; i < 5; i++) {
    myPal.add(new Monster(int(random(0,width))));
  }
}

void draw() {
  background(255);
  for (int i = 0 ; i < myPal.size(); i++) {
    Monster r = myPal.get(i);
      
      
    if (dist(mouseX,mouseY, r.getX(), r.getY()) < r.getSize()/2) {
        r.up = true;
    }
      
    
    myPal.get(i).move();
    myPal.get(i).jump();
    for (int i2 = 0; i2 < myPal.size(); i2++) {
      Monster r2 = myPal.get(i2);
      r.checkCollision(r2);
    }
    myPal.get(i).display();
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    myPal.add(new Monster(mouseX));
  }
  if (mouseButton == RIGHT && myPal.size() > 0) {
    myPal.remove(0);
  }
}
