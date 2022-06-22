public class Circle{
  int rad;        // Width of the shape
  float xpos;    // Starting position of shape    
  float ypos;
  
  float xspeed;  // Speed of the shape
  float yspeed;  // Speed of the shape
  
  int xdirection;  // Left or Right
  int ydirection;

  public Circle(){
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
    if (ypos > height-rad || ypos < rad) {
      ydirection *= -1;
    }

    // Draw the shape
    println("X" + xpos);
    println("Y" + ypos);
    ellipse(xpos, ypos, rad, rad);
  }
}
  
