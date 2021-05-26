public class Piece{
    private int[][] shape;//added this to keep track of coordinates
    private color c;
    private boolean isActive;

    private int[][] square = {{1,1}, {1,0},{0,1}, {0,0}};
    private int[][] rightL = {{0,0}, {1,0}, {2,0}, {0,1}};
    private int[][] leftL = {{0,0}, {1,0}, {2,0}, {2,1}};
    private int[][] tri = {{0,0}, {1,0}, {2,0}, {1,1}};
    private int[][] line = {{0,0}, {1,0}, {2,0}, {3,0}};
    private int[][] s2 = {{0,1}, {1,1}, {1,0}, {2, 0}};
    private int[][] s = {{0,0}, {1,0}, {1,1}, {2,1}};

    public void display(){

    }

    public Piece(){
      //We'll need to play around with the colors
      //Also they will need spawn them in the top center of the board
      isActive = true;
      int num = (int)(Math.random()*7);
      if (num==0) {
        c = color(100,0,0);
        shape = square.clone();
      }
      else if (num==1) {
        c = color(100,0,0);
        shape = rightL.clone();
      }
      else if (num==2) {
        c = color(100,0,0);
        shape = leftL.clone();
      }
      else if (num==3) {
        c = color(100,0,0);
        shape = tri.clone();
      }
      else if (num==4) {
        c = color(100,0,0);
        shape = line.clone();
      }
      else if (num==5) {
        c = color(100,0,0);
        shape = s2.clone();
      }
      else if (num==6) {
        c = color(100,0,0);
        shape = s.clone();
      }
    }

    public void rotatePiece(){

    }


    public void shiftDownContinuously(){
        
      for (int i=0; i<shape.length ;i++) {
        shape[i][1]--;
      }
        
    }



    public boolean checkSidesForBounds(String side){
      return true;
    }

    public void left(){
      boolean legalMove = true;
      for (int i=0; i<shape.length ;i++) {
        if (shape[i][0]==0) {
          legalMove = false;
        }
        //need to check for other pieces as well
      }
      if (legalMove) {
        for (int i=0; i<shape.length ;i++) {
          shape[i][0]--;
        }
      }
    }
    public void right(){
      boolean legalMove = true;
      for (int i=0; i<shape.length ;i++) {
        if (shape[i][0]==9) {
          legalMove = false;
        }
        //need to check for other pieces as well
      }
      if (legalMove) {
        for (int i=0; i<shape.length ;i++) {
          shape[i][0]++;
        }
      }
    }
    public void down(){
      boolean legalMove = true;
      for (int i=0; i<shape.length ;i++) {
        if (shape[i][1]==19) {
          legalMove = false;
        }
        //need to check for other pieces as well
      }
      if (legalMove) {
        for (int i=0; i<shape.length ;i++) {
          shape[i][1]++;
        }
      }
    }
    
    public int[][] getCoords() {
      return shape;
    }
    
    public color getColor() {
      return c;
    }



}
