//declare variables
float x, y, velX, velY, diam;
float ax,ay,avelX,avelY,adiam;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  
  ax = width/2;
  ay = height/2;
  diam = 80;
  avelX = random(-5, 5);
  avelY = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);
  
  ellipse(ax, ay, diam, diam);
  
  //add velocity to position
  x += velX;
  y += velY;
  
  ax += avelX;
  ay += avelY;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  
  if (ax + diam/2 >= width) {
    avelX = -abs(avelX);    //if the ball hits the right wall, assign ax velocity the negative version of itself
  } else if (ax - diam/2 <= 0) {
    avelX = abs(avelX);     //if the ball hits the left wall, assign ax velocity the positive version of itself
  }
  if (ay + diam/2 >= height) {
    avelY = -abs(avelY);
  } else if (ay - diam/2 <= 0) {
    avelY = abs(avelY);
  }
}