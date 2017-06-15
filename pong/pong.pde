import ddf.minim.*;
Minim minim;
AudioSample sound;

PImage backgroundImage;
PImage heart;

int x = 5;
int y = 5;
int speedX = 3;
int speedY = 3;
int speedPaddle = 3;
int xPaddle = 15;
int yPaddle = 380;
int paddleLength = 30;
int lives = 3;
int score = 0;

void setup(){
 size(400,400);
 
 backgroundImage = loadImage("pongBackground.jpg");
 backgroundImage.resize(width,height);
 background(backgroundImage);
 
 heart = loadImage("heart.png");
 heart.resize(15,15);
 
 minim = new Minim(this);
 sound = minim.loadSample("ding.wav",128);
}

void draw(){
  background(backgroundImage);
  stroke(#000000);
  fill(#6DDDF0);
  
  for(int i = 0; i < lives; i++){
    image(heart, (i + 1) * 5 + i * heart.width, 5);
  }
  
  textSize(12);
  text("Score: " + score, 320, 15);
  
  ellipse(x,y,10,10);
  rect(xPaddle,yPaddle,paddleLength,10);
  
  x += speedX;
  y += speedY;
  
  if(mouseX < xPaddle && xPaddle > speedPaddle)
    xPaddle -= speedPaddle;
  
  if(mouseX > xPaddle && xPaddle < width - paddleLength - speedPaddle - 1)
    xPaddle += speedPaddle;
  
  if(x <= 4 || x >= width - 4)
    speedX = -speedX;
  
  if( y <= 4)
    speedY = -speedY;
  
  if(intersects()){
    speedY = -speedY;
    sound.trigger();
    score++;
  } else {
    if(y >= height){
      if(lives > 1){
        lives--;
        speedY = -speedY;
      } else
        exit(); 
    }
  }
}

boolean intersects(){
  if(y > yPaddle && x > xPaddle && x < xPaddle + paddleLength)
    return true;
  else
    return false;
}