/**
 U ovoj datoteci se nalaze sve pomocne funkcije koje se koriste u BlockuDoku. To su uglavnom
 pomocne funkcije koje se koriste u mousePressed, mouseMoved, mouseClicked...
 */


/**
 Funkcija koja provjerava je li moguce stavitiobjekt na plocu, ako je moguce tada poziva funkciju koja
 smjesta objekt na plocu.
 */
void checkPutOnBoard() {
  int row = (mouseY-50)/blockSize; //indeks redka na koji je korisnik kliknuo
  int col = (mouseX-110)/blockSize; //indeks sutpca na kojeg je korisnik kliknuo
  boolean flag = false; //zastavica koja oznacava je li moguće smestiti odredeni objekt na plocu 
                        //(ne uzima u obzir je li vec neki objekt na ploci), true ako je nemoguce staviti, false inace

  int r = row+selected.getContent()[0].length-selected.or > 9 ? 9 : row+selected.getContent()[0].length-selected.or;
  int c = col+selected.getContent()[0].length-selected.oc > 9 ? 9 : col+selected.getContent()[0].length-selected.oc;
  int iT = selected.or, jT = selected.oc; //najmanji redak i stupak u kojem se nalazi neki blok objekta
  
  for (int i = row; i < r; i++) {
    jT = selected.oc;
    for (int j = col; j < c; j++) {
      //ako je na ploci true tada se ne moze staviti, flag se posatvlja na true
      if (selected.getContent()[iT][jT++] && grid.getBoard()[i][j]) {
        flag = true;          
        break;
      }
    }
    iT++;
  }

  //provjerava da li je dio content-a izvan ploce i mozda se tamo nalazi neki blok, onda ne mozemo stavit objekt na plocu
  if (r == 9 && !flag) {
    flag = checkTooManyRow(iT);
  }
  
  //provjerava da li je dio content-a izvan ploce i mozda se tamo nalazi neki blok, onda ne mozemo stavit objekt na plocu
  if (c == 9 && !flag) {
    flag = checkTooManyCol(jT);
  }
  
  //stavlja se objekt na plocu
  if (!flag) {
    selected.setEnable(false);
    grid.putOnBoard(row, col);
    grid.updateBoard();
    selected = null;
    oblik.play();
    oblik.rewind();
  } else { //objekt ostaje na misu
    selected.moveItem(mouseX, mouseY);
  }
}

/**
Pomocna funkcija koja provjerava je li u recim koji ne stanu na plocu nalazi neki blok
*/
Boolean checkTooManyRow(int iT) {
  for (int i = iT; i <= selected.getContent()[0].length-selected.or; i++) {
    if (i>=5) continue;
    for (int j = 0; j <= selected.getContent()[0].length-selected.oc; j++) {
      if (j>=5) continue;
      if (selected.getContent()[i][j]) return true;
    }
  }
  
  return false;
}

/**
Pomocna funkcija koja provjerava je li u stupcim koji ne stanu na plocu nalazi neki blok
*/
Boolean checkTooManyCol(int jT) {
  for (int i = 0; i <= selected.getContent()[0].length-selected.or; i++) {
    if (i>=5) continue;
    for (int j = jT; j <= selected.getContent()[0].length-selected.oc; j++) {
      if (j>=5) continue;
      if (selected.getContent()[i][j]) return true;
    }
 }
 
 return false;
}
