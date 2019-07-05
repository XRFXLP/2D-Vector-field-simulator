class bins
{
  PVector loc;
  float vx,vy;
  float life = random(2535);
  bins()
  {
    loc = new PVector(random(1200) - 600,random(1200) - 600);
  }
 
  void create()
  {
    stroke(0,0,255);
    noStroke();
    fill(loc.y,loc.x,255);
    ellipse(loc.x,loc.y,1.5,1.5);
    
    //optional, uncomment if you want clean sketch, but it would only run for 30 seconds
    /**fill(0);
    ellipse(loc.x + random(100), loc.y ,2.5,2.5);**/
  }
  
  void update()
  {
    loc.x += tan(loc.y/70) ;
    loc.y += 1/tan(loc.x/70) ;
    life -= 10;
    if(loc.x > 1600 || loc.x < -1600)
    {
      loc.x = random(1200) - 600;
    }
    if(loc.y > 1600 || loc.y < -1600)
    {
      loc.y = random(1200) - 600;
    }
  }
}
