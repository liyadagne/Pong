public class PadleA{
  int x;
  int y;
  int a;
  int d;
String currentDirection;
  public PadleA(){
 x=250;
 y=60;
 currentDirection="right";
   }
   
   public void drawPadle(){
     fill(0,225,0);
     rect(x,y,300,40);
   }
   public void movePadle(){
     if (currentDirection == "right"){
       x = x + 2;
        }else if(currentDirection == "Left"){
      x = x - 2; 
        }
   }
public void directionChange(String d){
  currentDirection=d;
}
   }
