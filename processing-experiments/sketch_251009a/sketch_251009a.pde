size(200, 200);

int x=20;
int height=40;

for(int i=1; i<10; i=i+1) {
  print("i:", i, "\n");
  print("x*i:", x*i, "\n");
  line(x*i, 0, x*i, height);
};
