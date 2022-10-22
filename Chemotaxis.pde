Bacteria [] colony;
void setup() {
  size (1000, 1000);
  colony = new Bacteria[100];
  for (int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}
void draw() {
  background(0);
  for (int i = 0; i < colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}
class Bacteria
{
  int myX, myY, myColor;
  Bacteria() {
    myX = myY = 500;
    myColor = color(71+(int)(Math.random()*31)-15, 206+(int)(Math.random()*31)-15, 42+(int)(Math.random()*31)-15);
  }
  void move() {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 50, 50);
  }
}
