void EndState(){
  
  //ovo je da se zavrsno stanje bolje vidi
  if(kraj) {kraj = false; delay(2000);}
  
  //pozadina
  background(pozadinaEnd);
  
  fill(154,205,50);
  textSize(60);
  textAlign(CENTER);
  if(newHighScore) {textSize(50); text("Game Over\nYou have a new high score! :)", width/2, height/2-100);}
  else if(top10) text("Game Over\nYou made the top 10! :)", width/2, height/2-100);
  else text("Game Over\nBetter luck next time! :)", width/2, height/2-100);
  textSize(70);
  text("Your Score: "+grid.getScore(), width/2, height/2+100);
  
  
  
  
  
  //crtanje gumbica
  if (overRect(260, 620, 150, 60))
  {
    stroke(255);
    fill(0, 51, 102);
    textSize(32);
  }
  else
  {
    stroke(100);
    //fill(0, 128, 255);
    fill(154,205,50);
    textSize(22);
  }
  rect(260, 620, 150, 60, 7); //(670-150)/2
  fill(255);
  text("MENU", 260 + 80, 620 + 42);
  textSize(20);
  
}

void zapisiRezultat() {
  if(topDeset.size() < 10) {
      top10 = true;
     topDeset.append(grid.getScore());
  }else if(grid.getScore() >= topDeset.min()) {
    top10 = true;
    topDeset.remove(9);
    topDeset.append(grid.getScore());
    if(grid.getScore() == topDeset.max()) newHighScore = true;
  }
  
  String[] save = new String[topDeset.size()];
  for(int i = 0; i < topDeset.size(); i++) {
    save[i] = Integer.toString(topDeset.array()[i]);
  }
  saveStrings("data/topDeset.txt", save);
}
