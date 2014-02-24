class Ped
{
  float x;
  float y;
  float direction;
  
  Ped()
  {
    y=40;
    x=300;
    direction=.5;
  }
  void draw()
  {
    y=y+direction;//Making Pedestrian Move
    
    if(y>150)
    {
      direction=0.0;//Stops when get to certain point
    }
    fill(0,0,204);
    ellipse(x,y,20,10);//Ped body
    fill(255,153,51);
    ellipse(x,y,11,11);//Ped head
  }
}
