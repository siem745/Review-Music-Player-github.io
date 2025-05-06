void buttons(){
 int size=30;
 
  //songMetaData1.NextButton()
  //rect();
  circle(width*7/10, height*1/2, width*1/13);
    fill(Black);
    textSize(size);
    text("NEXT", width*7/10, height*1/2);
    fill(255);
    
  //songMetaData1.Pause||PlayButton()
  circle(width*5/10, height*1/2, width*1/10);
   fill(Black);
    textSize(size);
    text("PAUSE", width*5/10, height*1/2);
    fill(255);
    
  // songMetaData1.Previous()
  circle(width*3/10, height*1/2, width*1/13);
    fill(Black);
    textSize(size);
    text("BACK",width*3/10, height*1/2);
    fill(255);
} //END button
