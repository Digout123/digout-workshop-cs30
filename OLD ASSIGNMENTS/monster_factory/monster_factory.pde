/* Monster Factory
   CS30
   Zachary Digout
   December 16, 2019
   
   This program allows you to create
   and remove objects that can act with
   or without user input.
*/

ArrayList<Monster> myPal = new ArrayList<Monster>();

//Sets the size and draws 5 initial monsters
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
    
    //Checks if the mouse is touching
    if (dist(mouseX,mouseY, r.getX(), r.getY()) < r.getSize()/2) {
        r.up = true;
    }
    
    myPal.get(i).move();
    myPal.get(i).jump();
    
    //Checks if the objects are touching
    for (int i2 = 0; i2 < myPal.size(); i2++) {
      Monster r2 = myPal.get(i2);
      r.checkCollision(r2);
    }
    
    myPal.get(i).display();
  }
}


//Left Mouse -> ADD MONSTER
//Right Mouse -> REMOVE MONSTER
void mousePressed() {
  if (mouseButton == LEFT) {
    myPal.add(new Monster(mouseX));
  }
  if (mouseButton == RIGHT && myPal.size() > 0) {
    myPal.remove(0);
  }
}
