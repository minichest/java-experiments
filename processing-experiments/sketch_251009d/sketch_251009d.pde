int x=150; // x var
int y=20; // y var

size(200,200); // canvas

for(int i=0; i<10; i=i+1) { // for loop
  x = x - 10;
  y = y + 10;
  print("i:", + i +" x:", +x, " y:", +y, "\n");
  ellipse(x, y, 5, 5);
}
