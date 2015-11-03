int i=0;              //create variables i which equals 0 and variable count which equals 90
int count=90;
float[]x= new float[count];     //create float x, float y, float velX, float velY, float diam, set all maximums to count
float []y= new float[count];
float []velX= new float[count]; 
float []velY= new float[count];
float []diam= new float[count];



void setup() { 
  size(800, 600);      //size is equal to 800. 600
  frameRate(10000000);
  while (i<count) {
    x[i] = width/2;    //float x at any rumber starts at width/2
    y[i] = height/2;   //float y at any number starts at height/2
    diam[i] = random(10, 50);  //diam at a specific float is a random number between 10 and 50
    velX[i] = random(-5, 5);  //the velX at a specific float is a random number between -5 and 5
    velY[i] = random(-5, 5);   //the velY at a specific float is a random number between -5 and 5
    i++;
  }
}
void draw() {
  background(75,308,256);
  fill(random(255),random(255),random(255));   //all balls have same fill
  for (int i=0; i<count; i++) {    //for int i set to 0, when i is less than count, add 1 to i
    
    ellipse(x[i], y[i], diam[i], diam[i]);   //draw float x, float y, and float diam at a certain value i

    x[i] += velX[i];    //float x at value i is equal to float velX plus float x

    y[i] += velY[i];    //float y at value i is equal to float velY plus float y

    if (x[i] + diam[i]/2 >= width) {  //when float x plus float diam/2 is greater than width, velX is equal to negative absolute value of velX
      velX[i] = -abs(velX[i]);
    
    } else if (x[i] - diam[i]/2 <= 0) {   //when float x minus float diam/2 is less than 0, velX is equal to absolute value of velX
      velX[i] = abs(velX[i]);
    }
    if (y[i] + diam[i]/2 >= height) {    //when float y plus float diam/2 is greater than height, velY is equal to negative absolute value of velY
      velY[i] = -abs(velY[i]); 
    } else if (y[i] - diam[i]/2 <= 0) {  //when float y minus float diam/2 is less than 0, velY is equal to absolute value of velY
      velY[i] = abs(velY[i]);
    }
  }
}