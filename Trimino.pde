class TriI extends Mino {
  
  public TriI(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));
    
    switch(rand) {
      case 0:
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        this.oc = 1;
        this.or = 2;
        break;
      case 1:
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        this.oc = 2;
        this.or = 1;
        break;
      
    }
  }
  
}

class TriD extends Mino {
  
  public TriD(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));
    
    switch(rand) {
      case 0:
        content[1][1] = true;
        content[2][2] = true;
        content[3][3] = true;
        this.oc = 1;
        this.or = 1;
        break;
      case 1:
        content[1][3] = true;
        content[2][2] = true;
        content[3][1] = true;
        this.oc = 1;
        this.or = 1;
        break;
      
    }
  }
  
}

class TriL extends Mino {
  
  public TriL(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));
    
    switch(rand) {
      case 0:
        content[1][2] = true;
        content[2][2] = true;
        content[2][3] = true;
        this.oc = 2;
        this.or = 1;
        break;
      case 1:
        content[2][3] = true;
        content[2][2] = true;
        content[3][2] = true;
        this.oc = 2;
        this.or = 2;
        break;
      case 2:
        content[2][1] = true;
        content[2][2] = true;
        content[3][2] = true;
        this.oc = 1;
        this.or = 2;
        break;
      case 3:
        content[1][2] = true;
        content[2][2] = true;
        content[2][1] = true;
        this.oc = 1;
        this.or = 1;
        break;
      
    }
  }
  
}

class TriC extends Mino {
  
  public TriC(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));
    
    switch(rand) {
      case 0:
        content[1][1] = true;
        content[2][2] = true;
        content[3][1] = true;
        this.oc = 1;
        this.or = 1;
        break;
      case 1:
        content[1][1] = true;
        content[2][2] = true;
        content[1][3] = true;
        this.oc = 1;
        this.or = 1;
        break;
      case 2:
        content[1][3] = true;
        content[2][2] = true;
        content[3][3] = true;
        this.oc = 2;
        this.or = 1;
        break;
      case 3:
        content[3][1] = true;
        content[2][2] = true;
        content[3][3] = true;
        this.oc = 1;
        this.or = 2;
        break;
      
    }
  }
  
}
