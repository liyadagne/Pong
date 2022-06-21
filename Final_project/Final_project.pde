Padle p;
<<<<<<< HEAD


=======
>>>>>>> c73b3892434af06781d37b6876115ab4e45ba6e9
int x;
void setup(){
  //canvas
  size(800,800);
  p=new Padle();
  x = 0;
  p=new Padle();

}

void draw(){
  background(0,0,0);
    fill(255,255,255);
  circle(390,390,20);
  fill(255,255,255);
  line(120,80, 500, 300);
    fill(255,255,255);
<<<<<<< HEAD
      p.drawPadle();

=======
p.padleA();
>>>>>>> c73b3892434af06781d37b6876115ab4e45ba6e9
  
  
}
void keyPressed(){
  if (keyCode==RIGHT)
  {p.pD(1);}
    if (keyCode==LEFT)
  {p.pD(2);}}
