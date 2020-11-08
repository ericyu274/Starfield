Particle [] dot;
OddballParticle a;
void setup()
{
  size(600,600);
  smooth();
  frameRate(10);
  stroke(255);
  strokeWeight(0.5);
  dot = new Particle[3000];
  for(int i = 0; i<dot.length; i++){
    dot[i] = new Particle();
  } 
}
void draw()
{
 background(0);
 a = new OddballParticle();
 for(int i = 0; i<dot.length; i++){
   dot[i].show();
   a.show();
   dot[i].move();
   a.move();
 }
}
class Particle
{
  int thecolor;
  double thex, they, thesize, theangle, thespeed;
  Particle(){
    thex = 300;
    they = 300;
    thecolor = color(random(50,200),random(50,200),random(50,200));
    thesize = random(1,6);
    theangle = random(0,2)*Math.PI;
    thespeed = random(1,5);
  }
  
  void move(){
    thex = thex + Math.cos(theangle)*thespeed;
    they = they + Math.sin(theangle)*thespeed;
    if(thex > 600){
    thex = 0;
    they = random(250,350);
    }
  }
  
  void show(){
    fill(thecolor);
    ellipse((float)thex,(float)they,(int)thesize,(int)thesize);
  }
}

class OddballParticle extends Particle
{
  int x,y,acolor;
  OddballParticle(){
  x = 0;
  y = (int)random(100,500);
  }
  void move(){
  x = x + (int)random(0,20);
  }
  void show(){
  ellipse(x,y,30,30);
  }
}


