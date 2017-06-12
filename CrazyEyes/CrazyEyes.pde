int x;
int y;
int xPos;
int yPos;
PImage face;

void setup(){
  size(466,263);
  face = loadImage("parksandrec.jpg");
  face.resize(466,263);
  background(face);
}

void draw(){
   background(face);
  
  if(mouseX != x || mouseY != y){
    fill(random(255),random(255),random(255));
  }else{
    fill(255,255,255);
  }
  
  noStroke();
  ellipse(207,87,14,12);
  ellipse(248,87,14,12);
  fill(0,0,0);
  
  if(mouseX < 202){
    xPos = 202;
  }else if(mouseX > 212){
    xPos = 212;
  }else{
    xPos = mouseX;
  }
  
  if(mouseY < 83){
    yPos = 83;
  }else if(mouseY > 91){
    yPos = 91;
  }else{
    yPos = mouseY;
  }
  
  ellipse(xPos,yPos,5,5);
  ellipse(xPos + 41,yPos,5,5);
  
  x = mouseX;
  y = mouseY;
}