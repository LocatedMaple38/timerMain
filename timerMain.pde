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

boolean timerTF = false;
boolean penoltyHome1TF = false;
boolean penoltyHome2TF = false;
boolean penoltyGust1TF = false;
boolean penoltyGust2TF = false;

int appWidth, appHeight;
int timer;
int penoltyHome1Timer, penoltyHome2Timer;
int penoltyGust1Timer, penoltyGust2Timer;

int A = 0, B = 60, C = 1;

PFont allFont;

void setup(){
  //fullScreen();
  frameRate(60);
  
  appWidth = width;
  appHeight = height;
  
  xTimer = appWidth*1/4;
  yTimer = appHeight*1/20;
  widthTimer = appWidth*1/2;
  heightTimer = appHeight*1/10;
  
}
void draw(){
  
  rect1();
  //text1();
  println("min "+C +" sec " + B + " fraim " + A);
  
  if(timerTF == true){
    A = A+1;
  }
  
  if(A >= 60){
    B--;
    A = 0;
  }
  
  if(B == 0){
    B = 60;
    C --;
  }
  
  if(C == 0 && B == 0){
    timerTF = false;
  }
}
void keyPressed(){
  if(key == 's' || key == 'S'){
    timerTF = false;
  }
  if(key == 'p' || key == 'S'){
    timerTF = true;
  }
}
