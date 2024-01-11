import java.io.*;

float xTimer, yTimer, widthTimer, heightTimer;
float xStart, yStart, widthStart, heightStart;
float xReset, yReset, widthReset, heightReset;

float xTimerMainMinEdit, yTimerMainMinEdit, widthTimerMainMinEdit, heightTimerMainMinEdit;
float xTimerMainSecEdit, yTimerMainSecEdit, widthTimerMainSecEdit, heightTimerMainSecEdit;
float xPenoltyHomeText, yPenoltyHomeText, widthPenoltyHomeText, heightPenoltyHomeText;
float xPenoltyHome1Edit, yPenotyHome1Edit, widthPenoltyHome1Edit, heightPenoltyHome1Edit;
float xPenoltyHome2Edit, yPenotyHome2Edit, widthPenoltyHome2Edit, heightPenoltyHome2Edit;
float xPenoltyGustText, yPenoltyGustText, widthPenoltyGustText, heightPenoltyGustText;
float xPenoltyGust1Edit, yPenoltyGust1Edit, widthPenoltyGust1Edit, heightPenoltyGust1Edit;
float xPenoltyGust2Edit, yPenoltyGust2Edit, widthPenoltyGust2Edit, heightPenoltyGust2Edit;

float xTimerMainMinEditText, yTimerMainMinEditText, widthTimerMainMinEditText, heightTimerMainMinEditText;
float xTimerMainSecEditText, yTimerMainSecEditText, widthTimerMainSecEditText, heightTimerMainSecEditText;
float xPenoltyHome1EditText, yPenoltyHome1EditText, widthPenoltyHome1EditText, heightPenoltyHome1EditText;
float xPenoltyHome2EditText, yPenoltyHome2EditText, widthPenoltyHome2EditText, heightPenoltyHome2EditText;
float xPenoltyGust1EditText, yPenoltyGust1EditText, widthPenoltyGust1EditText, heightPenoltyGust1EditText;
float xHomeCountEdit, yHomeCountEdit, widthHomeCountEdit, heightHomeCountEdit;
float xGustCountEdit, yGustCountEdit, widthGustCountEdit, heightGustCountEdit;
float xPiredEdit, yPiredEdit, widthPiredEdit, heightPiredEdit;


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

String timerMinText = "miniut", timerSecText = "Second";
String PenoltyGustText = "Penolty Gust", PenoltyhomeText = "Penolty Home";
String HomeCountText = "home", GustCountText = "gust";
String Penolty1Text = "Penolty 1", Penolty2Text = "Penolty  2";

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
  yTimer = appHeight*1/10;
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
  
  xTimerMainMinEdit = appWidth*3/8;
  yTimerMainMinEdit = appHeight*6/20;
  widthTimerMainMinEdit = appWidth*1/8;
  heightTimerMainMinEdit = appHeight*1/20;
  
  xTimerMainSecEdit = appWidth*4/8;
  yTimerMainSecEdit = appHeight*6/20;
  widthTimerMainSecEdit = appWidth*1/8;
  heightTimerMainSecEdit = appHeight*1/20;
  
  xPenoltyHomeText = appWidth*0.5/8;
  yPenoltyHomeText = appWidth*6/20;
  widthPenoltyHomeText = appWidth*2/8;
  heightPenoltyHomeText = appHeight*1/20;
  
  xPenoltyHome1Edit = appWidth*1/8;
  yPenotyHome1Edit = appHeight*8/20;
  widthPenoltyHome1Edit = appWidth*1/8;
  heightPenoltyHome1Edit = appHeight*1/20;
  
  xPenoltyHome2Edit = appWidth*1/8;
  yPenotyHome2Edit = appHeight*10/20;
  widthPenoltyHome2Edit = appWidth*1/8;
  heightPenoltyHome2Edit = appHeight*1/20;
  
  xPenoltyGustText = appWidth*5.5/8;
  yPenoltyGustText = appHeight*6/20;
  widthPenoltyGustText = appWidth*2/8;
  heightPenoltyGustText = appHeight*1/20;
  
  xPenoltyGust1Edit = appWidth*6/8;
  yPenoltyGust1Edit = appHeight*8/20;
  widthPenoltyGust1Edit = appWidth*1/8;
  heightPenoltyGust1Edit = appHeight*1/20;
  
  xPenoltyGust2Edit = appWidth*6/8;
  yPenoltyGust2Edit = appHeight*10/20;
  widthPenoltyGust2Edit = appWidth*1/8;
  heightPenoltyGust2Edit = appHeight*1/20;
  
  xTimerMainMinEditText = appWidth*3/8;
  yTimerMainMinEditText = appHeight*5/20;
  widthTimerMainMinEditText = appWidth*1/8;
  heightTimerMainMinEditText = appHeight*1/20;
  
  xTimerMainSecEditText = appWidth*4/8;
  yTimerMainSecEditText = appHeight*5/20;
  widthTimerMainSecEditText = appWidth*1/8;
  heightTimerMainSecEditText = appHeight*1/20;
  
  xPenoltyHome1EditText = appWidth*6/8;
  yPenoltyHome1EditText = appHeight*7/20;
  widthPenoltyHome1EditText = appWidth*1/8;
  heightPenoltyHome1EditText = appHeight*1/20;
  
  /*
  xPenoltyhomeEditText = appWidth*
  yPenoltyHomeEditText = appHeight*
  widthPenoltyHomeEditText = appWidth*
  heightPenoltyHomeEditText = appHeight*
  
  xPenoltyGustEditText = appWidth*
  yPenoltyGustEditText = appHeight*
  widthPenoltyGustEditText = appWidth*
  heightPenoltyGustEditText = appHeight*
  
  xHomeCountEdit = appWidth*
  yHomeCountEdit = appHeight*
  widthHomeCountEdit = appWidth*
  heightHomeCountEdit = appHeight*
  
  xGustCountEdit = appWidth*
  yGustCountEdit = appHeight*
  widthGustCountEdit = appWidth*
  heightGustCountEdit = appHeight*
  
  xPiredEdit = appWidth*
  yPiredEdit = appHeight*
  widthPiredEdit = appWidth*
  heightPiredEdit = appHeight*
  
  */
  
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

  if (key == 'b' || key == 'B') {
    buzzerTF = true;
  }    

  if (key == 's' || key == 'S') {
    timerTF = false;
  }
  
  if (key == 'p' || key == 'P') {
    timerTF = true;
  }

  if (key == 'r' || key == 'R') {
    resetTF = true;
  }
  
  if(timerCom == true){
    output.println(timerTF);
    output.println(buzzerTF);
    output.println(resetTF);
    timerCom = false;
    buzzerTF = false;
  }
}

void mousePressed(){
  
}
