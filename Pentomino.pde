class PentoT extends Mino {
  
  public PentoT(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));
    
    switch(rand) {
      case 0:
        content[1][1] = true;
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[1][3] = true;
        break;
      case 1:
        content[1][3] = true;
        content[2][2] = true;
        content[2][1] = true;
        content[2][3] = true;
        content[3][3] = true;
        break;
      case 2:
        content[1][2] = true;
        content[3][1] = true;
        content[3][2] = true;
        content[3][3] = true;
        content[2][2] = true;
        break;
      case 3:
        content[2][2] = true;
        content[1][1] = true;
        content[2][1] = true;
        content[3][1] = true;
        content[2][3] = true;
        break;
      
    }
    this.oc = 1;
    this.or = 1;
  }
  
}

class PentoI extends Mino {
  
  public PentoI(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));

    switch(rand) {
      case 0:
        content[0][2] = true;
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[4][2] = true;
        this.oc = 2;
        this.or = 0;
        break;
      case 1:
        content[2][0] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        content[2][4] = true;
        this.oc = 0;
        this.or = 2;
        break;
    }
  }
 
}

class PentoX extends Mino {
  
  public PentoX(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    content[2][1] = true;
    content[2][2] = true;
    content[2][3] = true;
    content[1][2] = true;
    content[3][2] = true;
    
    this.oc = 1;
    this.or = 1;
    
  }
 
}

class PentoL extends Mino {
  
  public PentoL(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));
    println(rand);
    switch(rand) {
      case 0:
        content[1][1] = true;
        content[2][1] = true;
        content[3][1] = true;
        content[3][2] = true;
        content[3][3] = true;
        break;
      case 1:
        content[3][1] = true;
        content[3][2] = true;
        content[3][3] = true;
        content[1][3] = true;
        content[2][3] = true;
        break;
      case 2:
        content[1][1] = true;
        content[1][2] = true;
        content[1][3] = true;
        content[2][3] = true;
        content[3][3] = true;
        break;
      case 3:
        content[1][1] = true;
        content[1][2] = true;
        content[1][3] = true;
        content[2][1] = true;
        content[3][1] = true;
        break;
      
    }
    this.oc = 1;
    this.or = 1;
  }
  
}

class PentoF extends Mino {
  
  public PentoF(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));
    
    switch(rand) {
      case 0:
        content[1][1] = true;
        content[1][2] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[3][1] = true;
        
        this.oc = 1;
        this.or = 1;
        break;
      case 1:
        content[1][1] = true;
        content[1][2] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[0][1] = true;
        
        this.oc = 1;
        this.or = 0;
        break;
      case 2:
        content[1][1] = true;
        content[1][2] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[2][0] = true;
        
        this.oc = 0;
        this.or = 1;
        break;
      case 3:
        content[1][1] = true;
        content[1][2] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[1][3] = true;
        
        this.oc = 1;
        this.or = 1;
        break;
      
    }
  }
  
}


class PentoZ extends Mino {
  
  public PentoZ(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));
    
    switch(rand) {
      case 0:
        content[1][1] = true;
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[3][3] = true;
        
        this.oc = 1;
        this.or = 1;
        break;
      case 1:
        content[1][3] = true;
        content[2][3] = true;
        content[2][2] = true;
        content[2][1] = true;
        content[3][1] = true;
        
        this.oc = 1;
        this.or = 1;
        break;
      
    }
  }
  
}


class PentoS extends Mino {
  
  public PentoS(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(2));
    
    switch(rand) {
      case 0:
        content[1][2] = true;
        content[1][3] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[3][1] = true;
        
        this.oc = 1;
        this.or = 1;
        break;
      case 1:
        content[1][1] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        content[3][3] = true;
        
        this.oc = 1;
        this.or = 1;
        break;
      
    }
  }
  
}


class Pentol1 extends Mino {
  
  public Pentol1(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));
    
    switch(rand) {
      case 0:
        content[0][2] = true;
        content[0][3] = true;
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        
        this.oc = 2;
        this.or = 0;
        break;
      case 1:
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        content[2][4] = true;
        content[3][4] = true;
        
        this.oc = 1;
        this.or = 2;
        break;
      case 2:
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[4][2] = true;
        content[4][1] = true;
        
        this.oc = 1;
        this.or = 1;
        break;
      case 3:
        content[1][0] = true;
        content[2][0] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        
        this.oc = 0;
        this.or = 1;
        break;
      
    }
  }
  
}

class Pentol2 extends Mino {
  
  public Pentol2(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];
    
    int rand = int(random(4));
    
    switch(rand) {
      case 0:
        content[0][2] = true;
        content[0][1] = true;
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        
        this.oc = 1;
        this.or = 0;
        break;
      case 1:
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        content[2][4] = true;
        content[1][4] = true;
        
        this.oc = 1;
        this.or = 1;
        break;
      case 2:
        content[1][2] = true;
        content[2][2] = true;
        content[3][2] = true;
        content[4][2] = true;
        content[4][3] = true;
        
        this.oc = 2;
        this.or = 1;
        break;
      case 3:
        content[2][0] = true;
        content[3][0] = true;
        content[2][1] = true;
        content[2][2] = true;
        content[2][3] = true;
        
        this.oc = 0;
        this.or = 2;
        break;
      
    }
  }
  
}
