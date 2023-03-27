//REQ: create variables here for the location and color of the PLAY button
//...YOUR CODE GOES HERE...
  int play_btn_x = 250;
  int play_btn_y = 250;
  color play_btn_color = color(244, 103, 255);
  
void scene0(){  //home screen
  //REQ: Write code to draw a welcome message followed by PLAY button. 
  //     Remember that we have a function to draw buttons, i.e. drawButton()

  //...YOUR CODE GOES HERE...
  background(0); 

  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("WELCOME!", width/2, height/3);
  textSize(20);
  text("press the button below", width/2, height/2.5);
  
  // draw the PLAY button
  drawButton(play_btn_x, play_btn_y, btn_w, btn_h, play_btn_color, "PLAY");
}
