// Add your code for this task below
class HappyFace {
  float x, y, r, dx =2 ,dy =2;
  color fillColor, outlineColor;
  
  HappyFace(float x, float y, float r, color fillColor, color outlineColor) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.fillColor = fillColor;
    this.outlineColor = outlineColor;
  }
  
  void display() {
    ellipseMode(CENTER);
    fill(fillColor);
    stroke(outlineColor);
    strokeWeight(r/20);
    ellipse(x,y,2*r,2*r); //face
    arc(x,y,1.6*r,1.6*r,.1*PI,.9*PI); //mouth
    ellipse(x+r/2,y-r/4,r/4,r/2); //right eye
    ellipse(x-r/2,y-r/4,r/4,r/2); //left eye
  }
  
  void move() {
    x += dx;
    y += dy;
    
    if ( x > width-r || x < r ) {
      dx = -dx;
      x += dx;
    }
    
    if (y > height-r || y < r) {
      dy = -dy;
      y += dy;
    }
  }
}

HappyFace face1 = new HappyFace(width/2, height/2, width/2, color(255,255,0), color(255,155,0));
HappyFace face2 = new HappyFace(3*width/2, height/2, width/4, color(255,0,0), color(0,255,0));

void setup() {
  size(640, 480);
}

void draw() {
  background(255);
  
  face1.move();
  face2.move();
  
  face1.display();
  face2.display();
}
