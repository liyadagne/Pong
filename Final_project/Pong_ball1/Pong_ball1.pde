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
 pc.drawPadlea();
pc.movePadlea();
 pc.drawPadleb();
 pc.movePadleb();

 pc.drawCircle();
}

void keyPressed(){
 if (keyCode==RIGHT){
   pc.directionChangea("right");
     
 }
   if(keyCode==LEFT){
   pc.directionChangea("Left");
 
}
if (keyCode==68){
   pc.directionChangeb("right");
     
 }
 if (keyCode==65){
   pc.directionChangeb("Left");
     
 }
}
