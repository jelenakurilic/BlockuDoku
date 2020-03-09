void PlayState(){
  
  background(pozadinaPlay);
  
  //ikona za zvuk
  image(ikona, 30, 120);
  
  //crtanje gumbica
  if (overRect(30, 30, 80, 50))
  {
    stroke(255);
    fill(0, 51, 102);
  }
  else
  {
    stroke(240,230,140);
    //fill(136, 136, 68);
    fill(154,205,50);
  }
  rect(20, 30, 80, 50, 7);
  fill(240,230,140);
  textSize(20);
  textAlign(CENTER);
  text("MENU", 20+40, 30+33);
 
  //generira nova tri oblika, ukoliko su svi stavljeni u polje
  if(!m.get(0).isEnable() && !m.get(1).isEnable() && !m.get(2).isEnable()) {
    m = makeMinos();
    if(grid.getScore() > 200) Time = 10; 
    else if(grid.getScore() > 100) Time = 15; 
    startTime=millis();
  }
  
  //crta score i timer
  image(icon, 590 , 50);
  fill(141, 108, 159);
  if(grid.getScore()/100 > 0) textSize(15);
  else textSize(20);
  text(grid.getScore(), 623, 80);
  grid.drawTimer();
  grid.draw();
  
  //crta tri generirana oblika ispod polja
  if(m.get(0).isEnable())
    m.get(0).draw();
  if(m.get(1).isEnable())
    m.get(1).draw();
  if(m.get(2).isEnable())
    m.get(2).draw();
    
  //provjerava je li igra gotova
  kraj = true;
  for(Mino a: m)
    if(a.isEnable()){
      if(!a.possible()) {stroke(255,0,0); a.draw();}
      else kraj = false;
    }
  if(kraj) {
    State = End;
    fill(154,205,50);
    textSize(100);
    textAlign(CENTER);
    text("Game Over", width/2, height/2);
    zapisiRezultat();
  }
  
  //provjerava je li vrijeme isteklo
  time = Time - (millis()-startTime)/1000;
  if(time <= 0) {
    State = End;
    fill(154,205,50);
    textSize(100);
    textAlign(CENTER);
    text("Game Over", width/2, height/2);
    kraj = true;
    zapisiRezultat();
  }
}
