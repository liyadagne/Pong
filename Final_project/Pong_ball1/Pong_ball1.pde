
Circle pc;
int y;
float temp;
int x;

void setup(){
  //canvas
  size(800,800);
 
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
 pc.gg();
 
 
 
}

void keyPressed(){

 if (keyCode==68){
   pc.directionChangea("right");
     
 }
   if(keyCode==65){
   pc.directionChangea("Left");
 
}
if (keyCode==RIGHT){
   pc.directionChangeb("right");
     
 }
 if (keyCode==LEFT){
   pc.directionChangeb("Left");


     
 }
}
