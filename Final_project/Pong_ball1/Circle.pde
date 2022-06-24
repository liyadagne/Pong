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


  public Circle(){
       xa=250;
 ya=40;
 xb=250;
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
  bc = int(random(0, 255));
  fill(r, g, bc);
    // Update the position of the shape
    xpos = xpos + ( xspeed * xdirection );
    ypos = ypos + ( yspeed * ydirection );
    
    // Test to see if the shape exceeds the boundaries of the screen
    // If it does, reverse its direction by multiplying by -1
    if (xpos > width-rad || xpos < rad) {
      xdirection *= -1;
    }

  //if(xpos>xa&&xpos<xa+150&&ypos<=60&&ypos>=55){
     //  xdirection *= ran;//-1
       // ydirection *=-1;//-1
   // }
 // if(xpos>xb&&xpos<xb+150&&ypos>=740&&ypos<=745){
     //  xdirection *=ran;//-1
      // ydirection *=-1;
 // }//-1
   
   
   
   
    if(xpos>xa&&xpos<xa+150&&ypos<=60&&ypos>=55){
      xdirection *= ran;//-1
        ydirection *=-1;//-1
        ran=ran*ran;
      a = a + 1; 
    }
   /* if(xpos>xa&&xpos<xa+150&&ypos<=60&&ypos>=55){
       xdirection *= -1;
        ydirection *= -1;

    }*/
 if(xpos>xb&&xpos<xb+150&&ypos>=740&&ypos<=745){
       xdirection *=ran;//-1
      ydirection *=-1;
      ran=ran*ran;
      b = b+1; 
  }//-1
   
   
   
   
   
   
   
   
   
   
  /* if(xpos>xa&&xpos<xa+50&&ypos<=60&&ypos>=55){
       xdirection *= ran1;//-1
        ydirection *=-1;//-1
    }
    
    if(xpos>xa+50&&xpos<xa+100&&ypos<=60&&ypos>=55){
       xdirection *= ran2;//-1
        ydirection *=-1;//-1
    }
    if(xpos>xa+100&&xpos<xa+150&&ypos<=60&&ypos>=55){
       xdirection *=ran3;//-1
        ydirection *=-1;//-1
    }*/
    
  
 
    
    //if (ypos > height-rad || ypos < rad) {
    //  ydirection *= -1;
    //}







/*if(xpos>xb&&xpos<xb+50&&ypos>=740&&ypos<=745){
       xdirection *=ran1;//-1
       ydirection *=-1;//-1
=======
 if(xpos>xb&&xpos<xb+150&&ypos>=740&&ypos<=745){
       xdirection *= -1;
       ydirection *= -1;
>>>>>>> 6cf7e8ab44df73b4fd815348d5f9d69d44756e97
    }
     if(xpos>xb+50&&xpos<xb+100&&ypos>=740&&ypos<=745){
       xdirection *= ran1;//-1
       ydirection *=-1;//-1
    }
     if(xpos>xb+100&&xpos<xb+150&&ypos>=740&&ypos<=745){
       xdirection *= ran3;//-1
       ydirection *=-1;//-1
    }*/
    
    
    
    
    
    
    
    
    
    
    
    
    
    // Draw the shape
    println("X" + xpos);
    println("Y" + ypos);
    ellipse(xpos, ypos, rad, rad);
  }

























public void drawPadlea(){
  
 //currentDirectiona="right";
     fill(0,225,0);
     rect(xa,ya,150,20);
   }
   public void movePadlea(){
     if (currentDirectiona == "right"){

       xa = xa + 6;
        }else if(currentDirectiona == "Left"){
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
      
// currentDirectionb="right";
     fill(0,225,0);
     rect(xb,yb,150,20);
   }
   public void movePadleb(){
     if (currentDirectionb == "right"){
       xb = xb + 6;
        }else if(currentDirectionb == "Left"){
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
    textSize(40);
    text("Player A: " + a, 560, 300);
  }
  
  public void sSB(){
    textSize(40);
    text("Player B: " + b, 560, 500);
  }
  
/*  public void updateA(){
   
   a = a + 1; 
  }
  
  public void updateB(){
   
   b = b + 1; 
  }*/















}
  
