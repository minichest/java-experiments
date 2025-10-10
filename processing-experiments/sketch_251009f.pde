int x=10; // x var
int y=20; // y var
int size=30;
int ssize=32;

int recy=15;
int recx=5;

size(200,200); // canvas

for(int i=0; i<5; i=i+1) { // for loop
  x = x + 10;
  y = y + 10;
  print("i:", + i +" x:", +x, " y:", +y, "\n");
  rect(recx+i*15, recy+i*15,ssize, ssize);
  ellipse(x+i*5, y+i*5, size, size);
  print("i:", + i +" x2:", +x+i*5, " y2:", +y+i*5, "\n");
}
