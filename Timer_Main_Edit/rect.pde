void rect1(){
  fill(255);
  rect(xTimer, yTimer, widthTimer, heightTimer);
  if(timerTF == true){
    fill(255, 0, 0);
  }else{
    fill(0, 255, 0);
  }
  rect(xStart, yStart, widthStart, heightStart);
  fill(0, 0, 255);
  rect(xReset, yReset, widthReset, heightReset);
  fill(255);
  
  rect(xTimerMainMinEdit, yTimerMainMinEdit, widthTimerMainMinEdit, heightTimerMainMinEdit);
  rect(xTimerMainSecEdit, yTimerMainSecEdit, widthTimerMainSecEdit, heightTimerMainSecEdit);
  rect(xPenoltyHome1Edit, yPenotyHome1Edit, widthPenoltyHome1Edit, heightPenoltyHome1Edit);
  rect(xPenoltyHome2Edit, yPenotyHome2Edit, widthPenoltyHome2Edit, heightPenoltyHome2Edit);
  rect(xPenoltyGust1Edit, yPenoltyGust1Edit, widthPenoltyGust1Edit, heightPenoltyGust1Edit);
  rect(xPenoltyGust2Edit, yPenoltyGust2Edit, widthPenoltyGust2Edit, heightPenoltyGust2Edit);
}
