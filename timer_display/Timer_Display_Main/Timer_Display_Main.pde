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

int appWidth, appHeight;

String path = "../timer.txt";

void setup(){
  size(500, 500);
  surface.setTitle("Timer Display Main");
  surface.setResizable(true);
  windowRatio(500, 500);
    
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
    
}
void draw(){
  String[] lines = loadStrings(path);
  
  for (int i = 0 ; i < lines.length; i++) {
    println(lines[0]);
  }
  
  rect2();
}
