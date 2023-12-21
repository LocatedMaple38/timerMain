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
}
