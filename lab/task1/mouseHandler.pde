void mousePressed(){
//REQ: Put code here to handle the mouse clicks on the buttons in different scenes
//     Note that you need to identify which scene is active, 
//     and then check if the mouse is clicked on the button

//...YOUR CODE GOES HERE...
  if (scn == 0) {
    if (mouseX > play_btn_x - btn_w/2 && mouseX < play_btn_x + btn_w/2 &&
        mouseY > play_btn_y - btn_h/2 && mouseY < play_btn_y + btn_h/2) {

      scn = 1;
    }
  } else if(scn ==1){
    if (mouseX > home_btn_x - btn_w/2 && mouseX < home_btn_x + btn_w/2 &&
        mouseY > home_btn_y - btn_h/2 && mouseY < home_btn_y + btn_h/2) {

      scn = 0;
    }

  }

  
}
