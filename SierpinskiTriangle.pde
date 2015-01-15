public void setup()
{
	size(1500, 1500);
	sierpinski(width/2,height/2,980);
}
public void draw()
{
	noLoop();
}
/*public void mouseDragged()//optional
{

}*/
public void sierpinski(int x, int y, int len) 
{
	if(len>1)
	{
		triangle(x, y-(len/2), x+(len/2), y+(len/2), x-(len/2), y+(len/2));
		sierpinski(x, y-(len/4), len/2);
		sierpinski(x+(len/4), y+(len/4), len/2);
		sierpinski(x-(len/4), y+(len/4), len/2);
	}
}