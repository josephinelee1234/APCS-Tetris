public class Background{
    private int score;
    private int[][] board;
    private Piece current;
    private int x,y; //x and y coordinate of the active piece

    
    public Background(){
      board = new int[20][10];
      score = 0;
      current = new Piece();
      int[][] p = current.getCoords();
      for (int i=0; i<p.length; i++) {
        board[p[i][0]][p[i][1]] = current.getColor();
      }
    }
    
    public void writePiece(Piece p){//changed shape to Piece
        for(int i = 0; i < 4; i++){
          x = p.shape[i][0];  
          y = p.shape[i][1];
        }
        //still need to add its colors?
    }
    public void display(){
      for (int i=0; i<board.length; i++) {//y coord
        for (int j=0; j<board[i].length; j++) {//x coord
          stroke(0);
          fill(board[i][j]);
          rect(j*50,i*50,50,50);
        }
      }
      for (int row=0; row<board.length; row++) {
        if (checkForLine(row)) {
          removeFullLine(row);
          dropAboveLines(row);
          score+=100;
        }
      }
    }
    public boolean checkForLine(int row){
      return true;
    }
    public void dropAboveLines(int row){
    }
    public void removeFullLine(int row){
    }
}
