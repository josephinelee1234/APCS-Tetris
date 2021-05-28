public class Background{
    private int score;
    private color[][] board;
    private Piece current;
    private int x,y; //x and y coordinate of the active piece

    
    public Background(){
      board = new int[20][10];
      for (int i=0; i<board.length; i++) {
        for (int j=0; j<board[i].length; j++) {
          board[i][j] = color(0,0,0);
        }
      }
      score = 0;
      current = new Piece();
      int[][] p = current.getCoords();
      for (int i=0; i<p.length; i++) {
        board[p[i][1]][p[i][0]] = current.getColor();
      }
    }
    
    public int getScore() {
      return score;
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
    
    public void right(){//"Only the 2x2 square doesn't break. For every other shape only the right most 'pixels' appear."
      int[][] p = current.getCoords();
      boolean legalMove = true;
      for (int i=0; i<p.length ;i++) {
          board[p[i][1]][p[i][0]] = color(0,0,0);
      }
      for (int i=0; i<p.length ;i++) {
        if (p[i][0]+1 > 9) {
          legalMove = false; 
        }
        else if (board[p[i][1]][p[i][0]+1]!=color(0,0,0)) {
          legalMove = false;
        }
      }
      if (legalMove) {
        for (int i=0; i<p.length ;i++) {
          board[p[i][1]][p[i][0]] = color(0,0,0);
        }
        for (int i=0; i<p.length ;i++) {
          board[p[i][1]][p[i][0]+1] = current.getColor();
        }
        current.right();
      }
      else {
        for (int i=0; i<p.length ;i++) {
          board[p[i][1]][p[i][0]] = current.getColor();
        }
      }
    }
    
    public void left(){
      int[][] p = current.getCoords();
      boolean legalMove = true;
      for (int i=0; i<p.length ;i++) {
          board[p[i][1]][p[i][0]] = color(0,0,0);
      }
      for (int i=0; i<p.length ;i++) {
        if (p[i][0]-1 < 0) {
          legalMove = false; 
        }
        else if (board[p[i][1]][p[i][0]-1]!=color(0,0,0)) {
          legalMove = false;
        }
      }
      if (legalMove) {
        for (int i=0; i<p.length ;i++) {
          board[p[i][1]][p[i][0]-1] = current.getColor();
        }
        current.left();
      }
      else {
        for (int i=0; i<p.length ;i++) {
          board[p[i][1]][p[i][0]] = current.getColor();
        }
      }
    }
    
    public void down(){
      int[][] p = current.getCoords();
      boolean legalMove = true;
      for (int i=0; i<p.length ;i++) {
          board[p[i][1]][p[i][0]] = color(0,0,0);
      }
      for (int i=0; i<p.length ;i++) {
        if (p[i][1]+1 > 19) {
          legalMove = false; 
        }
        else if (board[p[i][1]+1][p[i][0]]!=color(0,0,0)) {
          legalMove = false;
        }
      }
      if (legalMove) {
        for (int i=0; i<p.length ;i++) {
          board[p[i][1]+1][p[i][0]] = current.getColor();
        }
        current.down();
      }
      else {
        for (int i=0; i<p.length ;i++) {
          board[p[i][1]][p[i][0]] = current.getColor();
        }
      }
    }
    
    public void rotatePiece(){
      //current.rotatePiece();
    }
    
    public boolean checkForLine(int row){
      return false;
    }
    public void dropAboveLines(int row){
    }
    public void removeFullLine(int row){
        //stuff
        dropAboveLines(row);
    }
}
