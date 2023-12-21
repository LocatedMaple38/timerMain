float xTimer, yTimer, widthTimer, heightTimer;
float xText1, yText1, widthText1, heightText1;
float xPired, yPired, widthPired, heightPired;
float xPiredText, yPiredText, widthPiredText, heightPiredText;
float xHomeCount, yHomeCount, widthHomeCount, heightHomeCount;
float xHomeText, yHomeText, widthHomeText, heightHomeText;
float xGustCount, yGustCount, widthGustCount, heightGustCount;
float xGustText, yGustText, widthGustText, heightGustText;
float xBacGround, yBacGround, widthBacGround, heightBacGround;
float xPenoltyHome1, yPenotyHome1, widthPenoltyHome1, heightPenoltyHome1;
float xPenoltyHome2, yPenotyHome2, widthPenoltyHome2, heightPenoltyHome2;
float xPenoltyGust1, yPenoltyGust1, widthPenoltyGust1, heightPenoltyGust1;
float xPenoltyGust2, yPenoltyGust2, widthPenoltyGust2, heightPenoltyGust2;
float xPenoltyGustText, yPenoltyGustText, widthPenoltyGustText, heightPenoltyGustText;
float xPenoltyHomeText, yPenoltyHomeText, widthPenoltyHomeText, heightPenoltyHomeText;
float xStart, yStart, widthStart, heightStart;
float xReset, yReset, widthReset, heightReset;

boolean timerTF = false;
boolean penoltyHome1TF = false;
boolean penoltyHome2TF = false;
boolean penoltyGust1TF = false;
boolean penoltyGust2TF = false;
boolean buzzerTF = false;
boolean resetTF = false;

int appWidth, appHeight;
int timer;
int penoltyHome1Timer, penoltyHome2Timer;
int penoltyGust1Timer, penoltyGust2Timer;

int A = 0, B = 0, C = 5;

PFont allFont;

String c = " min ", b = " sec ", hello = ":";

void setup(){
  //size(700, 700);
  fullScreen();
  frameRate(60);
  
  allFont = createFont("ArialMT", 55);
  
  appWidth = width;
  appHeight = height;
  
  xTimer = appWidth*1/4;
  yTimer = appHeight*1/20;
  widthTimer = appWidth*1/2;
  heightTimer = appHeight*1/10;
  
  xPired = appWidth*1/2;
  yPired = appHeight*5/11;
  widthPired = appWidth*1/11;
  heightPired = appHeight*1/11;
  
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
  }
  if(key == 'p' || key == 'P'){
    timerTF = true;
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
float , , , ;
float , , , 
*/
