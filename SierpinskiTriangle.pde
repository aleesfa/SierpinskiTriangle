public void setup()
{
  size(400, 400);
  draw();
}
public void draw()
{
  sierpinski(200, 200, 100);
}
//public void mouseDragged()//optional
//{

//}
public void sierpinski(int x, int y, int len) 
{
  if(len<=20)
  {
    triangle(x, y, x+len, y, (x+x+len)/2, y+len);
    //sierpinski(x, y, len/2);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y+(len/2), len/2);
  }
}
