float x = 10;
float y = 10;
float spacing = 20;
int count = 4;

size(200,200);

for (int i = 0; i < count; i++) {
  line(x, y + i * spacing, x + (count - 1) * spacing, y + i * spacing);
}

for (int i = 0; i < count; i++) {
  line(x + i * spacing, y, x + i * spacing, y + (count - 1) * spacing);
}

ellipse(40, 40, 10, 10);
