void RulesState()
{
   //pozadina
  int a = 670;
  int b = 750;
  background(pozadinaRules);
  
  //font
  PFont font;
  font = createFont("AR Julian.ttf", 25);
  textFont(font);
  textAlign(CENTER);
  fill(0, 26, 51);
  
  textSize(50);
  text("RULES:", a/2, b/3);
  
  textSize(30);
  text("Strategically drag block figures\n on a 9x9 board.\nFill up lines or 3x3 squares to remove them.\nKeep the board clear as much as possible.\nGood luck!", a/2, b/2);
  
  //crtanje gumbica
  if (overRect((a-150)/2, (b-60)/2 + b/3, 150, 60))
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
  rect((a-150)/2, (b-60)/2 + b/3, 150, 60, 7);
  fill(255);
  textAlign(CENTER);
  //textSize(20);
  text("GO BACK",(a-150)/2 + 75, (b-60)/2 + b/3 + 38);
  
}
