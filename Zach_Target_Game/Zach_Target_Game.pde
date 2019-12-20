PImage[] ex = new PImage[6];
PImage[] shots = new PImage[21];
PImage[] targets = new PImage[21];
PImage background, backgroundReport, barrel, base, cannonball, target;
float x, y, angle;
int shotsRemain, targetsHit, powerWidth;


//Loads in all of the images
void loadImages(){
  for (int i = 0; i < 6; i++) {
    ex[i] = loadImage("ex" + i + ".png");
  }
  for (int i = 0; i < 21; i++) {
    shots[i] = loadImage("shots" + i + ".png");
  }
  for (int i = 0; i < 21; i++) {
    targets[i] = loadImage("target" + i + ".png");
  }
  background = loadImage("background.png");
  backgroundReport = loadImage("backgroundReport.png");
  barrel = loadImage("barrel.png");
  base = loadImage("base.png");
  cannonball = loadImage("cannonball.png");
  target = loadImage("target.png");
}


void setup(){
  size(1068,600);
  loadImages();
  imageMode(CENTER);
  x = width/2;
  y = height/2;
  angle = -0.7;
  shotsRemain = 20;
  targetsHit = 10;
  powerWidth = 0;
}

void draw(){
  image(background,x,y);
  boards();
  drawCannon();
}

void boards(){
  image(shots[shotsRemain], 520, 55); //Shows how many shots are left
  image(targets[targetsHit], 890, 55); //Shows how many targets have been hit
  fill(0);
  rect(120, 40, 96, 25);
  fill(255,0,0);
  rect(120,40, powerWidth, 25);
}

void drawCannon(){
  pushMatrix();
  translate(105, 520);
  rotate(angle);
  image(barrel, 0, 0);
  popMatrix();
  image(base, 100, 525);
}

void keyPressed(){
  if(keyCode == LEFT && angle > -1.5){
    angle -= 0.1;
  }
  else if(keyCode == RIGHT && angle < 0){
    angle += 0.1;
  }
  if(keyCode == UP && powerWidth < 96){
    powerWidth += 2;
  }
  else if(keyCode == DOWN && powerWidth > 0){
    powerWidth -= 2;
  }
}
