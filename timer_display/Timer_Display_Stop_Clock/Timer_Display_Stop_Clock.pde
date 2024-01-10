int appWidth, appHeight;
int A = 0, B = 30, C = 0;

int timerINT = 0;

boolean timerTF = false;

String path = "../timer.txt";


void setup(){
  size(200, 200);
  surface.setTitle("Timer Display Stop Clock");
  surface.setResizable(true);
  windowRatio(200, 200);

}
void draw(){
  String[] lines = loadStrings(path);
  
  for (int i = 0 ; i < lines.length; i++) {
    //println(lines[i]);
    timerINT = i;
  }
  println(lines[timerINT-2]);
  
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
