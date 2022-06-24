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
  int r=0, g=0, bc=0;
  float ran=random(1,1.001);
  float ran1=random(0,-1);
  float ran2=random(-1,-2);
  float ran3=random(-2,-3);
  int a=0;
  int b=0;
  int c;
  String showScore;
  int d=0;
  public Circle(){
  xa=325;
  ya=40;
  xb=325;
  yb=740;
  rad = 20;
  xpos = 400.0;
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
     text(" Game Over. ",400,400);
     text(" Press Enter to restart.",400,420);
   if(currentDirectiona=="Enter"||currentDirectionb=="Enter"){
     xpos = 400.0;
     ypos = 400.0;
     xspeed = 4;
     yspeed = 4;
     xdirection = 1;
     ydirection = 1;
     xa=325;
     ya=40;
     xb=325;
     yb=740;
     currentDirectiona="0";
     currentDirectionb="0";
     a=0;
     b=0;
   } 
   }
  if(ypos<0){
     background(255,0,0);
     fill(255,255,255);
     textSize(20);
     textAlign(CENTER);
     text(" Game Over. ",400,400);
     text(" Press Enter to restart.",400,420);

   if(currentDirectiona=="Enter"||currentDirectionb=="Enter"){
     xpos = 400.0;
     ypos = 400.0;
     xspeed = 4;
     yspeed = 4;
     xdirection = 1;
     ydirection = 1;
     xa=325;
     ya=40;
     xb=325;
     yb=740;
     currentDirectiona="0";
     currentDirectionb="0";     
     a=0;
     b=0;
   }
   }
 }
public void drawCircle(){
   noStroke();// ellipseMode(RADIUS);
   r = int(random(0, 255));
   g = int(random(0, 255));
   bc = int(random(0, 255));
   fill(r, g, bc);// Update the position of the shape
   
   if(d>0){
   xpos = xpos + ( xspeed * xdirection );
   ypos = ypos + ( yspeed * ydirection );
   }
   else if(d==0){
    background(255,255,255);
     fill(0,0,0);
     textSize(20);
     textAlign(CENTER);
     text("Press Tab to start. ", 400, 330);
     text("Press A&D to control player A. ", 400, 350);
     text("Press Left&Right to control player B. ", 400, 370);

   }
    // Test to see if the shape exceeds the boundaries of the screen
    // If it does, reverse its direction by multiplying by -1
    if (xpos > width-rad || xpos < rad) {
      xdirection *= -1;
    }
    if(xpos>xa&&xpos<xa+150&&ypos<=60&&ypos>=55){
       xdirection *= ran;//-1
       ydirection *=-1;//-1
       ran=ran*ran;
       a = a + 1; 
    }
   if(xpos>xb&&xpos<xb+150&&ypos>=740&&ypos<=745){
      xdirection *=ran;//-1
      ydirection *=-1;
      ran=ran*ran;
      b = b+1; 
  }
    // Draw the shape
   println("X" + xpos);
   println("Y" + ypos);
   ellipse(xpos, ypos, rad, rad);
   }
public void drawPadlea(){
   fill(0,225,0);
   rect(xa,ya,150,20);
   }
public void movePadlea(){
   if (currentDirectiona == "right"){
       xa = xa + 6;
   }
   else if(currentDirectiona == "Left"){
      xa = xa - 6; 
   }
   if(xa>650){
      xa=xa-6;
   }
   if(xa<0){
      xa=xa+6;
   }
}
public void directionChangea(String j){
  currentDirectiona=j;
}
public void drawPadleb(){
  fill(0,0,255);
  rect(xb,yb,150,20);
   }
public void movePadleb(){
  if (currentDirectionb == "tab"){
      d=d+1;
   }
   if (currentDirectiona == "tab"){
      d=d+1;
   }
  if (currentDirectionb == "right"){
      xb = xb + 6;
   }
  else if(currentDirectionb == "Left"){
      xb = xb - 6; 
   }
  if(xb>650){
      xb=xb-6;
   }
  if(xb<0){
      xb=xb+6;     
   }
}
public void directionChangeb(String k){
      currentDirectionb=k;
}
public void dS(){
      sSA();
      sSB();
    }
public void sSA(){
  fill(0,255,0);  
  textSize(40);
    text("Player A: " + a, 600, 300);
   }
public void sSB(){
     fill(0,0,255);
  textSize(40);
    text("Player B: " + b, 600, 500);
   }
}
  
