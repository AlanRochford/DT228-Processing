
class Bullet
{
  float bulletx;
  float bullety;
  float bullet_speed;
  int j;
  
  Bullet()
  {
    bulletx=300;
    bullety=232;
    bullet_speed=-3;
    j=600;
  }
  void update()
  {
    bulletx=bulletx+bullet_speed;
  }
  void draw()
  {
    if(bulletx<0)//Stopping bullet
    {
      bulletx=0;
    }
    while(j>600);//Drawing bullet
    {
      rect(bulletx,bullety,5,1);
    }
    
    if(bulletx==0)//Random explosion shape when bullet hits                       
    {
      fill(255,255,0);
      beginShape();
      vertex(30,180);
      vertex(15,190);
      vertex(5,195);
      vertex(25,205);
      vertex(8,215);
      vertex(20,230);
      vertex(40,230);
      vertex(3,260);
      vertex(45,235);
      vertex(40,265);
      vertex(60,230);
      vertex(80,230);
      vertex(70,215);
      vertex(75,210);
      vertex(65,190);
      endShape();
    }
  }
}
