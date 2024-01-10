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
  noFill();
}
