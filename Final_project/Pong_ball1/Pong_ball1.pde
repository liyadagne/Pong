PadleA pa;
PadleB pb;
Circle pc;
int y;
float temp;
int x;

void setup(){
  //canvas
  size(800,800);
  pa=new PadleA();
  pb=new PadleB();
  pc=new Circle();
  background(0,0,0);
  x = 400;
  y = 400;
  temp = random(0, 800);
  frameRate(30);
}

void draw(){
 background(0,0,0);
      
     //padle 
 pa.drawPadle();
pa.movePadle();
 pb.drawPadle();
 pb.movePadle();

 pc.drawCircle();
}

void keyPressed(){
 if (keyCode==68){
   pa.directionChange("right");
     
 }
   if(keyCode==65){
   pa.directionChange("Left");
 
}
if (keyCode==RIGHT){
   pb.directionChange("right");
     
 }
 if (keyCode==LEFT){
   pb.directionChange("Left");
     
 }
}
