public class Padle{
  int x;
  int y;
  int a;
  int d;
String currentDirection;
  public Padle(){
 x=400;
 y=130;
   }
   
   public void drawPadle(){
     fill(0,225,0);
     rect(x,y,40,200);
   }
}
