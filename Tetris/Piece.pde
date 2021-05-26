public class Piece{
    private int[][] shape;//added this to keep track of coordinates

    private int[][] square = {{1,1}, {1,0},{0,1}, {0,0}};
    private int[][] rightL = {{0,0}, {1,0}, {2,0}, {0,1}};
    private int[][] leftL = {{0,0}, {1,0}, {2,0}, {2,1}};
    private int[][] tri = {{0,0}, {1,0}, {2,0}, {1,1}};
    private int[][] linee = {{0,0}, {1,0}, {2,0}, {3,0}};
    private int[][] s2 = {{0,1}, {1,1}, {1,0}, {2, 0}};
    private int[][] s = {{0,0}, {1,0}, {1,1}, {2,1}};

    public void display(){

    }

    public Piece(){
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

    }
    public void right(){

    }
    public void down(){

    }



}
