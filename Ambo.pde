class Ambo
{
  float x;
  float y;
  float speed;
  float colour_change;
  Ambo()
  {
    x=540;
    y=260;
    speed = -3;
  }

  
  void draw()
  {
    x=x+speed;///Making Ambulance move
    if(x==45)
    {
      speed=0;
      stroke(0);
      fill(255);
      rect(125,270,15,5);//Ambulance doors open after stop
      rect(125,305,15,5);
    }
    stroke(0);
    fill(255);
    rect(x,y,80,60);
    fill(255,0,0);
    rect(x-45,y+5,45,50);
    fill(0);
    rect(x-15,y+5,10,50);
    noStroke();
    fill(255,0,0);
    rect(x+30,y+3,20,54);//Red cross
    rect(x+12.5,y+21,54,20);
    stroke(0);
    fill(255);
    colour_change=colour_change+1;//Lights colour change
    if (colour_change<20)
    {
      fill(0,0,255);//Blue
    }
    
    if (colour_change>40)
    {
      fill(255);//White
      colour_change=0;
    }
    rect(x,y,10,20);//Lights
    rect(x,y+40,10,20);

  }
}
