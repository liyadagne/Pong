















public class Circle{
  int rad;        // Width of the shape
  float xpos;    // Starting position of shape    
  float ypos;
  
  float xspeed;  // Speed of the shape
  float yspeed;  // Speed of the shape
  
  int xdirection;  // Left or Right
  int ydirection;
  int xa;
  int ya;
  int aa;
  int da;
String currentDirectiona;
int xb;
  int yb;
  int ab;
  int db;
String currentDirectionb;
     
  
  public Circle(){
       xa=250;
 ya=60;
 xb=250;
 yb=700;
    rad = 20;
    xpos = 30.0;
    ypos = 400.0;
    xspeed = 2.8;
    yspeed = 2.8;
    xdirection = 1;
    ydirection = 1;
  }
  
  public void drawCircle(){
    noStroke();
   // ellipseMode(RADIUS);
  
    // Update the position of the shape
    xpos = xpos + ( xspeed * xdirection );
    ypos = ypos + ( yspeed * ydirection );
    
    // Test to see if the shape exceeds the boundaries of the screen
    // If it does, reverse its direction by multiplying by -1
    if (xpos > width-rad || xpos < rad) {
      xdirection *= -1;
    }
    if(xpos>xa&&xpos<xa+300&&ypos<=100){
       xdirection *= -1;
        ydirection *= -1;
    }
    //if (ypos > height-rad || ypos < rad) {
    //  ydirection *= -1;
    //}
 if(xpos>xb&&xpos<xb+300&&ypos>=700){
       xdirection *= -1;
       ydirection *= -1;
    }
    // Draw the shape
    println("X" + xpos);
    println("Y" + ypos);
    ellipse(xpos, ypos, rad, rad);
  }

public void drawPadlea(){
  
 //currentDirectiona="right";
     fill(0,225,0);
     rect(xa,ya,300,40);
   }
   public void movePadlea(){
     if (currentDirectiona == "right"){
       xa = xa + 2;
        }else if(currentDirectiona == "Left"){
      xa = xa - 2; 
        }
   }
public void directionChangea(String j){
  currentDirectiona=j;
}





 public void drawPadleb(){
      
// currentDirectionb="right";
     fill(0,225,0);
     rect(xb,yb,300,40);
   }
   public void movePadleb(){
     if (currentDirectionb == "right"){
       xb = xb + 2;
        }else if(currentDirectionb == "Left"){
      xb = xb - 2; 
        }
   }
public void directionChangeb(String k){
  currentDirectionb=k;
}



















}
  
