int r = (int)(Math.random()*256);
int g = (int)(Math.random()*256);
int b = (int)(Math.random()*256);

public void setup()
{
	size(500, 500);
}
public void draw()
{
	int changeColor = (int)(Math.random()*5)-2;
	background(r, g, b);
	sierpinski(5, 495, 490);
	r += changeColor;
	g += changeColor;
	b += changeColor;
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20) {
		triangle(x, y, x+len, y, x+(len/2), y-len);
	}
	else {
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}