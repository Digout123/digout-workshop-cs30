//This is the class Particle, which is what my particle system is made of

class Particle {
  // CLASS PROPERTIES
  
  PVector position, velocity, acceleration, bounce;
  float size, angle;
  color c;
  int lifetime;
  
  
  // CLASS CONSTRUCTOR
  
  //This initilizes all of the needed variables
  Particle() {
    position = new PVector(mouseX, mouseY); 
    velocity = new PVector(int(random(-4, 4)), int(random(-4, 4)));
    acceleration = new PVector(0, 0.3);
    c = color(map(mouseY, 0,width, 50, 255), map(mouseX, 0,width, 50, 255), map(mouseX, 0,width, 100, 200)) ;
    lifetime = 125;
    size = random(20,30);
  }


  // CLASS METHODS
  
  //This draws the object at 0,0 which has been translated to where the object needs to be
  void display() {
    pushMatrix();
    translate(position.x, position.y);
    rotate(angle);
    fill(c);
    float currentSize = map(lifetime, 125 , 0, size,0);
    noStroke();
    rect(0, 0, currentSize, currentSize);
    popMatrix();
  }
  
  
  //This changes where the object will be based on how long it has existed
  void move(){
    position.add(velocity);
    if (position.y >= height){ //Bounces if it hits the bottom
      velocity.y = velocity.y *-1;
    }
    else{
      velocity.add(acceleration);
    }
    lifetime --;
    angle += 0.1;
  }
  
  
  //This checks if the lifetime variable is above 0, and if it is not it tells the draw function to remove the object
  Boolean isAlive(){
    if (lifetime > 0) return true;
    else return false;
  }
  
  
}
