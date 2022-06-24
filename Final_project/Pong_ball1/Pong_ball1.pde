Circle spindtTest;
Circle pc;
//Score_board sb;
int y;
float temp;
int x;

void setup(){
  //canvas
  size(800,800);
 
  pc=new Circle();
//sb = new Score_board();
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
//
 pc.gg();
 pc.sSA();
 pc.sSB();
 

 
 // Score Board
// sb.drawScore();
 //sb.updateA();
//sb.updateB();
// Stashed changes
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
