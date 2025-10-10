int x = 100;
int y = 100;
int size = 105;

size(200,200);
fill(#ffffff);

for(int i=0; i<5; i=i+1) {
  ellipse(x, y, size + i*10, size + i*10);
  noFill();
  print("i:", + i +" x:", +x, " y:", +y, "\n");
}
