Padle p;
int x;
void setup(){
  //canvas
  size(800,800);
  p=new Padle();
  x = 0;
}

void draw(){
  background(0,0,0);
    fill(255,255,255);
  circle(390,390,20);
  fill(255,255,255);
  line(120,80, 500, 300);
    fill(255,255,255);
p.padleA();
  
  
}
void keyPressed(){
  if (keyCode==RIGHT)
  {p.pD(1);}
    if (keyCode==LEFT)
  {p.pD(2);}}
