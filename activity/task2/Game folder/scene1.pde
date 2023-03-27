//this is the main game scene

void drawBackground() {
  background(loadImage("background_0.png"));
}

void drawPlayer(float x, float y) {
  image(loadImage("gameTile_15.png"), x, y);
}

void drawPlatform() {
  PImage tile13 = loadImage("gameTile_13.png");
  for (int col = 0; col < 6; col++)
    image(tile13, col*W, 7*H);
  image(loadImage("gameTile_14.png"), 6*W, 7*H);
}

void movePlayer(float speedX, float speedY) {
  x += speedX;
  y += speedY;
}

void jumpPlayer() {
  if (isJumping) {
    y = y + speedY;
    speedY = speedY + gravity;
    if (y >= 6*H) {
      speedY = 0;
      isJumping = false;
      y = 6*H;
    }
  }
}


GroundEnemy groundEnemies1 = new GroundEnemy("Goomba1", 100, 400,100, 1, color(255, 0, 0));
GroundEnemy groundEnemies2 = new GroundEnemy("Goomba2", 300, 400,100, 5, color(0, 255, 0));
GroundEnemy groundEnemies3 = new GroundEnemy("Goomba3", 400, 400,100, 10, color(0, 0, 255));


HappyFace face1 = new HappyFace(width/2, height/2, width/2, color(255,255,0), color(255,155,0));
HappyFace face2 = new HappyFace(3*width/2, 3*height/2, width/4, color(255,0,0), color(0,255,0));
HappyFace face3 = new HappyFace(width/2, 4*height/2, width/2, color(255,25,0), color(255,155,0));
HappyFace face4 = new HappyFace(width/2, 5*height/2, width/3, color(55,0,0), color(0,255,0));
HappyFace face5 = new HappyFace(width/2, 6*height/2, width/7, color(55,55,0), color(255,155,0));

void scene1() {
  drawBackground();


    groundEnemies1.move();
    groundEnemies2.move();
    groundEnemies3.move();

    
    groundEnemies1.draw();
    groundEnemies2.draw();
    groundEnemies3.draw();
      
  face1.move();
  face2.move();
    face3.move();
  face4.move();
    face5.move();

  face1.display();
  face2.display();
    face3.display();
  face4.display();
    face5.display();



    



  
    drawPlayer(x, y);
  drawPlatform();
  movePlayer(speedX, speedY);

  jumpPlayer();
  scene = 1;


    



}
