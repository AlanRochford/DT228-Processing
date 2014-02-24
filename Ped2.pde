class Ped2 extends Ped
{
  Ped2( float posx,
        float posy,
        float new_direction)
  {
    x=posx;
    y=posy;
    direction=new_direction;
  }
  
  void draw()
  {
 
    y=y+direction;//Ped movement
    
    if(y>203)
    {
      direction=2;
      if(y>330)
      {
        direction=0;
      }
    }
    stroke(0);
    fill(0,0,204);
    ellipse(x,y,20,10);//Ped body
    fill(255,153,51);
    ellipse(x,y,11,11); //Ped head
  }
}
