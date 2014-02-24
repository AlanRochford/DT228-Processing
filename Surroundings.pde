class Surroundings
{
  PFont f;
  PFont f_new;
  PFont f_new2;
  PFont f_new3;
  String logo;
  
  Surroundings()
  {
    f= createFont("Arial", 50);
    logo="H";
    f_new=createFont("Arial", 20);
    f_new2=createFont("Arial", 40);
    f_new3=createFont("Arial", 25);
  }
  void draw()
  {
    fill(0,153,0);
    rect(0,0,275,125);//Green Area
    fill(0,0,255);
    ellipse(150,65,180,80);//Pond in green area
    
    fill(128);//Heli-Pad
    stroke(255);
    strokeWeight(3);
    ellipse(662.5,60,70,70);
    strokeWeight(1);
    stroke(255);
    fill(255);
    textFont(f);
    text(logo,645,77.5);
    
    stroke(0);
    fill(64,64,64);//Extra Paths
    rect(80,375,30,125);
    rect(200,375,30,125);
    
    stroke(0);//Hospital
    fill(255);
    rect(525,375,275,125);
    stroke(255,0,0);
    fill(255,0,0);
    rect(660,400,25,90);
    rect(627.5,430,90,25);
    
    noStroke();
    fill(0,255,0);//Lives and Score
    textFont(f_new);
    text("x4",645,20);
    fill(255,255,0);
    text("x3",645,45);
    textFont(f_new2);
    text("134675",670,45);
    
    stroke(255,255,0);
    strokeWeight(5);
    fill(0);
    rect(275,0,250,50);
    fill(255,255,0);
    stroke(255,255,0);
    textFont(f_new3);
    text("Grand Theft Auto",300,35);
    strokeWeight(1);
    

    
  }
}
