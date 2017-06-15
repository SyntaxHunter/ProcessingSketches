import ddf.minim.*;
AudioSample sound;

PImage kitten;

int x = 253;
int y = 145;
int acceleration = 1;

void setup(){
 size(500,300);
 kitten = loadImage("kitten.jpeg");
 kitten.resize(500,300);
 background(kitten);
 Minim minim = new Minim(this);
 sound = minim.loadSample("cat-lazer.wav");
}

void draw(){
  noStroke();
  fill(#E54B43);
  ellipse(x,y,28,21);
  ellipse(x + 67,y - 5,28,21);
  if(x > 500 || y > 300){
    background(kitten);
    x = 253;
    y = 145;
    acceleration = 1;
  }
}

void keyPressed(){
 y += 2 * acceleration;
 x += 2 * acceleration;
 if (acceleration == 1)
   sound.trigger();
 acceleration++;
}