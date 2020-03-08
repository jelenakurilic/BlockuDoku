/**
  Ova klasa predstvalja obceniti objekt na kojem se grade svi ostali objekti: 
        Monomino, Domino, Trimino, TetroMino, Pentomino.
*/

abstract class Mino {
  
  //sadrzaj objekta, svi su smjesetni u matrici 5x5, na onim mjestim na kojim se nalazi blok je true
  boolean[][] content;
  //velicina bloka
  int blockSize;
  //trenutna pozicija
  int X;
  int Y;
  //pocetna pozcija
  int startX;
  int startY;
  //ako jos nije stavljen na plocu je true, inace false
  boolean isEnable = true;
  //najmanji redak u kojem se nalazi neki blok u 5x5 matrici
  public int or;
  //najmanji stupac u kojem se nalazi neki blok u 5x5 matrici
  public int oc;
  
  public Mino(int blockSize, int X, int Y) {
    this.startX = X;
    this.startY = Y;
    this.X = X;
    this.Y = Y;
    this.blockSize = blockSize;
  }
  
  /**
  Provjerava da li se dani x i y nalaze na objektu.
  */
  public boolean onItem(int x, int y) {
    int nY = startY;
    for(int i = 0; i < content[0].length; i++) {
      int nX = startX;
      for(int j = 0; j < content[0].length; j++) {
        if(content[i][j]) {
          if(x >= nX && x <= nX+42 && y >= nY && y <= nY+42) {
            return true;
          }
        }
        nX = nX + 42;
      }
      nY = nY + 42;
    }
    return false;
  }
  
  /**
  Crtanje objekta
  */
  public void draw() {
    int nXs = X-offsetX;
    int nYs = Y-offsetY;
    fill(150);
    int nY = nYs;
    for(int i = 0; i < content[0].length; i++) {
      int nX = nXs;
      for(int j = 0; j < content[0].length; j++) {
        if(content[i][j]) {
          beginShape();
          vertex(nX, nY);
          vertex(nX+42, nY);
          vertex(nX+42, nY+42);
          vertex(nX, nY+42);
          endShape(CLOSE);
        }
        nX = nX + 42;
      }
      nY = nY + 42;
    }
  }
 
  
  public boolean[][] getContent() {
    return this.content;
  }
  
  /**
  Pomiće objekt na novu poziciju (x,y)
  */
  public void moveItem(int x, int y) {
    this.X = x-(oc*42);
    this.Y = y-(or*42);
  }
  
  public boolean isEnable() {
    return isEnable;
  }
  
  public void setEnable(boolean enable) {
    this.isEnable = enable;
  }
  
  public void resetPosition() {
    this.X = this.startX;
    this.Y = this.startY;
  }
  
   
   public boolean possible(){
     boolean dobar = true;
     for(int i = 0; i < grid.getN(); i++)
       for(int j = 0; j < grid.getN(); j++){
         for(int k = 0; k < content[0].length; k++)
             for(int l = 0; l < content[0].length; l++){
                 dobar = true;
               if(content[k][l]){
                 if(i+k-this.or >= 9 || j+l-this.oc >= 9) { dobar = false; k=content.length; break;}
                 else if(grid.getBoard()[i+k-this.or][j+l-this.oc]) { dobar = false; k=content.length; break;} 
               }
             }
             if(dobar) return true;
       }
     return false;  
   }
  
  /**
  Pomocna funkcija koja ispisuje sadržaj objekta.
  */
  public String toString() {
    
    String s = "";
    for(int i = 0; i < content[0].length; i++) {
      for(int j = 0; j < content[0].length; j++) {
        s+=content[i][j];
      }
      s+="\n";
    }
    return s;
  }
  
}

/**
Pomocna funkcija koja na slucajan nacin stvara 3 minosa.
*/
ArrayList<Mino> makeMinos(){
  ArrayList<Mino> m= new ArrayList<Mino>(3);
  for(int i = 0; i < 3; i++){
    int rand = int(random(5));
    switch (rand){
      case 0:
        m.add( new Mono(50, startX[i], startY));
        break;
      case 1:
        rand = int(random(2));
        switch(rand){
           case 0:
             m.add(new DoI(50, startX[i], startY));
             break;
           case 1:
             m.add(new DoD(50, startX[i], startY));
             break;
         }
         break;
      case 2:
        rand = int(random(4));
        switch(rand){
           case 0:
             m.add(new TriI(50, startX[i], startY));
             break;
           case 1:
             m.add( new TriD(50, startX[i], startY));
             break;
           case 2:
             m.add( new TriL(50, startX[i], startY));
             break;
           case 3:
             m.add( new TriC(50, startX[i], startY));
             break;
         }
         break;
      case 3:
        rand = int(random(6));
        switch(rand){
           case 0:
             m.add( new TetroI(50, startX[i], startY));
             break;
           case 1:
             m.add( new TetroS(50, startX[i], startY));
             break;
           case 2:
             m.add( new TetroL(50, startX[i], startY));
             break;
           case 3:
             m.add( new TetroZ(50, startX[i], startY));
             break;
           case 4:
             m.add( new TetroP(50, startX[i], startY));
             break;
           case 5:
             m.add( new TetroT(50, startX[i], startY));
             break;
         }
         break;
      case 4:
        rand = int(random(9));
        switch(rand){
           case 0:
             m.add( new PentoI(50, startX[i], startY));
             break;
           case 1:
             m.add( new PentoS(50, startX[i], startY));
             break;
           case 2:
             m.add( new PentoL(50, startX[i], startY));
             break;
           case 3:
             m.add( new PentoZ(50, startX[i], startY));
             break;
           case 4:
             m.add( new PentoF(50, startX[i], startY));
             break;
           case 5:
             m.add( new PentoT(50, startX[i], startY));
             break;
           case 6:
             m.add( new Pentol1(50, startX[i], startY));
             break;
           case 7:
             m.add( new Pentol2(50, startX[i], startY));
             break;
           case 8:
             m.add( new PentoX(50, startX[i], startY));
             break;
         }
         break;
    } 
  }
  return m;
}
