import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Boolean playBuzzer = false;

String path = "../timer.txt";

int timerINT = 0;

File musicFolder, soundEffectFolder; //Class for java.io.* library
Minim minim; //creates object to access all functions
int numberOfSongs = 1, numberOfSoundEffects = 1; //Placeholder Only, reexecute lines after fileCount Known
int currentSong=0; //Variable is rewritten in setup()
AudioPlayer[] playList = new AudioPlayer[numberOfSongs]; //song is now similar to song1
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs]; //same as above
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects]; //song is now similar to song1PFont generalFont;
color purple = #2C08FF;
PFont generalFont;

//
void setup(){  
  
  frameRate(30);
  
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //Music File Load
  //Re-execute Playlist Population, similar to DIV Population
  //Sound Effects Load
  String relativeSoundPathway = "../EFX/"; //Relative Path
  String absoluteSoundPath = sketchPath( relativeSoundPathway ); //Absolute Path
  soundEffectFolder = new File(absoluteSoundPath);
  int soundEffectFileCount = soundEffectFolder.list().length;
  File[] soundEffectFiles = soundEffectFolder.listFiles(); //String of Full Directies
  String[] soundEffectFilePathway = new String[soundEffectFileCount];
  for ( int i = 0; i < soundEffectFiles.length; i++ ) {
    soundEffectFilePathway[i] = ( soundEffectFiles[i].toString() );
  }
  //Re-execute Playlist Population, similar to DIV Population
  numberOfSoundEffects = soundEffectFileCount; //Placeholder Only, reexecute lines after fileCount Known
  soundEffects = new AudioPlayer[numberOfSoundEffects]; //song is now similar to song1
  for ( int i=0; i<soundEffectFileCount; i++ ) {
    soundEffects[i]= minim.loadFile( soundEffectFilePathway[i] );
  } //End Music Load
  
} //End setup
//
void draw(){
  String[] lines = loadStrings(path);
  
  for (int i = 0 ; i < lines.length; i++) {
    timerINT = i;
  }
  
  
  println("file "+lines[timerINT-1]);
  println("playBuzzer "+playBuzzer);
  println("String of Boolean "+String.valueOf(true));
  
  println(" ");
  
  if(lines[timerINT-1].toString() == String.valueOf(true)){
    playBuzzer = true;
  }
  
  if(playBuzzer == true){
    soundEffects[0].play();
    playBuzzer = false;
    soundEffects[0].rewind();
  }
} //End draw
//
void keyPressed() {
  if(key == 'b' || key == 'B'){
    playBuzzer = true;
  }
}
