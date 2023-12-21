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

int appWidth, appHeight;
int timer;
int penoltyHome1Timer, penoltyHome2Timer;
int penoltyGust1Timer, penoltyGust2Timer;

int A = 0, B = 0, C = 5;

PFont allFont;

String c = " min ", b = " sec ", hello = ":";

PrintWriter output;

void setup(){
  size(700, 700);
  frameRate(60);
  output = createWriter("../timer_Display/timer.txt");
  
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
  
}
void draw(){
  output.flush();
  
  rect1();
  text1();
  println("min "+ C +" sec " + B + " fraim " + A);
  
  if(timerTF == true){
    A = A+1;
  }
  
  if(A >= 60){
    B--;
    A = 0;
  }
  
  if(B == 0 && C >= 1){
    B = 59;
    C --;
  }
  
  if(B == 0 && C == 0){
    timerTF = false;
    buzzerTF = true;
    resetTF = true;
  }
}
void keyPressed(){
  if(key == 's' || key == 'S'){
    timerTF = false;
    timerCom = true;
  }
  if(key == 'p' || key == 'P'){
    timerTF = true;
    timerCom = true;
  }
  if(key == SHIFT && key == 'M' && key == '!'){
    
  }
  
  //output.println();
  if(timerCom == true && timerTF == true){
    output.println("main timer "+timerTF);
    timerCom = false;
  }
  if(timerCom == true && timerTF == false){
    output.println("main timer "+timerTF);
    timerCom = false;
  }
}
void mousePressed(){
  if(mouseX<xStart && mouseX>xStart+widthStart && mouseY<yStart && mouseY>yStart+heightStart){
    timerTF = true;
  }
  if(mouseX<xReset && mouseX>xReset+widthReset && mouseY<yReset && mouseY<yReset+heightReset){
    
  }
}
/*

*/
