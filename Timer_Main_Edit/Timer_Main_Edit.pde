import java.io.*;

float xTimer, yTimer, widthTimer, heightTimer;
float xStart, yStart, widthStart, heightStart;
float xReset, yReset, widthReset, heightReset;

boolean timerTF = false;
boolean penoltyHome1TF = false;
boolean penoltyHome2TF = false;
boolean penoltyGust1TF = false;
boolean penoltyGust2TF = false;
boolean buzzerTF = false;
boolean resetTF = false;

boolean timerCom = false;
boolean stopClockCom = false;
boolean playBuzzer = false;

int appWidth, appHeight;
int timer;
int penoltyHome1Timer, penoltyHome2Timer;
int penoltyGust1Timer, penoltyGust2Timer;

int BE = 10, CE = 30;
int A = 0, B = 0, C = 0;
int ABC = 0;

PFont allFont;

String c = " min ", b = " sec ", hello = ":", ev = "00";

String path = "../timer_display/timer.txt";

PrintWriter output;

String fileName = dataPath(path);

void setup() {
  size(700, 700);
  frameRate(60);
  surface.setTitle("Timer Main Edit");
  
  output = createWriter(path); 

  allFont = createFont("ArialMT", 55);

  appWidth = width;
  appHeight = height;

  xTimer = appWidth*1/4;
  yTimer = appHeight*1/20;
  widthTimer = appWidth*1/2;
  heightTimer = appHeight*1/10;

  xStart = appWidth*0;
  yStart = appHeight*9/10;
  widthStart = appWidth*1/10;
  heightStart = appHeight*1/10;

  xReset = appWidth*1/10;
  yReset = appHeight*9/10;
  widthReset = appWidth*1/10;
  heightReset = appHeight*1/10;
  
  output.println(timerTF);
  output.println(buzzerTF);
  output.println(resetTF);
  
}
void draw(){
  output.flush();

  if (resetTF == true) {
    A = 0;
    B = BE;
    C = CE;
    resetTF = false;
  }

  rect1();
  text1();
  println("min "+ C +" sec " + B + " fraim " + A);

  if (timerTF == true) {
    A = A+1;
  }

  if (A >= 60) {
    B--;
    A = 0;
  }

  if (B == 0 && C >= 1 && A == 0) {
    B = 60;
    C --;
  }

  if (B == 0 && C == 0) {
    timerTF = false;
    buzzerTF = true;
    resetTF = true;
  }
}
void keyPressed() {
  
  timerTF = true;

  if (key == 'B' || key == 'B') {
    buzzerTF = true;
  }
  
  if(buzzerTF == true){
    buzzerTF = false;
  }

  if (key == 's' || key == 'S') {
    timerTF = false;
    timerCom = true;
  }
  if (key == 'p' || key == 'P') {
    timerTF = true;
    timerCom = true;
  }

  if (key == 'r' || key == 'R') {
    resetTF = true;
  }
  
  if(timerCom == true){
    output.println(timerTF);
    output.println(buzzerTF);
    output.println(resetTF);
    timerCom = false;
  }
}
