Background bg = new Background();
Piece piece;
int time = 0;
float targetTime = 50;
boolean gameOver = false;

public void setup(){
  size(1000,1000);
  //The board is made up of a 10x20 grid of 50x50 squares.
  background(0);
  strokeWeight(3);
  stroke(150);
  for (int i=0; i<1000 ; i+=50) {
    line(0,i,500,i);
  }
  for (int i=0; i<500 ; i+=50) {
    line(i,0,i,1000);
  }
  
}
void draw(){
    background(0);
    bg.display();
    stroke(150);
    for (int i=0; i<1000 ; i+=50) {
      line(0,i,500,i);
    }
    for (int i=0; i<=500 ; i+=50) {
      line(i,0,i,1000);
    }
    drawPieces();
    fill(200);
    textSize(40);
    text("Score: " + bg.getScore(),700,200);
    if (bg.over()) {
      text("Game Over",700,500);
    }
    else {
    if (time < targetTime) {
      time++;
    }
    else {
      if (! bg.down()) {
        bg.newPiece();
      }
      time = 0;
      targetTime-=.01;
    }
    }
}

void drawPieces(){
}
public void keyReleased(){
  //moved to keyPressed()
}
public void keyPressed(){
  //println(keyCode);
  if(keyCode==UP){
      for(int i = 0; i < 4; i++){
        bg.rotatePiece();
      }
  }
  if(keyCode==RIGHT){
    if (! bg.over()) {
      bg.right();
    }
  } 
  else if(keyCode==LEFT){
    if (! bg.over()) {
      bg.left();
    }
  } 
  else if(keyCode==DOWN){
    if (! bg.over()) {
      bg.down();
    }
  }
}
