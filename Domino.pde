class DoI extends Mino {
  
  public DoI(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));
    
    switch(rand) {
      case 0:
        content[2][2] = true;
        content[2][3] = true;
        break;
      case 1:
        content[2][2] = true;
        content[3][2] = true;
        break;
      
    }
    this.oc = 2;
    this.or = 2;
  }
  
}

class DoD extends Mino {
  
  public DoD(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));
    
    switch(rand) {
      case 0:
        content[2][2] = true;
        content[3][1] = true;
        this.oc = 1;
        this.or = 2;
        break;
      case 1:
        content[1][2] = true;
        content[2][3] = true;
        this.oc = 2;
        this.or = 1;
        break;
      
    }
  }
  
}
