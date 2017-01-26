int r = (int)(Math.random()*256);
int g = (int)(Math.random()*256);
int b = (int)(Math.random()*256);
boolean up = true;

public void setup()
{
	size(600, 600);
}
public void draw()
{
	background(r, g, b);
	fill(0);
	stroke(255);
	carpet(1, 595, 600);
	fill(255);
	stroke(0);
	sierpinski(5, 595, 590);
	if (up == true) {
			r+=2;
			g+=2;
			b+=2;
	} else {
			r-=2;
			g-=2;
			b-=2;
	}	
	if (r > 245 && g > 245 && b > 245)
	{
		up = false;
	}
	if (r < 10 && g < 10 && b < 10) {
		up = true;
	}
}
public void mousePressed() {
	r = (int)(Math.random()*256);
	g = (int)(Math.random()*256);
	b = (int)(Math.random()*256);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 5) {
		triangle(x, y, x+len, y, x+(len/2), y-len);
	}
	else {
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}

public void carpet(int x, int y, int len) {
	int newLen = len/3;
	if (len <= 5) {
		rect(x, y, (int)len, (int)len);
	}
	else {
		carpet(x, y, newLen);
		carpet(x, y - newLen, newLen);
		carpet(x, y - 2*newLen, newLen);
		carpet(x + newLen, y, newLen);
		carpet(x + newLen, y - 2*newLen, newLen);
		carpet(x + 2*newLen, y, newLen);
		carpet(x + 2*newLen, y - newLen, newLen);
		carpet(x + 2*newLen, y - 2*newLen, newLen);
	}
}
