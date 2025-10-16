int x = 20;
int y = 50;

void setup() {
  ellipse(x,y,10,10);
  line(x-5,y,x+5,y);
  line(x,y-5,x,y+5);
}
