int appWidth, appHeight;
int A = 0, B = 0, C = 5;

boolean timerTF = false;

String path = "../timer.text";

void setup(){
  size(200, 200);
  surface.setTitle("Timer Display Stop Clock");
  surface.setResizable(true);
  windowRatio(200, 200);
  
}
void draw(){
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
  }
}
