void text1(){
  fill(0);
  textAlign(CENTER, CENTER);
  textFont(allFont, 75);
  if(B < 10 || B == 60){
    if(B < 10){
      text(C+hello+ABC+B, xTimer, yTimer, widthTimer, heightTimer);
    }
    if(B == 60){
      text(C+hello+ev, xTimer, yTimer, widthTimer, heightTimer);
    }
  }else{
    text(C+hello+B, xTimer, yTimer, widthTimer, heightTimer);
  }
  textFont(allFont, 25);
  text(timerMinText, xTimerMainMinEditText, yTimerMainMinEditText, widthTimerMainMinEditText, heightTimerMainMinEditText);
  text(timerSecText, xTimerMainSecEditText, yTimerMainSecEditText, widthTimerMainSecEditText, heightTimerMainSecEditText);
  text(PenoltyhomeText, xPenoltyHomeText, yPenoltyHomeText, widthPenoltyHomeText, heightPenoltyHomeText);
  text(PenoltyGustText, xPenoltyGustText, yPenoltyGustText, widthPenoltyGustText, heightPenoltyGustText);
  textFont(allFont, 15);
  text(Penolty1Text, xPenoltyHome1EditText, yPenoltyHome1EditText, widthPenoltyHome1EditText, heightPenoltyHome1EditText);
  text(Penolty2Text, xPenoltyHome2EditText, yPenoltyHome2EditText, widthPenoltyHome2EditText, heightPenoltyHome2EditText);
  noFill();
}
