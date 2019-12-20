ArrayList<Monster> myPal = new ArrayList<Monster>();
void setup() {
  size(800,400);
}

void draw() {
  background(255);
  for (int i = 0 ; i < myPal.size(); i++) {
    if (myPal.get(i).lifetime < 1){
      myPal.remove(i);
    }
    else {
      myPal.get(i).move();
      myPal.get(i).jump();
      myPal.get(i).display();
    }
  }
}

void mousePressed() {
  myPal.add(new Monster(int(mouseX)));
}
