void ScoresState()
{ 
  background(pozadinaScores);
  
  //crtamo top10
  //fill(11,138,6);
  
  PFont font;
  font = createFont("AR Julian.ttf", 25);
  textFont(font);
  textAlign(CENTER);
  fill(0, 26, 121);
  textSize(60);
  
  int j = 0;
  topDeset.sortReverse();
  text("Top 10:", width/2, height/4);
  textSize(35);
  for(int i : topDeset) {
    if(j==9)
      text(++j+". "+i,width/2+10, height/3+35*j);
    else
      text("  "+(++j)+". "+i,width/2, height/3+35*j);
  }
  
  //crtanje gumbica
  if (overRect(260, 645, 150, 60))
  {
    stroke(255);
    fill(0, 51, 102);
    textSize(25);
  }
  else
  {
    stroke(100);
    fill(0, 92, 179, 150);
    textSize(20);
  }
  rect(260, 645, 150, 60, 7);
  fill(255);
  textAlign(CENTER);
  //textSize(20);
  text("GO BACK",260 + 75, 645 + 38);

}
