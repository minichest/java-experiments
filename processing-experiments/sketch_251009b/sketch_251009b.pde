int x=10; // x var
int y=20; // y var

size(100,100); // canvas

for(int i=0; i<5; i=i+1) {
  x = x + 10;
  print("i:", + i +", x:", +x);
  ellipse(x, y, 5, 5);
}
