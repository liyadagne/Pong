PadleA pa;
PadleB pb;

int x;
void setup(){
  //canvas
  size(800,800);
  pa=new PadleA();
  pb=new PadleB();
  x = 0;
 
}

void draw(){
  background(0,0,0);
    fill(255,255,255);
  circle(390,390,20);
  fill(255,255,255);
  line(120,80, 500, 300);
    fill(255,255,255);

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
