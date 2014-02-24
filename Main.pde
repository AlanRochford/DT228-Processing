import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim siren;
AudioPlayer sirens;
AudioInput input;

Minim  explosion;
AudioPlayer explode;
AudioInput input2;

Minim fpolice;
AudioPlayer fuck;
AudioInput input3;

Minim chopper;
AudioPlayer heli;
AudioInput input4;



void setup()
{
  size(800,500);
  siren = new Minim(this);
  sirens = siren.loadFile("police.mp3");
  sirens.play();
  
  explosion = new Minim(this);
  explode = explosion.loadFile("explode.mp3");
  explode.play();   
  
  chopper = new Minim(this);
  heli = chopper.loadFile("chopper.mp3");
  heli.play();
  
  fpolice = new Minim(this);
  fuck = fpolice.loadFile("fuckpolice.mp3");
  fuck.play();    
       
}
                                                                 

Footpath footpath = new Footpath();
Police police = new Police();
Road road = new Road();
Car car = new Car();
Ped ped = new Ped();
police_explode p_explode= new police_explode(20.0,10.0,2,0.0,200.0,0,createFont("Arial", 11, true),"",PI/2);
Ped2 new_ped = new Ped2(625.0,170.0,0.25);
Surroundings surround = new Surroundings();
Bullet bullet = new Bullet();
Ambo ambo = new Ambo();
void draw()
{  
  road.draw();
  footpath.draw();
  surround.draw();
  p_explode.draw();
  ped.draw();
  new_ped.draw();
  car.draw();
  bullet.update();
  bullet.draw();
  ambo.draw();
  police.draw();
}


void keyPressed()
{
   if (key == CODED)
   {
     if (keyCode == UP)
     {
         police.x1+=0;
         police.y1-=10;
     }
     
     else if(keyCode == DOWN)
     {
       police.x1+=0;
       police.y1+=10;
     }
     
     else if(keyCode == RIGHT)
     {
       police.x1+=10;
       police.y1+=0;
     }
     
     else if(keyCode == LEFT)
     {
       police.x1-=10;
       police.y1+=0;
     }
     else
     {
     }
   }   
}
