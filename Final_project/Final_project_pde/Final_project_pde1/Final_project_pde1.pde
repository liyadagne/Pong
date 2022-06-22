PadleA pa;
PadleB pb;
int x;
int y;
float temp;
void setup(){
  //canvas
  size(800,800);
  background(0,0,0);
  x = 400;
  y = 400;
  pa=new PadleA();
  pb=new PadleB();
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
  pa.drawPadle();
 pa.movePadle();
     pb.drawPadle();
 pb.movePadle();
 }
 void keyPressed(){
 if (keyCode==RIGHT){
   pa.directionChange("right");
     
 }
   if(keyCode==LEFT){
   pa.directionChange("Left");
  

}
if (keyCode==68){
   pb.directionChange("right");
     
 }
 if (keyCode==65){
   pb.directionChange("Left");
     
 }
}
 
