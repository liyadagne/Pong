int x;
int y;
float temp;
void setup(){
  //canvas
  size(800,800);
  background(0,0,0);
  x = 400;
  y = 400;
  temp = random(0, 800);
}

void draw(){
  background(0, 0, 0);
    fill(255,255,255);
  circle(temp,y,20);
  temp = temp + 5;
  x=x+1;
  y=y+1;
  fill(0,0,0);
    fill(255,255,255);
    size(800,800);
    line(0,400,800,400);
stroke(255,255,255);

 }
