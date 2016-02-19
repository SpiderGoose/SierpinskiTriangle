public void setup()
{
  size(1000,1000);
  background(#99C0FF);
 
}
public void draw()
{
  sierpinski(200, 650, 600);

}
public void mousePressed()//optional
{

  
}
public void sierpinski(int x, int y, int len) 
{
	fill(#FFA6FE);
  if(len < 50)
  {
  	strokeWeight(2);
  	stroke(0);
   	triangle(x, y, x + len, y, x + len/2, y - len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
