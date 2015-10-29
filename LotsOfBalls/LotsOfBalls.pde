//declare variables
int count=2;
float[]x= new float[count];
float []y= new float[count];
float []velX= new float[count]; 
float []velY= new float[count];
float []diam= new float[count];


void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  x[1]= width/2
  y[0] = height/2;
  y[1] = height/2;
  diam[0] = 80;
  diam[1] =80;
  velX[0] = random(-5, 5);
  velX[1] = random(-5, 5);
  velY[0 = random(-5, 5);
  velY[1] = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x
  //add velocity to position
  x += velX;
  y += velY;

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
}