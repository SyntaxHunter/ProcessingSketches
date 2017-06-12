void setup(){
  size(200,200);
  background(225,0,225);
}

void draw(){
  if(mousePressed){
    fill(225,0,225);
    background(random(255),random(255),random(255));
  }else{
    fill(0,0,0);
  }
  
  if(mouseX > 180 && mouseY > 180){
    background(0,0,0);
  }
  
  ellipse(mouseX,mouseY,10,10);
  
  noStroke();
  ellipse(100,100,80,80);
  ellipse(70,60,45,45);
  ellipse(130,60,45,45);
  fill(255,255,255);
  textSize(12);
  text("Meredith",10,190);
  text("Click to Reset",10,10);
  text("Hide\nScreen",125,190);
}