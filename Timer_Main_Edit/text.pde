void text1(){
  fill(0);
  textAlign(CENTER, CENTER);
  textFont(allFont, 75);
  if(b < 10){
    text(C+hello+BCA+B, xTimer, yTimer, widthTimer, heightTimer);
  }else{
    text(C+hello+B, xTimer, yTimer, widthTimer, heightTimer);
  }
  noFill();
}
