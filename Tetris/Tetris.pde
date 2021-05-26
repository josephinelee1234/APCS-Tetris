Background bg;//changed to bg
public void setup(){
  size(500,1000);//This will be increased later to display the score
  //The board is made up of a 10x20 grid of 50x50 squares.
  background(0);
}
void draw(){
    background(0);
    stroke(150);
    for (int i=0; i<1000 ; i+=50) {
      line(0,i,500,i);
    }
    for (int i=0; i<500 ; i+=50) {
      line(i,0,i,1000);
    }
    //bg.display();
    drawPieces();//changed from drawShapes to drawPieces
}
void drawPieces(){
}
public void keyReleased(){
}
public void keyPressed(){
}
