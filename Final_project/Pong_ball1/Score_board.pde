
public class Score_board{
  int a;
  int b;
  int c;
  String showScore;
  
  public Score_board(){
    a = 0;
    b = 0;
  }
  
  public void drawScore(){
    showScoreA();
    showScoreB();
  }
  
  public void showScoreA(){
    textSize(40);
    text("Player A: " + a, 560, 300);
  }
  
  public void showScoreB(){
    textSize(40);
    text("Player B: " + b, 560, 500);
  }
  
  public void updateA(){
   
   a = a + 1; 
  }
  
  public void updateB(){
   
   b = b + 1; 
  }

}
