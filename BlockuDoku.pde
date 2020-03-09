//import biblioteke za reproduciranje zvuka
import ddf.minim.*; 

//audio
AudioPlayer backgMusic, oblik; //audio player
Minim minim, oblikMinim; //audio context

PImage icon;

// stanja igre
static final int Start = 0;
static final int Play = 1;
static final int End = 2;
static final int Scores = 3;
static final int Rules = 4;

int State;
boolean kraj = true; //kraj igre
int time = 20; //trenutno vrijeme
int Time = 20; //sveukupno vrijeme
int startTime = 0; //vrijeme pocetka odbrojavanja timera

IntList topDeset = new IntList();
boolean top10; //true ako je trenutni rezultat u top deset
boolean newHighScore; //true ako je trenutni rezultat novi najbolji rezultat

//pocetne pozicije objekata
int[] startX = {10, 230, 450};
int startY = 505;

//ikone za zvuk
PImage unmute, mute, ikona;
boolean zvuk = true;

//pozadine
PImage pozadinaPlay, pozadinaStart, pozadinaRules, pozadinaEnd, pozadinaScores;

//odabrani oblik koji se stavlja na plocu
Mino selected;

//oblici ponudjeni za postavljanje na plocu
ArrayList<Mino> m = makeMinos();

int blockSize = 50;
Grid grid = new Grid(); //ploca za igru

void setup() {
  size(670, 750);
  State = Start;
  icon = loadImage("icons.png"); //ikonica u kojoj pise score
  PImage game = loadImage("game.png");
  surface.setIcon(game); //postavljanje ikone igre
  
  
  //reproduciranje pozadinske muzike
  minim = new Minim(this);
  backgMusic = minim.loadFile("music.mp3", 2048);
  backgMusic.play();
  backgMusic.rewind();
  
  //reproduciranje zvuka za stavljanje oblika
  oblikMinim = new Minim(this);
  oblik = oblikMinim.loadFile("stavi.mp3", 2048);
  
  //ikona za zvuk
  unmute = loadImage("unmute.png");
  unmute.resize(60, 60);
  mute = loadImage("mute.png");
  mute.resize(60, 60);
  ikona = unmute; //pocetno stanje je da glazba svira
  
  //pozadine
  pozadinaPlay = loadImage("images.png");
  pozadinaPlay.resize(670, 750);
  pozadinaStart = loadImage("pozadina.png");
  pozadinaStart.resize(670, 750);
  pozadinaRules = pozadinaStart;
  pozadinaEnd = pozadinaStart;
  pozadinaScores = pozadinaStart;
  
  //ubacivanje najboljih rezultata iz dokumenta
   String[] rang = loadStrings("topDeset.txt");
  if(rang.length !=0) {
    for(int i = 0; i < rang.length; i++) {
      topDeset.append(Integer.parseInt(rang[i]));   
    }
  }
  topDeset.sortReverse();

}

void draw() {
  switch(State){
    case Start:
      StartState();
      break;
    case Play:
      PlayState();
      break;
    case End:
      EndState();
      break;
    case Scores:
      ScoresState();
      break;
    case Rules:
      RulesState();
      break;
  } 
}
