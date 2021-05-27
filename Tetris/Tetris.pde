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
    text("Score: "+"0",700,200);//Needs to be updated when we create score system
}
void drawPieces(){
}
public void keyReleased(){
  if(keyCode==RIGHT && shape.checkSide("RIGHT")){
      right();
    } 
  else if(keyCode==LEFT && shape.checkSide("LEFT")){
      left();
    } 
  else if(keyCode==DOWN && shape.checkSide("DOWN")){
      down();
  } 
}
public void keyPressed(){
  if(keyCode==UP){
      for(int i = 0; i < 4; i++){
        piece.rotatePiece();
      }
      piece.rotationCount++;
    }
}
