import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
File musicFolder, soundEffectFolder; //Class for java.io.* library
Minim minim; //creates object to access all functions
int numberOfSongs = 1, numberOfSoundEffects = 1; //Placeholder Only, reexecute lines after fileCount Known
int currentSong=0; //Variable is rewritten in setup()
AudioPlayer[] playList = new AudioPlayer[numberOfSongs]; //song is now similar to song1
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs]; //same as above
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects]; //song is now similar to song1PFont generalFont;
color purple = #2C08FF;
PFont generalFont;
Boolean stopBoolean=false, pauseBoolean=false, changeState=false, playBuzzer = false;

String path = "../timer.txt";

String False = "false", True = "true";

int timerINT = 0;


//
void setup(){  
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //Music File Load
  String relativeMusicPathway = "../EFX/"; //Relative Path
  String absoluteMusicPath = sketchPath( relativeMusicPathway ); //Absolute Path
  musicFolder = new File(absoluteMusicPath);
  int musicFileCount = musicFolder.list().length;
  File[] musicFiles = musicFolder.listFiles(); //String of Full Directies
  String[] songFilePathway = new String[musicFileCount];
  for ( int i = 0; i < musicFiles.length; i++ ) {
    songFilePathway[i] = ( musicFiles[i].toString() );
  }
  //Re-execute Playlist Population, similar to DIV Population
  numberOfSongs = musicFileCount; //Placeholder Only, reexecute lines after fileCount Known
  playList = new AudioPlayer[numberOfSongs]; //song is now similar to song1
  printArray(playList);
  playListMetaData = new AudioMetaData[numberOfSongs]; //same as above
  for ( int i=0; i<musicFileCount; i++ ) {
    printArray(playList);
    playList[i]= minim.loadFile( songFilePathway[i] );
    playListMetaData[i] = playList[i].getMetaData();
  } //End Music Load
  //
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
  generalFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
  //Random Start with any song in playList
  //Example of Population, random style
  currentSong = int ( random(0, numberOfSongs-1) ); //casting truncates the decimal
  //println("Random Start", currentSong);
  //
  playList[currentSong].play();
} //End setup
//
void draw(){
  String[] lines = loadStrings(path);
  
  for (int i = 0 ; i < lines.length; i++) {
    timerINT = i;
  }
  
  println(lines[timerINT-1]);
  
  if(lines[timerINT-1] == True){
    playBuzzer = true;
  }
  
  playList[currentSong].rewind();
  
  //Note: Looping Function
  //Note: logical operators could be nested IFs
  //if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()!=-1 ) println("There are", playList[currentSong].loopCount(), "loops left.");
  //if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  //if ( playList[currentSong].isPlaying() && !playList[currentSong].isLooping() ) println("Play Once");
  //
  //Debugging Fast Forward and Fast Rewind
  //println( "Song Position", song1.position(), "Song Length", song1.length() );
  //
  // songMetaData1.title()
  //
  //Autoplay, next song automatically plays
  if(playBuzzer == true){
    if ( playList[0].isPlaying() ) {
      //println("hereD1", playList[0].isPlaying(), stopBoolean, pauseBoolean, changeState);
      if ( stopBoolean==true || pauseBoolean==true ) {
        //changeState=true;
        playList[currentSong].pause();
        //println("hereD2", playList[currentSong].isPlaying(), stopBoolean, pauseBoolean, changeState);
      }
      if ( stopBoolean==true ) playList[currentSong].rewind();
    }
  } else {
      //println("hereD3", playList[currentSong].isPlaying(), stopBoolean, pauseBoolean, changeState);
      if ( changeState==false ) {
        playList[currentSong].rewind();
        if (currentSong==numberOfSongs-1) {
          currentSong=0;
        } else {
          currentSong = currentSong + 1; //currentSong--; currentSong-=1}
        }
        playList[currentSong].play();
        //println("hereD4", playList[currentSong].isPlaying(), stopBoolean, pauseBoolean, changeState);
      }
      if ( stopBoolean==false && pauseBoolean==false && changeState==true ) {
        playList[currentSong].rewind();
        playList[currentSong].play();
        changeState=false;
        //println("hereD5", playList[currentSong].isPlaying(), stopBoolean, pauseBoolean, changeState);
      }
      if ( pauseBoolean==false && stopBoolean==false  && changeState==true) {
        playList[currentSong].play();
        changeState=false;
        //println("hereD6", playList[currentSong].isPlaying(), stopBoolean, pauseBoolean, changeState);
      }
    }
} //End draw
//
void keyPressed() {
  if(key == 'b' || key == 'B'){
    playBuzzer = true;
  }
  //println ( "herek1", playList[currentSong].isPlaying(), pauseBoolean );
  //
  if ( key=='P' || key=='p' ) {
    changeState=true;
    if ( pauseBoolean==false ) {
      pauseBoolean=true;
      println("herek2", pauseBoolean);
    } else {
      pauseBoolean=false;
      println("herek3", pauseBoolean);
      //playList[currentSong].play();
    }
    if (  stopBoolean==true ) {
      stopBoolean=false;
    }
    println ( "herek4", playList[currentSong].isPlaying(), pauseBoolean, stopBoolean, changeState );
  }
  //
  //Simple STOP Behaviour: ask if .playing() & .pause() & .rewind(), or .rewind()
  if ( key=='S' | key=='s' ) {
    changeState=true;
    if ( stopBoolean == false ) {
      stopBoolean = true;
      //playList[currentSong].pause(); //auto .rewind()
    } else {
      stopBoolean = false;
      //playList[currentSong].rewind(); //Not Necessary
    }
  }
  //Simple NEXT and PREVIOUS
  if ( key==CODED && keyCode==LEFT ) { //Previous
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      if (currentSong==0) {
        currentSong=numberOfSongs-1;
      } else {
        currentSong = currentSong - 1; //currentSong--; currentSong-=1}
      }
    }
    println(currentSong);
    playList[currentSong].play();
  } //End Previous
  if ( key==CODED && keyCode==RIGHT ) { //NEXT
  } //End NEXT
  //
  /* Broken KeyBinds
   //
   if ( key>='1' || key<='9' ) { //Loop Button, previous (key=='1' || key=='9')
   //Note: "9" is assumed to be massive! "Simulate Infinite"
   String keystr = String.valueOf(key);
   //println(keystr);
   int loopNum = int(keystr); //Java, strongly formatted need casting
   song[0].loop(loopNum); //Parameter is number of repeats
   //
   }
   if ( key=='L' || key=='l' ) song[0].loop(); //Infinite Loop, no parameter OR -1
   //
   if ( key=='M' || key=='m' ) { //MUTE Button
   //MUTE Behaviour: stops electricty to speakers, does not stop file
   //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
   //ERROR: if song near end of file, user will not know song is at the end
   //Known ERROR: once song plays, MUTE acts like it doesn't work
   if ( song[0].isMuted() ) {
   //ERROR: song might not be playing
   //CATCH: ask .isPlaying() or !.isPlaying()
   song[0].unmute();
   } else {
   //Possible ERROR: Might rewind the song
   song[0].mute();
   }
   } //End MUTE
   //
   //Possible ERROR: FF rewinds to parameter milliseconds from SONG Start
   //Possible ERROR: FR rewinds to parameter milliseconds from SONG Start
   //How does this get to be a true ff and fr button
   //Actual .skip() allows for varaible ff & fr using .position()+-
   if ( key=='F' || key=='f' ) song[0].skip( 0 ); //SKIP forward 1 second (1000 milliseconds)
   if ( key=='R' || key=='r' ) song[0].skip( 1000 ); //SKIP  backawrds 1 second, notice negative, (-1000 milliseconds)
   //
   
   //
   //Simple Pause Behaviour: .pause() & hold .position(), then PLAY
   if ( key=='Y' | key=='y' ) {
   if ( song[0].isPlaying()==true ) {
   song[0].pause(); //auto .rewind()
   } else {
   song[0].play(); //ERROR, doesn't play
   }
   }
   */
}
