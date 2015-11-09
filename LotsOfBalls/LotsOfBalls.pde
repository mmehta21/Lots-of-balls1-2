int i=0;
int count=30;
float[]x= new float[count];
float []y= new float[count];
float []velX= new float[count]; 
float []velY= new float[count];
float []diam= new float[count];



void setup() {
  size(800, 600);
  while (i<count) {
    x[i] = width/2;
    y[i] = height/2;
    diam[i] = random(10, 50);
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5); 
    i++;
  }
}
void draw() {
  background(random(255), random(255), random(255));
  for (int i=0; i<count; i++) {

    ellipse(x[i], y[i], diam[i], diam[i]);

    x[i] += velX[i];

    y[i] += velY[i];

    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);
    
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
  }
}