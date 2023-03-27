//REQ: create variables here for the location and color of the PLAY button
  //...YOUR CODE GOES HERE...
  int  home_btn_x = 100;
  int home_btn_y = 450;
  color home_btn_color = color(0, 255, 0); // bright green
  
//REQ: put here any other variables required by your A9_Q1 animation 
  //...YOUR CODE GOES HERE...

void scene1() {
  background(0);
  translate(width/2,height/2);
  



  float a = 1, b = 1;
  float m1 = 2, m2 = 10;
  float n1 = 1.5, n2 = 1, n3 = 1;
  A9_Q1(a,b,m1,m2,n1,n2,n3);  //calling this function should draw the output of A9.Q1
  

  float a2 = 1, b2 = 1;
  float m12 = 88, m22 = 64;
  float n12 = -20, n22 = 1, n32 = 1;
  A9_Q1(a2, b2, m12, m22, n12, n22, n32);
  
  //REQ: In addition to A9.Q1, also draw HOME button on this scene
  //...YOUR CODE GOES HERE...


  drawButton(home_btn_x - 250,home_btn_y - 250, btn_w, btn_h, home_btn_color, "HOME");
}

void A9_Q1(float a, float b, float m1, float m2, float n1, float n2, float n3){
  //REQ - Copy your code from Q1 in assignment A9 here (modify the code as needed, e.g. to fit the current sketch size)
  //...YOUR CODE GOES HERE...
    colorMode(HSB, 360, 100, 100);
    float c = 0.0002;
    float col = 0;

    float r;
  float theta;
  float num1, num2, denom;
  float x, y;

    for(theta = 0; theta <= TWO_PI; theta += c) {
     stroke(col,100,100);

      

    num1 = abs(cos(m1 * theta / 4.0) / a);
    num1 = pow(num1, n2);
    
    num2 = abs(sin(m2 * theta / 4.0) / b);
    num2 = pow(num2, n3);
    
    denom = pow(num1 + num2, 1.0 / n1);
    r = pow(denom, -1);
    
    x = 100 * r * cos(theta);
    y = 100 * r * sin(theta);
    
    point(x , y );
    col+= 0.01;

        
  }

}

//You may add extra functions here if needed.
