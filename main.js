ArrayList <bins> t = new ArrayList<bins> ();
void setup()
{
  size(800,800);
  background(0);
}

void draw()
{
  translate(400,400);
  for(int i = 0; i < 900; i++)
  {
  t.add(new bins());
  bins f = t.get(i);
  f.create();
  f.update();
  }
}
