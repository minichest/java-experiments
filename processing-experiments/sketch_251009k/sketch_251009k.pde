int numberWheels = 5;
int x = 10; // x
int y = 10; // y
int size = 15; // circle size
size(200,200);

for(int i=0; i < numberWheels; i++) {
  float cx = x + size * i; // circle center x
  float cy = y;             // circle center y
  
  ellipse(cx, cy, size, size);
  line(cx - size/2, cy, cx + size/2, cy); // horizontal
  line(cx, cy - size/2, cx, cy + size/2); // vertical
}
