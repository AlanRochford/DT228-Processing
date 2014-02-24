class Road
{
  PFont new_font;
  String sign;
  Road()
  {
    new_font = createFont("Arial", 25);
    sign= "STOP";
  }
  void draw()
  {
    size(800,500);
    
    background(128);
    stroke(0);
    line(325,0,325,175);//Road outlines
    line(475,0,475, 175);
    line(325,175,0,175);
    line(475,175,800,175);
    line(325,325,0,325);
    line(475,325,800,325);
    line(325,325,325,500);
    line(475,325,475,500);
    
    //Road Markings
    fill(255,255,0);
    stroke(255,255,0);
    for (int i = 0; i < 260; i = i+50) 
    {
      rect(i, 245, 30,10);
    }
    
    for (int j=0; j<110; j = j+50)
    {
      rect(395,j,10,30);
    }
    
    for (int k=800; k>475; k = k-50)
    {
      rect(k,245,30,10);
    }
    
    for (int l=500; l>325; l = l-50)
    {
      rect(395,l,10,30);
    }
    
    rect(320,175,5,75);//End of road stop lines
    rect(400,170,75,5);
    rect(475,250,5,75);
    rect(325,325,75,5);
    
    textFont(new_font);
    fill(255,255,0);
    stroke(255,255,0);
    text(sign,327,355);


  }
}
