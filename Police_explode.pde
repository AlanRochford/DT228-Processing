class police_explode extends Police
{
  police_explode(float ex_stripe_len, float ex_stripe_width,
                float ex_colour_change,
                float ex_x,
                float ex_y,
                float ex_direction,
                PFont ex_f,
                String ex_logo,
                float ex_theta)
  {
      stripe_len = ex_stripe_len;
      stripe_width = ex_stripe_width;
      colour_change = ex_colour_change;
      x = ex_x;
      y = ex_y;
      direction =ex_direction;
      f = ex_f;
      logo = ex_logo;
      theta = ex_theta;  
  }
  
  void draw()
  {
    x=x+direction;
    if(x<0)
    {
      x=0;
      direction=2;
    }
    noStroke();
    fill(255);
    rect(x,y,90,50);//car outline
    
    fill(0);
    rect(x,y,stripe_len, stripe_width);//Stripes
    rect(x+70,y, stripe_len, stripe_width);
    rect(x,y+40,stripe_len, stripe_width);
    rect(x+70,y+40,stripe_len, stripe_width);
    
    rect(x+25,y+12.5,5,25);//Back window
    rect(x+55,y+12.5,15,25);//Front window
    
    stroke(0);
    line(x+20,y,x+30,y+10);//Roof outline
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
    
    colour_change=colour_change+1;//Siren colour change
    if (colour_change<25)
    {
      fill(255,0,0);
    }
    
    if (colour_change>50)
    {
      fill(255);
      colour_change=0;
    }
    //Siren drawing
    rect(x+40,y+12.5,5,5);
    rect(x+40,y+22.5,5,5);
    rect(x+40,y+32.5,5,5);
    
    //Helicoptor Spotlight
    noStroke();
    fill(255,255,0);
    ellipse(mouseX,mouseY,100,100);
    
  }
}
