class Grid {
  private int n = 9;
  private int blockSize = 50;
  private int heightBoard = 450;
  private int widthBoard = 450;
  private boolean[][] board;
  private int score = 0;
  
  
  public Grid() {
    this.board = new boolean[n][n];
  }
  
  public Grid(int n, int blockSize, int heightBoard, int widthBoard) {
    this.n = n;
    this.blockSize = blockSize;
    this.heightBoard = heightBoard;
    this.widthBoard = widthBoard;
    this.board = new boolean[n][n];
  }
  
  public void draw() { 
  
    drawHorizontalLines();
    drawVerticalLines();
    drawBlocksOnBoard();  
  }
  
  private void drawVerticalLines() {
    for(int i = 0; i <= n; i++) {
      if(i%3 == 0) {
        strokeWeight(2);
        stroke(125);
      } else {
        strokeWeight(1);
        stroke(180);
      }
      line(0+110,blockSize*i+50,widthBoard+110, blockSize*i+50); 
    }
  }
  
  private void drawHorizontalLines() {
    for(int i = 0; i <= n; i++) {
      if(i%3 == 0) {
        strokeWeight(2);
        stroke(125);
      } else {
        strokeWeight(1);
        stroke(180);
      }
      line(blockSize*i+110,0+50,blockSize*i+110,heightBoard+50); 
    }
  }
  
  private void drawBlocksOnBoard() {
    int nXs = 110;
    int nYs = 50;
    //PImage img = loadImage("mino.png");
    
    int nY = nYs;
    for(int i = 0; i < board[0].length; i++) {
      int nX = nXs;
      for(int j = 0; j < board[0].length; j++) {
        if(board[i][j]) {
          beginShape();
          fill(127,255,212);
          //texture(img);
          vertex(nX, nY);
          vertex(nX+blockSize, nY);
          vertex(nX+blockSize, nY+blockSize);
          vertex(nX, nY+blockSize);
          endShape(CLOSE);
        }
        nX = nX + blockSize;
      }
      nY = nY + blockSize;
    }
  }
  
  public void putOnBoard(int row, int col) {
    int r = row+selected.getContent()[0].length-selected.or > 9 ? 9 : row+selected.getContent()[0].length-selected.or;
    int c = col+selected.getContent()[0].length-selected.oc > 9 ? 9 : col+selected.getContent()[0].length-selected.oc;
    for(int i = row, iT=selected.or; i < r; i++) {
      for(int j = col, jT=selected.oc; j < c; j++) {
        if(selected.getContent()[iT][jT++])
          board[i][j] = true;
      }
      iT++;
    }
  }
  
  public int getN() {
    return n;
  }
  
  public int getBlocksize() {
    return blockSize;
  }
  
  public int getHeightBoard() {
    return heightBoard;
  }
  
  public int getWidthBoard() {
    return widthBoard;
  }
  
  public boolean[][] getBoard() {
    return board;
  }
  
  public int getScore(){
    return score;
  }
  
  public void clearBoard() {
    for(int i = 0; i < board[0].length; i++) {
      for(int j = 0; j < board[0].length; j++) {
        board[i][j] = false;
      }
    }
    score = 0;
  }
  
  public void updateBoard(){
    boolean full = true;
    int combo = 0;
    int counter = 0;
    int[] rows = new int[9] ;
    int[] columns = new int[9];
    int[] blocks = new int[18];
    
    //provjeri redke
    for(int i = 0; i < board[0].length; i++) {
      full = true;
      for(int j = 0; j < board[0].length; j++) {
        if(board[i][j] == false) {full=false; break;}
      }
      if (full) { 
        rows[counter] = i+1; combo++; counter++;
        score += 9*combo + time/4;
      }
    }
    counter = 0;
    
    //provjeri stupce
    for(int i = 0; i < board[0].length; i++) {
      full=true;
      for(int j = 0; j < board[0].length; j++)
        if(board[j][i] == false) {full=false; break;}
      if (full) { 
        columns[counter] = i+1; combo++; counter++;
        score += 9*combo + time/4;
      }
    }
    counter = 0;
    
    //provjeri blokove
    for(int i = 0; i < board[0].length; i+=3) {
      for(int j = 0; j < board[0].length; j+=3) {
        full = true;
        for(int k = i; k < i+3; k++)
          for(int l = j; l < j+3; l++){
            if(board[k][l] == false) {full = false; break;}
            if(full == false) break;
          }
        if (full) { 
          blocks[counter] = i+1; combo++; counter++;
          blocks[counter] = j+1; counter++;
          score += 9*combo + time/4;
        }
      }
    }
    
    //obriši sve što je popunjeno
    for(int a = 0; a < rows.length; a++) if(rows[a] > 0) clearRow(rows[a]-1);
    for(int a = 0; a < columns.length; a++) if(columns[a] > 0) clearColumn(columns[a]-1);
    for(int a = 0; a < blocks.length; a += 2) if(blocks[a] > 0) clearBlock(blocks[a]-1,blocks[a+1]-1);
  }
  
  public void clearRow(int i){
    for(int j = 0; j < board[0].length; j++) board[i][j] = false;
  }
  
  public void clearColumn(int i){
    for(int j = 0; j < board[0].length; j++) board[j][i] = false;
  }
  
  public void clearBlock(int i, int j){
    for(int k = i; k < i+3; k++)
      for(int l = j; l < j+3; l++) board[k][l] = false;
  }
  
  void drawTimer() {
    strokeWeight(7);
    if(score > 200) stroke(255,0,0);
    else if(score > 100) stroke(0,255,0);
    else stroke(240,230,140);
    noFill();
    circle(620, 450, 60);
    stroke(154,205,50);
    circle(620, 450, 70);
    strokeWeight(3);
    textAlign(CENTER);
    textSize(30);
    if(time <= 5) fill(255,0,0);
    else fill(154,205,50);
    text(time, 620, 463);
    textAlign(LEFT);
    strokeWeight(1);
}
  
  public String toString() {
    
    String s = "";
    for(int i = 0; i < board[0].length; i++) {
      for(int j = 0; j < board[0].length; j++) {
        s+=board[i][j];
      }
      s+="\n";
    }
    return s;
  }
}
