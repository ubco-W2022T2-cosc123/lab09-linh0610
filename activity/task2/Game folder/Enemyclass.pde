public class GroundEnemy {
    private String name;
    private int x, y,r;
    private int speed = 5;
    private int colorof;

    public GroundEnemy(String name, int x, int y,int r,  int speed, int colorof) {
        this.name = name;
        this.x = x;
        this.y = y;
        this.speed = speed;
        this.colorof = colorof;
    }

    public void move() {
        x += speed;
        if (x < 0 || x > width) {
            speed = -speed;
            x += speed;
        }
    }

    public void draw() {
        fill(colorof);
        arc(x,y,1.6*r,1.6*r,.1*PI,.9*PI); //mouth
        ellipse(x+r/2,y-r/4,r/4,r/2); //right eye
        ellipse(x-r/2,y-r/4,r/4,r/2); //left eye
        rect(x, y, 50, 50);

    }

    public boolean isCollidingWithPlayer(float playerX, float playerY) {
        return abs(playerX - x) < 50 && abs(playerY - y) < 50;
    }
}

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
    
    if (y > height-r-128 || y < r) {
      dy = -dy;
      y += dy;
    }
  }
}
