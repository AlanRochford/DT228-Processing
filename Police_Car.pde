class Police
{
  float stripe_len, stripe_width;
  float colour_change;
  float x;
  float y;
  float direction;
  PFont f;
  String logo;
  float theta;
  int value=0;
  float theta2=0;
  float speed=1;
  float x1;
  float y1;
  
  Police()
  {
    stripe_len=20;
    stripe_width=10;
    x=120;
    y=180;
    direction=1.60;
    logo="LAPD";
    f = createFont("Arial", 11, true);
    theta=PI/2;
    x1=662.5;
    y1=60;
  }
  
  
  void draw()
  {
    
    x=x+direction;///Making Police Car move
    if(x<0)
    {
      x=0;
      direction=2;
    }
    noStroke();
    fill(255);
    rect(x,y,90,50);//Outline
    
    fill(0);
    rect(x,y,stripe_len, stripe_width);//Police stripes
    rect(x+70,y, stripe_len, stripe_width);
    rect(x,y+40,stripe_len, stripe_width);
    rect(x+70,y+40,stripe_len, stripe_width);//
    
    rect(x+25,y+12.5,5,25);//Back window
    rect(x+55,y+12.5,15,25);//Front window
    
    stroke(0);//Roof design
    line(x+20,y,x+30,y+10);
    line(x+30,y+10,x+55,y+10);
    line(x+55,y+10,x+70,y);
    line(x+30,y+10,x+30,y+40);
    line(x+55,y+10,x+55,y+40);
    line(x+20,y+50,x+30,y+40);
    line(x+30,y+40,x+55,y+40);
    line(x+55,y+40,x+70,y+50);
    line(x+20,y,x+20, y+50);
    line(x+70,y,x+70,y+50);
    fill(255);
    
    colour_change=colour_change+1;//Lights colour change
    if (colour_change<25)
    {
      fill(255,0,0);//Red
    }
    
    if (colour_change>50)
    {
      fill(255);//White
      colour_change=0;
    }
    rect(x+40,y+12.5,5,5);//Lights
    rect(x+40,y+22.5,5,5);
    rect(x+40,y+32.5,5,5);
    
    pushMatrix();//Logo text
    textFont(f);
    translate(220,220);
    rotate(theta);
    fill(0);
    text(logo,152.5-y,215-x);
    popMatrix();
    
    
    noStroke();//Helicopter
    fill(value);
    ellipse(x1,y1,100,50);
    rect(x1-70,y1-5,70,10);
    ellipse(x1-65,y1,10,60);
    pushMatrix();
    translate(x1,y1);
    rotate(theta2);
    fill(255);
    rect(-5,-5,10,50);
    rect(-5,-5,50,10);
    rect(5,5,-10,-50);
    rect(5,5,-50,-10);
    popMatrix();
    theta2 +=speed;
  }
  

  
}
