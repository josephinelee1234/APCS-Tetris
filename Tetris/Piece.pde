public class Piece{
    private int[][] shape;
    private color c;
    private boolean isActive;
    private int rotationCount;
    private int num;

    private int[][] square = {{1,1}, {1,0},{0,1}, {0,0}};
    //0
    private int[][] rightL = {{0,0}, {1,0}, {2,0}, {0,1}};
    private int[][] rightL1 = {{1,1}, {0,0}, {-1,-1}, {2,0}};
    private int[][] rightL2 = {{1,-1}, {0,0}, {-1,1}, {0,-2}};
    private int[][] rightL3 = {{-1,-1}, {0,0}, {1,1}, {-2,0}};
    //3
    private int[][] leftL = {{0,0}, {1,0}, {2,0}, {2,1}};
    private int[][] leftL1 = {{1,1}, {0,0}, {-1,-1}, {0,-2}};
    private int[][] leftL2 = {{1,-1}, {0,0}, {-1,1}, {-2,0}};
    private int[][] leftL3 = {{-1,-1}, {0,0}, {1,1}, {0,2}};

    //3
    private int[][] tri = {{0,0}, {1,0}, {2,0}, {1,1}};
    private int[][] tri1 = {{1,1}, {0,0}, {-1,-1}, {1,-1}};
    private int[][] tri2 = {{1,-1}, {0,0}, {-1,1}, {-1,-1}};
    private int[][] tri3 = {{-1,-1}, {0,0}, {1,1}, {-1,1}};
    //3
    private int[][] line = {{0,0}, {1,0}, {2,0}, {3,0}};
    private int[][] line1 = {{2,-2}, {1,-1}, {0,0}, {-1,1}};
    
    private int[][] s2 = {{0,1}, {1,1}, {1,0}, {2, 0}};
    private int[][] s21 = {{2,0}, {1,-1}, {0,0}, {-1,-1}};//changed to clockwise rotation.
    
    private int[][] s = {{0,0}, {1,0}, {1,1}, {2,1}};
    private int[][] s1 = {{1,1}, {0,0}, {1,-1}, {0,-2}};
    //1

    public Piece(){
      isActive = true;
      num = (int)(Math.random()*7);
      if (num==0) {
        c = color(200,200,0);
        shape = square.clone();
      }
      else if (num==1) {
        c = color(200,150,0);
        shape = rightL.clone();
      }
      else if (num==2) {
        c = color(200,0,100);
        shape = leftL.clone();
      }
      else if (num==3) {
        c = color(200,0,200);
        shape = tri.clone();
      }
      else if (num==4) {
        c = color(0,100,200);
        shape = line.clone();
      }
      else if (num==5) {
        c = color(200,0,0);
        shape = s2.clone();
      }
      else if (num==6) {
        c = color(0,200,0);
        shape = s.clone();
      }
      //FIX THIS LATER (For testing specific pieces only)
      /*c = color(0,100,200);
      shape = line.clone();*/
    }

    public void rotatePiece(){
      rotationCount++;
      for (int i=0; i<shape.length; i++) {
        for (int j=0; j<shape[i].length; j++) {
          if (rotationCount%2==1) {
            if (num ==4){
            shape[i][j] += line1[i][j];
            }
            if (num==5){
              shape[i][j] += s21[i][j];
            }
            /*if (num==6){
              shape[i][j] += s2[i][j];
            }*/
            if (num==6){
              shape[i][j] += s1[i][j];
            }
            if (rotationCount%4==1 && num ==1){
              shape[i][j] += rightL1[i][j];
            }
            if (rotationCount%4==3 && num ==1){
              shape[i][j] += rightL3[i][j];
            }
            if (rotationCount%4==1 && num ==2){
              shape[i][j] += leftL1[i][j];
            }
            if (rotationCount%4==3 && num ==2){
              shape[i][j] += leftL3[i][j];
            }
            if (rotationCount%4==1 && num ==3){
              shape[i][j] += tri1[i][j];
            }
            if (rotationCount%4==3 && num ==3){
              shape[i][j] += tri3[i][j];
            }
          }
          if (rotationCount%2==0) {
            if (num ==4) {shape[i][j] -= line1[i][j];}
            if (num==5){
              shape[i][j] -= s21[i][j];
            }
            /*if (num==6){
              shape[i][j] -= s2[i][j];
            }*/
            if (num==6){
              shape[i][j] -= s1[i][j];
            }
            if (rotationCount%4==2 && num ==1){
              shape[i][j] += rightL2[i][j];
            }
            if (rotationCount%4==2 && num ==2){
              shape[i][j] += leftL2[i][j];
            }
            if (rotationCount%4==2 && num ==3){
              shape[i][j] += tri2[i][j];
            }
            if (rotationCount%4==0 && num ==1){
              shape[i][j] = shape[i][j] - (rightL3[i][j]+rightL2[i][j]+rightL1[i][j]) ;
            }
            if (rotationCount%4==0 && num ==2){
              shape[i][j] = shape[i][j] - (leftL3[i][j]+leftL2[i][j]+leftL1[i][j]) ;
            }
            if (rotationCount%4==0 && num ==3){
              shape[i][j] = shape[i][j] - (tri3[i][j]+tri2[i][j]+tri1[i][j]) ;
            }

          }
        }
      }
    }


    public void shiftDownContinuously(){//we can do this pretty easily so we may as well
        
      for (int i=0; i<shape.length ;i++) {
        shape[i][1]--;
      }
        
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
      /*boolean legalMove = true;
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
      }*/
      for (int i=0; i<shape.length ;i++) {
        shape[i][0]++;
      }//logic now down in background so it's pointless here
    }
    public void down(){
      boolean legalMove = true;
      for (int i=0; i<shape.length ;i++) {
        if (shape[i][1]==19) {
          legalMove = false;
        }
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
    
    public int[][] rotateFuture(){
      int[][] future = new int[4][2];
      for (int i=0; i<future.length; i++) {
        future[i][0] = shape[i][0];
        future[i][1] = shape[i][1];
      }
      //same code as rotatePiece but it adds to future instead of shape
      for (int i=0; i<shape.length; i++) {
        for (int j=0; j<shape[i].length; j++) {
          if (rotationCount%2==1) {
            if (num ==4){
              future[i][j] += line1[i][j];
            }
            if (num==5){
              future[i][j] += s21[i][j];
            }
            if (num==6){
              future[i][j] += s2[i][j];
            }
            if (rotationCount%4==1 && num ==1){
              future[i][j] += rightL1[i][j];
            }
            if (rotationCount%4==3 && num ==1){
              future[i][j] += rightL3[i][j];
            }
            if (rotationCount%4==1 && num ==2){
              future[i][j] += leftL1[i][j];
            }
            if (rotationCount%4==3 && num ==2){
              future[i][j] += leftL3[i][j];
            }
            if (rotationCount%4==1 && num ==3){
              future[i][j] += tri1[i][j];
            }
            if (rotationCount%4==3 && num ==3){
              future[i][j] += tri3[i][j];
            }
          }
          if (rotationCount%2==0) {
            if (num ==4) {
              future[i][j] -= line1[i][j];
            }
            if (num==5){
              future[i][j] -= s21[i][j];
            }
            if (num==6){
              future[i][j] -= s1[i][j];
            }
            if (rotationCount%4==2 && num ==1){
              future[i][j] += rightL2[i][j];
            }
            if (rotationCount%4==2 && num ==2){
              future[i][j] += leftL2[i][j];
            }
            if (rotationCount%4==2 && num ==3){
              future[i][j] += tri2[i][j];
            }
            if (rotationCount%4==0 && num ==1){
              future[i][j] = future[i][j] - (rightL3[i][j]+rightL2[i][j]+rightL1[i][j]) ;
            }
            if (rotationCount%4==0 && num ==2){
              future[i][j] = future[i][j] - (leftL3[i][j]+leftL2[i][j]+leftL1[i][j]) ;
            }
            if (rotationCount%4==0 && num ==3){
              future[i][j] = future[i][j] - (tri3[i][j]+tri2[i][j]+tri1[i][j]) ;
            }

          }
        }
      }
      return future;
    }



}
