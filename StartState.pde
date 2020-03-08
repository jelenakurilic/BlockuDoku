void StartState(){
  
  //pozadina
  int a = 670;
  int b = 750;
  
  background(pozadinaStart);
  image(ikona, 40, 650);
  
  //font
  PFont font;
  font = createFont("AR Christy.ttf", 56);
  textFont(font);
  
  textAlign(CENTER);
  fill(0, 40, 77);
  text("Welcome To BlockuDoku!", a/2, b/3);
  
  //crtanje gumbica
  if (overRect((a-200)/2, (b-80)/2, 200, 80))
  {
    stroke(255);
    fill(0, 51, 102);
    textSize(52);
  }
  else
  {
    stroke(100);
    fill(0, 128, 255);
    textSize(42);
  }
  rect((a-200)/2, (b-80)/2, 200, 80, 7);
  fill(255);
  textAlign(CENTER);
  text("PLAY",(a-200)/2 + 100, (b-80)/2 + 55);
  
  //90 od 80+10
  if (overRect((a-150)/2, (b-80)/2 + 90, 150, 60))
  {
    stroke(255);
    fill(0, 51, 102);
    textSize(27);
  }
  else
  {
    stroke(100);
    fill(0, 128, 255);
    textSize(22);
  }
  rect((a-150)/2, (b-80)/2 + 90, 150, 60, 7);
  fill(255);
  textAlign(CENTER);
  //40 od 60/2+10
  text("RULES",(a-150)/2 + 75, (b-80)/2 + 90 + 40);
  
  if (overRect((a-150)/2, (b-80)/2 + 90 + 70, 150, 60))
  {
    stroke(255);
    fill(0, 51, 102);
    textSize(27);
  }
  else
  {
    stroke(100);
    fill(0, 128, 255);
    textSize(22);
  }
  rect((a-150)/2, (b-80)/2 + 90 + 70, 150, 60, 7);
  fill(255);
  textAlign(CENTER);
  text("SCORES",(a-150)/2 + 75, (b-80)/2 + 90 + 68 + 40);
  
  if (overRect((a-150)/2, (b-80)/2 + 90 + 140, 150, 60))
  {
    stroke(255);
    fill(0, 51, 102);
    textSize(27);
  }
  else
  {
    stroke(100);
    fill(0, 128, 255);
    textSize(22);
  }
  rect((a-150)/2, (b-80)/2 + 90 + 140, 150, 60, 7);
  fill(255);
  textAlign(CENTER);
  text("EXIT",(a-150)/2 + 75, (b-80)/2 + 90 + 68 + 110);
}


//funkcija koja provjerava je li miš iznad kvadrata na ekranu 
boolean overRect(int x, int y, int w, int h)
{
  if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h)
    return true;
  return false;
}
