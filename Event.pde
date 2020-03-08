/**
 U ovoj datoteci se nalaze sve funkcije koje ragiraju na nekakav dogadaj. To su dogadaji koji
 reagiraju na mis kao npr mousePressed, mouseMoved, mouseClicked...
 */
 
void mousePressed() {
  //ako je neki oblik odabran
  if(selected != null && State==Play) {
    //provjeri je li korisnik klinuo unutar ploce
    if(mouseX >= 110 && mouseX <= blockSize*9+110 && mouseY >= 50 && mouseY <= blockSize*9+50) {
      checkPutOnBoard(); //ako se moze stavit na plocu stavi ga, inace neka je i dalje na kursoru misa
    } else {
      //ako nije vrati objekt na pocetnu poziciju
      selected.resetPosition();
      selected = null;
    }
  } else if(selected==null && State==Play) { //ako nije odabran neki objekt, uzmi objekt na koji se kliknulo
    if(m.get(0).isEnable() && m.get(0).onItem(mouseX, mouseY)) {
      selected = m.get(0);
    } else if(m.get(1).isEnable() && m.get(1).onItem(mouseX, mouseY)) {
      selected = m.get(1);
    } else if(m.get(2).isEnable() && m.get(2).onItem(mouseX, mouseY)) {
      selected = m.get(2);
    }
  } else {
    //nesto se random kliknulo
    selected = null;
  }
}

void mouseMoved() {
  //ako je neki objekt oznacen njegova lokacija prati kursor misa
  if(selected != null && State==Play) {
    selected.moveItem(mouseX, mouseY);
  }
}

void mouseClicked(){
  int a = 670;
  int b = 750;
  switch(State){
    case Start:
      if (overRect((a-200)/2, (b-80)/2, 200, 80)){
        State = Play;
        top10 = newHighScore = false;
        startTime = millis();
      }
      else if (overRect((a-150)/2, (b-80)/2 + 90, 150, 60))
        State = Rules;
      else if (overRect((a-150)/2, (b-80)/2 + 90 + 70, 150, 60))
        State = Scores;
      else if (overRect((a-150)/2, (b-80)/2 + 90 + 140, 150, 60))
        exit();      
      else if (overRect(40, 650, 60, 60)) //ovo je za prigusenje glazbe
      {  if(zvuk == true)
          { ikona = mute;
            zvuk = false;
            backgMusic.mute();
            oblik.mute();
          }
          else
          {  ikona = unmute;
              zvuk = true;
              backgMusic.unmute();
              oblik.unmute();
          }
      }
      break;
    case Play:
      if (overRect(30, 30, 80, 50))
      {
        State = Start;
        grid.clearBoard();
        grid.score = 0;
        m = makeMinos();
        Time = time = 30;
      }
      else if (overRect(30, 120, 60, 60)) //ovo je za prigusenje glazbe
      {  if(zvuk == true)
          { ikona = mute;
            zvuk = false;
            backgMusic.mute();
            oblik.mute();
          }
          else
          {  ikona = unmute;
             zvuk = true;
             backgMusic.unmute();
             oblik.unmute();
          }
      }
      break;
    case End:
      //vracanje na izbornik i resetiranje igre
      if(overRect(260, 620, 150, 60))
      {
        State = Start;
        grid.clearBoard();
        m = makeMinos();
        Time = time = 30;
      }
      break;
    case Scores:
      //vracanje na izbornik
      if(overRect(260, 645, 150, 60))
      State = Start;
      break;
    case Rules:
      //vracanje na izbornik
      if(overRect((a-150)/2, (b-60)/2 + b/3, 150, 60))
        State = Start;
      break;
  }
}
