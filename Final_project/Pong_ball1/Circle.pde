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
     
  

int r=0, g=0, b=0;


  public Circle(){
       xa=250;
 ya=40;
 xb=250;
 yb=740;
    rad = 20;
    xpos = 30.0;
    ypos = 400.0;
    xspeed = 4;
    yspeed = 4;
    xdirection = 1;
    ydirection = 1;
  
  }
  public void gg(){
   if(ypos>800){
          background(255,0,0);
     fill(255,255,255);
     textSize(20);
       textAlign(CENTER);
       text(" Game Over. Player 1 wins.",400,400);
   }
   if(ypos<0){
     background(255,0,0);
     fill(255,255,255);
     textSize(20);
       textAlign(CENTER);
       text(" Game Over. Player 2 wins.",400,400);
   }
  }
 
  
  
  
  
  
  
  
  
  
  
  public void drawCircle(){
    noStroke();
   // ellipseMode(RADIUS);
   r = int(random(0, 255));
  g = int(random(0, 255));
  b = int(random(0, 255));
  fill(r, g, b);
    // Update the position of the shape
    xpos = xpos + ( xspeed * xdirection );
    ypos = ypos + ( yspeed * ydirection );
    
    // Test to see if the shape exceeds the boundaries of the screen
    // If it does, reverse its direction by multiplying by -1
    if (xpos > width-rad || xpos < rad) {
      xdirection *= -1;
    }
    if(xpos>xa&&xpos<xa+100&&ypos<=60&&ypos>=55){
       xdirection *= -1;
        ydirection *= -1;
    }
    //if (ypos > height-rad || ypos < rad) {
    //  ydirection *= -1;
    //}
 if(xpos>xb&&xpos<xb+100&&ypos>=740&&ypos<=745){
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
     rect(xa,ya,100,20);
   }
   public void movePadlea(){
     if (currentDirectiona == "right"){
       xa = xa + 2;
        }else if(currentDirectiona == "Left"){
      xa = xa - 2; 
        }
         if(xa>700){
        xa=xa-2;
        }
         if(xa<0){
        xa=xa+2;
        }
   }
public void directionChangea(String j){
  currentDirectiona=j;
}





 public void drawPadleb(){
      
// currentDirectionb="right";
     fill(0,225,0);
     rect(xb,yb,100,20);
   }
   public void movePadleb(){
     if (currentDirectionb == "right"){
       xb = xb + 2;
        }else if(currentDirectionb == "Left"){
      xb = xb - 2; 
        }
        if(xb>700){
        xb=xb-2;
        }
         if(xb<0){
        xb=xb+2;
        }
   }
public void directionChangeb(String k){
  currentDirectionb=k;
}



















}
  
