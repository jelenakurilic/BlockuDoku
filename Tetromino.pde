class TetroT extends Mino {
  
  public TetroT(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));
    
    switch(rand) {
      case 0:
        content[1][2] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        this.oc = 1;
        this.or = 1;
        break;
      case 1:
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[2][3] = true;
        this.oc = 2;
        this.or = 1;
        break;
      case 2:
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[2][1] = true;
        this.oc = 1;
        this.or = 1;
        break;
      case 3:
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        content[3][2] = true;
        this.oc = 1;
        this.or = 2;
        break;
      
    }
  }
  
}

class TetroZ extends Mino {
  
  public TetroZ(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));
    
    switch(rand) {
      case 0:
        content[1][1] = true;
        content[1][2] = true;
        content[2][2] = true;
        content[2][3] = true;
        this.oc = 1;
        this.or = 1;
        break;
      case 1:
        content[2][1] = true;
        content[3][1] = true;
        content[1][2] = true;
        content[2][2] = true;
        this.oc = 1;
        this.or = 1;
        break;
    }
  }
  
}

class TetroS extends Mino {
  
  public TetroS(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));
    
    switch(rand) {
      case 0:
        content[3][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        content[3][2] = true;
        
        this.oc = 1;
        this.or = 2;
        break;
      case 1:
        content[1][1] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[3][2] = true;
        this.oc = 1;
        this.or = 1;
        break;
      
    }
  }
  
}


class TetroI extends Mino {
  
  public TetroI(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));
    
    switch(rand) {
      case 0:
        content[0][2] = true;
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        this.oc = 2;
        this.or = 0;
        break;
      case 1:
        content[2][0] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        this.oc = 0;
        this.or = 2;
        break;
      
    }
  }
  
}

class TetroL extends Mino {
  
  public TetroL(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));
    
    switch(rand) {
      case 0:
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[3][3] = true;
        this.oc = 2;
        this.or = 1;
        break;
      case 1:
        content[2][1] = true;
        content[2][2] = true;
        content[3][1] = true;
        content[2][3] = true;
        this.oc = 1;
        this.or = 2;
        break;
      case 2:
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[1][1] = true;
        this.oc = 1;
        this.or = 1;
        break;
      case 3:
        content[3][3] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        this.oc = 1;
        this.or = 2;
        break;
      
    }
  }
  
}


class TetroP extends Mino {
  
  public TetroP(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));

    switch(rand) {
      case 0:
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[3][1] = true;
        this.oc = 1;
        this.or = 1;
        break;
      case 1:
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        content[1][1] = true;
        this.oc = 1;
        this.or = 1;
        break;
      case 2:
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[1][3] = true;
        this.oc = 2;
        this.or = 1;
        break;
      case 3:
        content[1][3] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        this.oc = 1;
        this.or = 1;
        break;
      
    }
  }
  
}
