int numberWheels = 5;
int x = 10; // x
int y = 10; // y
int size = 30; // circle size
int spacing = 40;
size(250,250);

for (int m = numberWheels; m > 0; m=m-1) {
  for (int i = 0; i < m; i++) {
    float cx = x + spacing * i; 
    float cy = y + (numberWheels - m) * spacing;
    
    ellipse(cx, cy, size, size);
    line(cx - size/2, cy, cx + size/2, cy);
    line(cx, cy - size/2, cx, cy + size/2);
  }
}
