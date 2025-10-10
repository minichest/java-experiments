int x = 20;
int y = 50;

size(200,200);

for(int i=1; i < 5; i=i+1) {
  print("i:", i, "\n");
  print("x*i:", x*i, "\n");
  line(x*i, 0, x*i, y);
}
