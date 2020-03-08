class Mono extends Mino {
  
  public Mono(int blockSize, int X, int Y) {
    super(blockSize, X, Y);
    content = new boolean[5][5];

    content[2][2] = true;
        
    this.oc = 2;
    this.or = 2;
  }
  
}
