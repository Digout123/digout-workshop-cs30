/* Particle System Assignment
   CS 30
   Zachary Digout
   December 16, 2019
   
   This program is a particle system made
   up of rotating squares that change size,
   bounce, and disappear over time.
*/

ArrayList<Particle> myParticles = new ArrayList<Particle>();


void setup(){
  size(800,600);
  frameRate(30);
}


void draw(){
  background(0);
  myParticles.add(new Particle()); //Everytime draw runs a new object is added
  
  for (int i = 0; i < myParticles.size(); i++){
    myParticles.get(i).move();
    myParticles.get(i).display();
    
    if (myParticles.get(i).isAlive() == false){ //If lifetime is 0, remove the object
      myParticles.remove(i);
      i--;
    }
  }
}
