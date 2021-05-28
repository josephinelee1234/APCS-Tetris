Background bg = new Background();
Piece piece;
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
    drawPieces();//changed from drawShapes to drawPieces
    fill(200);
    textSize(40);
    text("Score: " + bg.getScore(),700,200);
}
void drawPieces(){
}
public void keyReleased(){
  if(keyCode==RIGHT/* && piece.checkSide("RIGHT")*/){//changed shape to piece
      bg.right();
    } 
  else if(keyCode==LEFT/* && piece.checkSide("LEFT")*/){//changed shape to piece
      bg.left();
    } 
  else if(keyCode==DOWN/* && piece.checkSide("DOWN")*/){//changed shape to piece
      bg.down();
  } 
}
public void keyPressed(){
  //println(keyCode);
  if(keyCode==UP){
      for(int i = 0; i < 4; i++){
        bg.rotatePiece();
      }
      //piece.rotationCount++;//we can do this in rotatePiece()
  }
  if(keyCode==RIGHT/* && piece.checkSide("RIGHT")*/){//changed shape to piece
      bg.right();
    } 
  else if(keyCode==LEFT/* && piece.checkSide("LEFT")*/){//changed shape to piece
      bg.left();
    } 
  else if(keyCode==DOWN/* && piece.checkSide("DOWN")*/){//changed shape to piece
      bg.down();
  }
}
