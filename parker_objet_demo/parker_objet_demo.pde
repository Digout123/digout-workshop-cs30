int NUM_MOVERS = 20000;
ArrayList<Parker> myParkers = new ArrayList<Parker>();
void setup(){
  size(600,600);
  rectMode(CENTER);
  createObjects();
  noStroke();
}


void createObjects(){
  for (int i = 0; i < NUM_MOVERS; i++){
    myParkers.add(new Parker(random(width), random(height)));
  }
}

void mousePressed(){
  if (myParkers.size() > 0) removeObject(0);
}

void removeObject(int index){
  myParkers.remove(index);
}

void draw(){
  //fill(255,20);
  //rect(0,0,width,height);
  background(0);
  for (int i = 0; i < myParkers.size(); i++){
    Parker m = myParkers.get(i);  
    m.move();
    m.display();
    //should we remove it?
    if (dist(mouseX,mouseY, m.getX(), m.getY()) < m.getSize()) {
      //if(mousePressed) {
        removeObject(i);
      //}
    }
  }
  //myMover.move();
  //myMover.display();
}
