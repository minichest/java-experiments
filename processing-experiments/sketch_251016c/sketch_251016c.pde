int x = 20;
int y = 50;
int cSize = 20;

void setup() {
  size(200, 200);

  for(int i=0;i<5;i=i+1) {
    ellipse(x+(i*cSize),y,20,20);
    line((x+(i*cSize) - 10), y, (x+(i*cSize) + 10), y);
    line((x+(i*cSize)), y - 10, (x+(i*cSize)), y + 10);
  }
}
