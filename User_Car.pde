//Change to test Git Hub
class Car
{
  float x;
  float y;
  float j;
  float direction;

  
  Car()
  {
    x=300;
    y=180;
    direction=1.5;
    
  }
  
  void draw()
  {
    x=x+direction;//Car movement
    if(x<0)
    {
      x=0;
      direction=1;
    }
    
    noStroke();
    fill(255,0,0);
    rect(x,y,90,50);//Car outline
    
    stroke(0);
    fill(0);
    rect(x+25,y+12.5,5,25);//Front window
    rect(x+55,y+12.5,15,25);//Back window
    
    line(x+20,y,x+30,y+10);//Lines for roof design
    line(x+30,y+10,x+55,y+10);
    line(x+55,y+10,x+70,y);
    line(x+30,y+10,x+30,y+40);
    line(x+55,y+10,x+55,y+40);
    line(x+20,y+50,x+30,y+40);
    line(x+30,y+40,x+55,y+40);
    line(x+55,y+40,x+70,y+50);
    line(x+20,y,x+20, y+50);
    line(x+70,y,x+70,y+50);
    
    stroke(255,255,0);
    fill(255,255,0);
    rect(x+87,y+5,3,10);//Front headlights
    rect(x+87,y+35,3,10);
    
    
    
  }
}
